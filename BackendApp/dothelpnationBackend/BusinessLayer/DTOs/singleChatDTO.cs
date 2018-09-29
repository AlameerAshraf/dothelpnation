using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.DTOs
{
    public class singleChatDTO
    {
        public int? userId { get; set; }
        public DateTime? sendDate { get; set; }
        public string message { get; set; }
        public Boolean showMessage { get; set; }
        public string userName { get; set; }
        public string time { get; set; }
        public TimeSpan? time_span { get; set; }

    }
}
