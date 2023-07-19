using Android.Content;
using Android.OS;
using Android.Views;
using Android.Widget;
using AndroidX.Fragment.App;
using Firebase.Auth;
using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reactive.Linq;
using System.Threading.Tasks;
using Xamarin.Essentials;
using Firebase.Database.Streaming;

namespace CardWars
{
    public class FriendsFragment : Fragment
    {
        private FirebaseClient firebaseClient = new FirebaseClient("https://cardwars-b0a1d-default-rtdb.firebaseio.com/");
        private EditText emailEditText;
        private Button sendFriendRequestButton;
        private ListView friendRequestsListView;
        private ListView friendsListView;
        private User currentUser = MainActivity.user;
        private List<string> requestsToMe;
        private IReadOnlyCollection<FirebaseObject<FriendRequest>> friendRequests;

        private IDisposable friendRequestsSubscription;
        private IDisposable friendsSubscription;

        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            var view = inflater.Inflate(Resource.Layout.fragment_friends, container, false);

            emailEditText = view.FindViewById<EditText>(Resource.Id.emailEditText);
            sendFriendRequestButton = view.FindViewById<Button>(Resource.Id.sendFriendRequestButton);
            friendRequestsListView = view.FindViewById<ListView>(Resource.Id.friendRequestsListView);
            friendsListView = view.FindViewById<ListView>(Resource.Id.friendsListView);

            sendFriendRequestButton.Click += async (sender, args) =>
            {
                var friendEmail = emailEditText.Text;
                await SendFriendRequest(currentUser.Email, friendEmail);
            };

            friendRequestsListView.ItemClick += FriendRequestsListView_ItemClick;

            return view;
        }

        public override void OnStart()
        {
            base.OnStart();
            SubscribeToFriendRequests();
            SubscribeToFriends();
        }

        public override void OnStop()
        {
            base.OnStop();
            UnsubscribeFromFriendRequests();
            UnsubscribeFromFriends();
        }

        private void SubscribeToFriendRequests()
        {
            friendRequestsSubscription = firebaseClient
                .Child("FriendRequests")
                .AsObservable<FriendRequest>()
                .Subscribe(data =>
                {
                    LoadFriendRequests();
                });
        }

        private void UnsubscribeFromFriendRequests()
        {
            friendRequestsSubscription?.Dispose();
        }

        private void SubscribeToFriends()
        {
            friendsSubscription = firebaseClient
                .Child("Friends")
                .AsObservable<Friend>()
                .Subscribe(data =>
                {
                    LoadFriends();
                });
        }

        private void UnsubscribeFromFriends()
        {
            friendsSubscription?.Dispose();
        }

        private async Task SendFriendRequest(string fromEmail, string toEmail)
        {
            var friendRequest = new FriendRequest { FromEmail = fromEmail, ToEmail = toEmail };
            await firebaseClient.Child("FriendRequests").PostAsync(friendRequest);
            //await LoadFriendRequests();
        }

        private async Task LoadFriendRequests()
        {
            try
            {
                friendRequests = await firebaseClient
                    .Child("FriendRequests")
                    .OnceAsync<FriendRequest>();

                requestsToMe = friendRequests
                    .Where(fr => fr.Object.ToEmail == currentUser.Email)
                    .Select(fr => fr.Object.FromEmail)
                    .ToList();

                // Fetch usernames
                var users = await firebaseClient
                    .Child("Users")
                    .OnceAsync<User>();

                var requestUsersDetails = requestsToMe.Select(email =>
                {
                    var user = users.FirstOrDefault(u => u.Object.Email == email);
                    return user != null ? $"{user.Object.Username}\n{user.Object.Email}" : email;
                }).ToList();

                Activity.RunOnUiThread(() =>
                {
                    friendRequestsListView.Adapter = new ArrayAdapter(Context, Android.Resource.Layout.SimpleListItem1, requestUsersDetails);
                });
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in LoadFriendRequests");
                Console.WriteLine(ex.ToString());
            }
        }

        private async Task AddFriend(string userEmail, string friendEmail)
        {
            try
            {
                var friend = new Friend { UserEmail1 = userEmail, UserEmail2 = friendEmail };
                await firebaseClient.Child("Friends").PostAsync(friend);

                var users = await firebaseClient.Child("Users").OnceAsync<User>();

                var user1 = users.FirstOrDefault(u => u.Object.Email == userEmail);
                var user2 = users.FirstOrDefault(u => u.Object.Email == friendEmail);

                if (user1 != null && user2 != null)
                {
                    user1.Object.Friends.Add(user2.Object.UserId);
                    await firebaseClient.Child("Users").Child(user1.Key).PutAsync(user1.Object);
                }

                if (user2 != null && user1 != null)
                {
                    user2.Object.Friends.Add(user1.Object.UserId);
                    await firebaseClient.Child("Users").Child(user2.Key).PutAsync(user2.Object);
                }

                Activity.RunOnUiThread(async () =>
                {
                    await LoadFriendRequests();
                    await LoadFriends();
                });
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in AddFriend");
                Console.WriteLine(ex.ToString());
            }
        }

        private async Task LoadFriends()
        {
            try
            {
                var friends = await firebaseClient.Child("Friends").OnceAsync<Friend>();

                var myFriends = friends.Where(f => f.Object.UserEmail1 == currentUser.Email || f.Object.UserEmail2 == currentUser.Email).Select(f => f.Object.UserEmail1 == currentUser.Email ? f.Object.UserEmail2 : f.Object.UserEmail1).ToList();

                // Fetch usernames
                var users = await firebaseClient.Child("Users").OnceAsync<User>();

                var friendsUserDetails = myFriends.Select(email =>
                {
                    var user = users.FirstOrDefault(u => u.Object.Email == email);
                    return user != null ? $"{user.Object.Username}\n{user.Object.Email}" : email;
                }).ToList();

                var friendsUserID = myFriends.Select(email =>
                {
                    var user = users.FirstOrDefault(u => u.Object.Email == email);
                    return user != null ? user.Object.UserId : string.Empty;
                }).ToList();

                ISharedPreferencesEditor editor = MainActivity.sp.Edit();
                editor.PutStringSet("friends", friendsUserID);
                editor.Apply();

                Activity.RunOnUiThread(() =>
                {
                    friendsListView.Adapter = new ArrayAdapter(Context, Android.Resource.Layout.SimpleListItem1, friendsUserDetails);
                });
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in LoadFriends");
                Console.WriteLine(ex.ToString());
            }
        }

        private async void FriendRequestsListView_ItemClick(object sender, AdapterView.ItemClickEventArgs e)
        {
            try
            {
                var friendEmail = requestsToMe[e.Position];

                await AddFriend(currentUser.Email, friendEmail);

                var friendRequest = friendRequests.First(fr => fr.Object.FromEmail == friendEmail && fr.Object.ToEmail == currentUser.Email);
                await firebaseClient.Child("FriendRequests").Child(friendRequest.Key).DeleteAsync();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Exception in friendRequestsListViewClick");
                Console.WriteLine(ex.ToString());
            }
        }
    }

    public class FriendRequest
    {
        public string FromEmail { get; set; }
        public string ToEmail { get; set; }
    }

    public class Friend
    {
        public string UserEmail1 { get; set; }
        public string UserEmail2 { get; set; }
    }
}
