using Android.App;
using Android.OS;
using Android.Runtime;
using Android.Content;
using AndroidX.AppCompat.App;
using Android.Widget;
using System;
using System.Threading.Tasks;
using Firebase;
using Firebase.Auth;
using Firebase.Database;
using Firebase.Database.Query;
using AndroidX.ViewPager2.Widget;
using Android.Views;

namespace CardWars
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme", MainLauncher = true)]
    public class MainActivity : AppCompatActivity
    {
        public static ISharedPreferences sp;
        private FirebaseAuth auth;
        public static User user;
        private FirebaseClient m_client = new FirebaseClient("https://cardwars-b0a1d-default-rtdb.firebaseio.com/");

        protected override async void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            FirebaseApp.InitializeApp(this);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);

            sp = GetSharedPreferences("CardWars", FileCreationMode.Private);
            auth = FirebaseAuth.Instance;

            var loginHelper = new LoginHelper(this, sp, auth, user);
            await loginHelper.LoginLoadDialog();
            user = loginHelper.user;

            // Save updated user data
            await m_client
                .Child("Users")
                .Child(user.FirebaseUser.Uid)
                .PutAsync(user);

            if (user != null)
            {
                // Setup ViewPager
                var viewPager = FindViewById<ViewPager2>(Resource.Id.viewPager);
                viewPager.Visibility = ViewStates.Invisible;
                viewPager.Adapter = new PagerAdapter(this);
                viewPager.SetPadding(0, 0, 0, 0);

                // Use Post to delay setting CurrentItem until layout and measurement are finished
                viewPager.Post(() => viewPager.CurrentItem = 1);
                viewPager.Visibility = ViewStates.Visible;
                // Make container visible
                FindViewById<RelativeLayout>(Resource.Id.login_layout).Visibility = ViewStates.Gone;
            }
        }


        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}

