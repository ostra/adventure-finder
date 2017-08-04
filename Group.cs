using System;
namespace AdvantureFinder.Model
{
    public class Group
    {
        public Group () 
        {
        }

        private int GroupID { get; set; }
        private String Name { get; set; }
        private String Description { get; set; }
        private int AdminID { get; set; }
        private DateTime CreatedAt { get; set; }
        private int Rank { get; set; }
    }
}
