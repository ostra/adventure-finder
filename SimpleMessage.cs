using System;
namespace AdvantureFinder.Model
{
    public class SimpleMessage
    {
        public SimpleMessage()
        {
        }

        private int SimpleMessageID { get; set; }
        private DateTime CreatedAt { get; set; }
        private int SenderID { get; set; }
        private int ReceiverID { get; set; }

    }
}
