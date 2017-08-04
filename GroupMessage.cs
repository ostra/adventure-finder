using System;
namespace AdvantureFinder.Model
{
    public class GroupMessage
    {
        public GroupMessage()
        {
        }

        private int GroupMessageID { get; set; }
        private String Text { get; set; }
        private DateTime CreatedAt { get; set; }
        private int SenderID { get; set; }
        private int GroupID { get; set; }

    }
}
