using System;
namespace AdvantureFinder.Model
{
    public class User
    {
        public User()
        {
        }

        private int UserID { get; set; }
        private String Name { get; set; }
        private String Surname { get; set; }
        private String UserName { get; set; }
        private String Password { get; set; }
        private String InstagramLink { get; set; }
        private String FacebookLink { get; set; }
        private String YouTubeLink { get; set; }
        private bool Male { get; set; }
        private DateTime BirthDate { get; set; }
        private String AvatarLink { get; set; }
        private String Bio { get; set; }
        private bool Commercial { get; set; }
        private int Rank { get; set; }
    }
}
