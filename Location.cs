using System;
namespace AdvantureFinder.Model
{
    public class Location
    {
        public Location()
        {
        }

        private int LocationID { get; set; }
        private String Name { get; set; }
        private Double Longitude { get; set; }
        private Double Latitude { get; set; }
        private String Description { get; set; }
        private int RegionID { get; set; }
        private int Rank { get; set; }

    }
}
