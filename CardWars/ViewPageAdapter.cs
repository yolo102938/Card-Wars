using AndroidX.Fragment.App;
using AndroidX.ViewPager2.Adapter;
using System;

namespace CardWars
{
    public class PagerAdapter : FragmentStateAdapter
    {
        public PagerAdapter(FragmentActivity fragmentActivity) : base(fragmentActivity) {  }

        public override Fragment CreateFragment(int position)
        {
            return position switch
            {
                0 => new FriendsFragment(),
                1 => new MainMenu(),
                2 => new PersonalZone(),
                _ => throw new ArgumentException("Invalid section number")
            };
        }

        public override int ItemCount => 3; // as we have three pages
    }
}
