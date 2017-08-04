using System;
namespace AdvantureFinder.Model
{
    public class Region
    {
        public Region()
        {
        }

        private int RegionID { get; set; }
        private String Name { get; set; }
        private int CountryID { get; set; }
        private int Rank { get; set; }
    }
}
