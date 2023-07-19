using Firebase.Auth;
using Newtonsoft.Json;
using System.Collections.Generic;

public class User
{
    public string UserId { get; set; }

    // Only set this when you have an actual FirebaseUser object
    // Do not try to set this when deserializing from Firebase
    [JsonIgnore]
    public FirebaseUser FirebaseUser { get; set; }

    public string Username { get; set; }
    public string Email { get; set; }
    public int Coins { get; set; }
    public List<string> Friends { get; set; }

    // Parameterless constructor for Firebase
    public User()
    {
        Friends = new List<string>();
    }

    // Constructor for when you have a FirebaseUser object
    public User(FirebaseUser firebaseUser)
    {
        FirebaseUser = firebaseUser;
        Email = firebaseUser.Email;
        UserId = firebaseUser.Uid;
        Coins = 500;
        Friends = new List<string>();
    }
    public User(FirebaseUser firebaseUser, int coins)
    {
        FirebaseUser = firebaseUser;
        Email = firebaseUser.Email;
        UserId = firebaseUser.Uid;
        Coins = coins;
        Friends = new List<string>();
    }
}
