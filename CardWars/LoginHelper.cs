using Android.App;
using Android.Content;
using Android.Views;
using Android.Views.Animations;
using Android.Widget;
using Firebase;
using Firebase.Auth;
using Firebase.Database;
using Firebase.Database.Query;
using System;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Linq;

namespace CardWars
{
    public class LoginHelper
    {
        private ProgressBar m_LoadingBar;
        private TextView m_ProgressText;
        private EditText m_username, m_pass, m_email;
        private Button m_signUp;

        private Activity activity;

        private ISharedPreferences sp;
        private FirebaseAuth auth;
        private FirebaseClient m_client = new FirebaseClient("https://cardwars-b0a1d-default-rtdb.firebaseio.com/");

        public User user;

        public LoginHelper(Activity activity, ISharedPreferences sharedPreferences, FirebaseAuth firebaseAuth, User user)
        {
            this.activity = activity;
            this.user = user;
            sp = sharedPreferences;
            auth = firebaseAuth;

            m_LoadingBar = activity.FindViewById<ProgressBar>(Resource.Id.LoadingBar);
            m_LoadingBar.Visibility = ViewStates.Invisible;
            m_ProgressText = activity.FindViewById<TextView>(Resource.Id.ProgressText);
            m_ProgressText.Visibility = ViewStates.Invisible;
            m_username = activity.FindViewById<EditText>(Resource.Id.username);
            m_username.Visibility = ViewStates.Invisible;
            m_pass = activity.FindViewById<EditText>(Resource.Id.password);
            m_pass.Visibility = ViewStates.Invisible;
            m_signUp = activity.FindViewById<Button>(Resource.Id.submit);
            m_signUp.Visibility = ViewStates.Invisible;
            m_email = activity.FindViewById<EditText>(Resource.Id.email);
            m_email.Visibility = ViewStates.Invisible;
        }

        private Task StartLoading()
        {
            m_LoadingBar.Visibility = ViewStates.Visible;
            m_ProgressText.Visibility = ViewStates.Visible;

            return Task.Run(() =>
            {
                for (int i = 0; i <= 100; i++)
                {
                    int progress = i * 100 / 100;
                    activity.RunOnUiThread(() =>
                    {
                        m_LoadingBar.Progress = progress;
                        m_ProgressText.Text = $"{progress}%";
                    });
                    System.Threading.Thread.Sleep(100);
                }
            });
        }

        public async Task LoginLoadDialog()
        {
            var tcs = new TaskCompletionSource<bool>();

            m_LoadingBar = activity.FindViewById<ProgressBar>(Resource.Id.LoadingBar);
            m_LoadingBar.Visibility = ViewStates.Invisible;
            m_ProgressText = activity.FindViewById<TextView>(Resource.Id.ProgressText);
            m_ProgressText.Visibility = ViewStates.Invisible;
            m_username = activity.FindViewById<EditText>(Resource.Id.username);
            m_username.Visibility = ViewStates.Invisible;
            m_pass = activity.FindViewById<EditText>(Resource.Id.password);
            m_pass.Visibility = ViewStates.Invisible;
            m_signUp = activity.FindViewById<Button>(Resource.Id.submit);
            m_signUp.Visibility = ViewStates.Invisible;
            m_email = activity.FindViewById<EditText>(Resource.Id.email);
            m_email.Visibility = ViewStates.Invisible;

            string email = sp.GetString("email", null);
            string pass = sp.GetString("pass", null);
            string username = sp.GetString("username", null);

            if (email == null || pass == null)
            {
                m_username.Visibility = ViewStates.Visible;
                m_pass.Visibility = ViewStates.Visible;
                m_signUp.Visibility = ViewStates.Visible;
                m_email.Visibility = ViewStates.Visible;
                var buttonPress = AnimationUtils.LoadAnimation(activity, Resource.Animation.button_press);
                var buttonRelease = AnimationUtils.LoadAnimation(activity, Resource.Animation.button_release);

                m_signUp.Click += async (sender, e) =>
                {
                    m_signUp.StartAnimation(buttonPress);
                    m_signUp.ScaleX = 0.95f;
                    m_signUp.ScaleY = 0.95f;

                    email = m_email.Text;
                    username = m_username.Text;
                    pass = m_pass.Text;

                    try
                    {
                        if (username.Length > 0 && pass.Length > 5 && email.Length > 0)
                        {
                            var result = await auth.CreateUserWithEmailAndPasswordAsync(email, pass);
                            user = new User(result.User);
                            user.Username = username;
                            ISharedPreferencesEditor editor = sp.Edit();
                            editor.PutString("email", email);
                            editor.PutString("pass", pass);
                            editor.PutString("username", username);
                            editor.PutStringSet("friends", user.Friends);
                            editor.Apply();
                            await m_client.Child("Users").Child(user.FirebaseUser.Uid).Child("Username").PutAsync<string>(username);
                        }
                        else
                        {
                            Toast.MakeText(activity, "Must Fill All Fields.\nPassword Should Be At Least 6 Characters.", ToastLength.Short).Show();
                            m_username.Text = "";
                            m_pass.Text = "";
                            m_email.Text = "";

                            m_signUp.StartAnimation(buttonRelease);
                            m_signUp.ScaleX = 1f;
                            m_signUp.ScaleY = 1f;
                            return;
                        }
                    }
                    catch (FirebaseAuthUserCollisionException)
                    {
                        try
                        {
                            var result = await auth.SignInWithEmailAndPasswordAsync(email, pass);
                            user = new User(result.User);
                            user.Username = await m_client.Child("Users").Child(user.FirebaseUser.Uid).Child("Username").OnceSingleAsync<string>();
                            if (user.Username != username)
                            {
                                Toast.MakeText(activity, "Incorrect username.", ToastLength.Short).Show();
                                m_username.Text = "";
                                m_pass.Text = "";
                                m_email.Text = "";

                                m_signUp.StartAnimation(buttonRelease);
                                m_signUp.ScaleX = 1f;
                                m_signUp.ScaleY = 1f;
                                return;
                            }
                            else
                            {
                                user.Friends = await m_client.Child("Users").Child(user.FirebaseUser.Uid).Child("Friends").OnceSingleAsync<List<string>>();
                                ISharedPreferencesEditor editor = sp.Edit();
                                editor.PutString("email", email);
                                editor.PutString("pass", pass);
                                editor.PutString("username", username);
                                editor.PutStringSet("friends", user.Friends);
                                editor.Apply();
                            }
                        }
                        catch (FirebaseAuthInvalidCredentialsException)
                        {
                            Toast.MakeText(activity, "This Email Is Already In Use.\nIncorrect Password.", ToastLength.Short).Show();
                            m_username.Text = "";
                            m_pass.Text = "";
                            m_email.Text = "";

                            m_signUp.StartAnimation(buttonRelease);
                            m_signUp.ScaleX = 1f;
                            m_signUp.ScaleY = 1f;
                            return;
                        }
                    }
                    catch (FirebaseAuthInvalidCredentialsException)
                    {
                        if (pass.Length >= 6)
                        {
                            Toast.MakeText(activity, "Invalid email or the email does not exist.", ToastLength.Short).Show();
                        }
                        else
                        {
                            Toast.MakeText(activity, "Password should be at least 6 characters.", ToastLength.Short).Show();
                        }
                        m_username.Text = "";
                        m_email.Text = "";
                        m_pass.Text = "";

                        m_signUp.StartAnimation(buttonRelease);
                        m_signUp.ScaleX = 1f;
                        m_signUp.ScaleY = 1f;
                        return;
                    }
                    catch (FirebaseAuthInvalidUserException)
                    {
                        Toast.MakeText(activity, "Incorrect username.", ToastLength.Short).Show();
                        m_username.Text = "";
                        m_email.Text = "";
                        m_pass.Text = "";

                        m_signUp.StartAnimation(buttonRelease);
                        m_signUp.ScaleX = 1f;
                        m_signUp.ScaleY = 1f;
                        return;
                    }
                    catch (Exception ex)
                    {
                        Toast.MakeText(activity, "Error, Please Try Again.", ToastLength.Short).Show();
                        Console.WriteLine(ex.Message);
                        Console.WriteLine(m_email.Text);
                        Console.WriteLine(m_pass.Text);
                        Console.WriteLine(m_username.Text);
                        m_username.Text = "";
                        m_email.Text = "";
                        m_pass.Text = "";

                        m_signUp.StartAnimation(buttonRelease);
                        m_signUp.ScaleX = 1f;
                        m_signUp.ScaleY = 1f;
                        return;
                    }

                    m_username.Visibility = ViewStates.Invisible;
                    m_pass.Visibility = ViewStates.Invisible;
                    m_signUp.Visibility = ViewStates.Invisible;
                    m_email.Visibility = ViewStates.Invisible;

                    await StartLoading();
                    tcs.SetResult(true);

                    m_signUp.StartAnimation(buttonRelease);
                    m_signUp.ScaleX = 1f;
                    m_signUp.ScaleY = 1f;
                };
            }
            else
            {
                var result = await auth.SignInWithEmailAndPasswordAsync(email, pass);
                user = new User(result.User);
                user.Username = await m_client.Child("Users").Child(user.FirebaseUser.Uid).Child("Username").OnceSingleAsync<string>();
                user.Friends = (sp.GetStringSet("friends", null)).ToList<string>();
                await StartLoading();
                tcs.SetResult(true);
            }

            await tcs.Task;
        }
    }
}
