using Android.OS;
using Android.Views;
using AndroidX.Fragment.App;
using Android.Widget;
using Android.Media;
using Android.Views.Animations;
using System;

#pragma warning disable CS0618
#pragma warning disable CS0672

namespace CardWars
{
    public class MainMenu : Fragment
    {
        private TextView m_TrophyCount;
        private ImageView m_Slot1, m_Slot2, m_Slot3;
        private Button m_BattleButton;
        private MediaPlayer m_audio;
        private AudioManager m_audio_manager;

        public override View OnCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState)
        {
            // Inflate the layout for this fragment
            var view = inflater.Inflate(Resource.Layout.menu_main, container, false);

            m_TrophyCount = view.FindViewById<TextView>(Resource.Id.trophyCount);
            m_Slot1 = view.FindViewById<ImageView>(Resource.Id.slot1);
            m_Slot2 = view.FindViewById<ImageView>(Resource.Id.slot2);
            m_Slot3 = view.FindViewById<ImageView>(Resource.Id.slot3);
            m_BattleButton = view.FindViewById<Button>(Resource.Id.battleButton);
            var buttonPress = AnimationUtils.LoadAnimation(Activity, Resource.Animation.button_press);
            var buttonRelease = AnimationUtils.LoadAnimation(Activity, Resource.Animation.button_release);


            m_BattleButton.Touch += (s, e) =>
            {
                Console.WriteLine("FRIEND COUNT: " + MainActivity.user.Friends.Count);
                if (e.Event.Action == MotionEventActions.Down)
                {
                    m_BattleButton.StartAnimation(buttonPress);
                    m_BattleButton.ScaleX = 0.95f;
                    m_BattleButton.ScaleY = 0.95f;
                }
                else if (e.Event.Action == MotionEventActions.Up)
                {
                    m_BattleButton.StartAnimation(buttonRelease);
                    m_BattleButton.ScaleX = 1f;
                    m_BattleButton.ScaleY = 1f;
                }
            };

            m_BattleButton.Click += (sender, e) =>
            {
                //todo
            };

            return view;
        }

        public override void OnActivityCreated(Bundle savedInstanceState)
        {

            base.OnActivityCreated(savedInstanceState);

            m_audio = MediaPlayer.Create(Activity, Resource.Raw.backSound1);
            m_audio.Start();

            m_audio_manager = (AudioManager)Activity.GetSystemService(Android.Content.Context.AudioService);
            int max = m_audio_manager.GetStreamMaxVolume(Stream.Music);
            m_audio_manager.SetStreamVolume(Stream.Music, max / 2, 0);
        }
    }
}
