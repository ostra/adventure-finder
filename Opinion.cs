using System;
namespace AdvantureFinder.Model
{
    public class Opinion
    {
        public Opinion()
        {
        }

        private int OpinionID { get; set; }
        private String Text { get; set; }
        private DateTime CreatedAt { get; set; }
        private int UserID { get; set; }
        private int EventID { get; set; }
        private int RegionID { get; set; }
        private int LocationID { get; set; }
        private int WriterID { get; set; }
    }
}
