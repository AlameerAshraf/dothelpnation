using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.DTOs
{
    public class chatDTO
    {
        public int id { get; set; }
        public int? ad_id { get; set; }
        public int? from_user_id { get; set; }
        public int? to_user_id { get; set; }
        public string info { get; set; }
        public int stuts { get; set; }
        public DateTime? date { get; set; }
        public TimeSpan? time_span { get; set; }
        public string time { get; set; }



        public string from_user_name { get; set; }
        public string from_user_email { get; set; }
        public string from_user_photo { get; set; }
    }
}
