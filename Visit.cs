using System;
namespace AdvantureFinder.Model
{
    public class Visit
    {
        public Visit()
        {
        }

        private int VisitID { get; set; }
        private DateTime Start { get; set; }
        private DateTime End { get; set; }
        private String Status { get; set; }
        private int UserID { get; set; }
    }
}
