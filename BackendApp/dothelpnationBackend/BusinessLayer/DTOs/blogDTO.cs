using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.DTOs
{
    public class blogDTO
    {
        public int id { get; set; }
        public string content { get; set; }
        public string langkey { get; set; }
        public int? section_id { get; set; }
        public string title { get; set; }
        public string address { get; set; }
        public int? place_id { get; set; }
        public int? city_id { get; set; }
        public string photo { get; set; }
        public DateTime? publish_date { get; set; }
        public TimeSpan? time_span { get; set; }
        public string time { get; set; }
        public int? user_id { get; set; }


        public string section_name { get; set; }
        public string user_name { get; set; }
        public string place_name { get; set; }
        public string city_name { get; set; }
        public string user_email { get; set; }


    }
}
