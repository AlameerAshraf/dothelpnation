using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.DTOs
{
    public class sentMessagesDTO
    {
        public string ad_id { get; set; }
        public string userId { get; set; }
        public string sendDate { get; set; }
        public string time { get; set; }
        public string _time { get; set; }
        public string message { get; set; }
        public string senderEmail { get; set; }
        public string receiverId { get; set; }
    }
}
