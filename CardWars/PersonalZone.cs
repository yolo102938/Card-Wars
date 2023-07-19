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
    public class PersonalZone : Fragment
    {
        private FirebaseClient firebaseClient = new FirebaseClient("https://cardwars-b0a1d-default-rtdb.firebaseio.com/");
        private User currentUser = MainActivity.user;

        private ListView chatListView;
        private EditText chatInput;
        private Button sendButton;
        private Spinner friendSpinner;

        private List<string> chatMessages = new List<string>();
        private ArrayAdapter<string> chatAdapter;
        private ArrayAdapter<string> friendAdapter;

        private IDisposable chatMessagesSubscription; // Subscription for receiving new chat messages

        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            var view = inflater.Inflate(Resource.Layout.fragment_personal_zone, container, false);

            chatListView = view.FindViewById<ListView>(Resource.Id.chatListView);
            chatInput = view.FindViewById<EditText>(Resource.Id.chatInput);
            sendButton = view.FindViewById<Button>(Resource.Id.sendButton);
            friendSpinner = view.FindViewById<Spinner>(Resource.Id.friendSpinner);

            //chatAdapter = new ArrayAdapter<string>(Context, Android.Resource.Layout.SimpleListItem1, chatMessages);
            chatAdapter = new ChatAdapter(Context, chatMessages);
            chatListView.Adapter = chatAdapter;

            List<string> emails = new List<string>();
            for (int i = 0; i < currentUser.Friends.Count; i++)
            {
                emails.Add(FirebaseUserHelper.GetEmail(currentUser.Friends[i]));
            }
            friendAdapter = new ArrayAdapter<string>(Context, Android.Resource.Layout.SimpleSpinnerItem, emails);
            friendSpinner.Adapter = friendAdapter;

            friendSpinner.ItemSelected += (sender, e) =>
            {
                chatMessages.Clear();
                chatAdapter.Clear();

                string selectedFriendId = currentUser.Friends[e.Position];
                SubscribeToChat(selectedFriendId);
            };

            sendButton.Click += async (sender, e) =>
            {
                if (!string.IsNullOrWhiteSpace(chatInput.Text) && friendSpinner.SelectedItem != null)
                {
                    string selectedFriendId = friendSpinner.SelectedItem.ToString();
                    await firebaseClient
                        .Child("chats/" + GetChatId(currentUser.UserId, selectedFriendId))
                        .PostAsync(new ChatMessage
                        {
                            SenderId = currentUser.UserId,
                            Text = chatInput.Text
                        });

                    chatInput.Text = "";
                }
            };

            return view;
        }

        public override void OnDestroyView()
        {
            base.OnDestroyView();
            UnsubscribeFromChat();
        }

        private string GetChatId(string userId, string friendId)
        {
            // Ensure the chatId is always the same regardless of who is the sender and the receiver
            return userId.CompareTo(friendId) < 0 ? userId + "-" + friendId : friendId + "-" + userId;
        }

        private async void SubscribeToChat(string friendId)
        {
            string chatId = GetChatId(currentUser.UserId, friendId);

            // Retrieve the chat messages once
            var initialChatMessages = await firebaseClient
                .Child("chats/" + chatId)
                .OnceAsync<ChatMessage>();

            foreach (var chatMessage in initialChatMessages)
            {
                string message = "    From : " + FirebaseUserHelper.GetUsername(chatMessage.Object.SenderId) + "\n    " + chatMessage.Object.Text;
                chatMessages.Add(message);
                chatAdapter.Add(message);
            }

            chatAdapter.NotifyDataSetChanged();

            // Subscribe to new chat messages
            firebaseClient
                .Child("chats/" + chatId)
                .AsObservable<ChatMessage>()
                .Where(message => message.EventType == Firebase.Database.Streaming.FirebaseEventType.InsertOrUpdate)
                .Subscribe(message =>
                {
                    MainThread.BeginInvokeOnMainThread(() =>
                    {
                        try
                        {
                            string newMessage = "    From : " + FirebaseUserHelper.GetUsername(message.Object.SenderId) + "\n    " + message.Object.Text;
                            chatMessages.Add(newMessage);
                            chatAdapter.Add(newMessage);
                            chatAdapter.NotifyDataSetChanged();
                        }
                        catch { }
                    });
                });
        }

        private void UnsubscribeFromChat()
        {
            chatMessagesSubscription?.Dispose();
        }
    }

    public class ChatAdapter : ArrayAdapter<string>
    {
        public ChatAdapter(Context context, IList<string> objects) : base(context, 0, objects)
        {
        }

        public override View GetView(int position, View convertView, ViewGroup parent)
        {
            if (convertView == null)
            {
                convertView = LayoutInflater.From(Context).Inflate(Resource.Layout.message_design, parent, false);
            }

            string message = GetItem(position);

            TextView txtMessage = convertView.FindViewById<TextView>(Resource.Id.txtMessage);
            txtMessage.Text = message;

            return convertView;
        }
    }

    public class ChatMessage
    {
        public string SenderId { get; set; }
        public string Text { get; set; }
    }
}
