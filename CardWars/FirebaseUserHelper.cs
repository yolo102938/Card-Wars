using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Firebase.Database;
using System.Threading.Tasks;

namespace CardWars
{
    public static class FirebaseUserHelper
    {
        private static FirebaseClient firebaseClient = new FirebaseClient("https://cardwars-b0a1d-default-rtdb.firebaseio.com/");

        public static async Task<string> GetUsernameTask(string userId)
        {
            var users = await firebaseClient.Child("Users").OnceAsync<User>();
            var user = users.FirstOrDefault(u => u.Object.UserId == userId);

            if (user != null)
            {
                return user.Object.Username;
            }

            return null;
        }

        public static async Task<string> GetEmailTask(string userId)
        {
            var users = await firebaseClient.Child("Users").OnceAsync<User>();
            var user = users.FirstOrDefault(u => u.Object.UserId == userId);

            if (user != null)
            {
                return user.Object.Email;
            }

            return null;
        }

        public static async Task<List<string>> GetFriendsTask(string userId)
        {
            var users = await firebaseClient.Child("Users").OnceAsync<User>();
            var user = users.FirstOrDefault(u => u.Object.UserId == userId);

            if (user != null)
            {
                return user.Object.Friends;
            }

            return new List<string>();
        }

        public static string GetUsername(string userId)
        {
            var users = firebaseClient.Child("Users").OnceAsync<User>().Result;
            var user = users.FirstOrDefault(u => u.Object.UserId == userId);

            if (user != null)
            {
                return user.Object.Username;
            }

            return null;
        }

        public static string GetEmail(string userId)
        {
            var users = firebaseClient.Child("Users").OnceAsync<User>().Result;
            var user = users.FirstOrDefault(u => u.Object.UserId == userId);

            if (user != null)
            {
                return user.Object.Email;
            }

            return null;
        }

        public static List<string> GetFriends(string userId)
        {
            var users = firebaseClient.Child("Users").OnceAsync<User>().Result;
            var user = users.FirstOrDefault(u => u.Object.UserId == userId);

            if (user != null)
            {
                return user.Object.Friends;
            }

            return new List<string>();
        }

    }
}