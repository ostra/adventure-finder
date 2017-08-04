using System;
namespace AdvantureFinder.Model
{
    public class ContentItem
    {
        public ContentItem()
        {
        }

        private int ContentItemId { get; set; }
        private String Link { get; set; }
        private DateTime CreatedAt { get; set; }
        private int UserID { get; set; }
        private int LocationID { get; set; }
        private int EventID { get; set; }
    }
}
