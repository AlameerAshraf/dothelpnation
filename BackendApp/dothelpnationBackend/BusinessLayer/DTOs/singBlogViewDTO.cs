using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLayer.DTOs
{
    public class singBlogViewDTO
    {
        // User Data 
        public long user_id { get; set; }
        public string user_name { get; set; }
        public string user_email { get; set; }
        public string user_photo { get; set; }


        public int id { get; set; }
        public int? section_id { get; set; }
        public string section_name { get; set; }
        public string title { get; set; }
        public string url { get; set; }
        public string address { get; set; }
        public int? place_id { get; set; }
        public int? city_id { get; set; }
        public string photo { get; set; }
        public string content { get; set; }
        public DateTime? publish_date { get; set; }
        public string time { get; set; }
        public int? vists { get; set; }
        public double? stars { get; set; }


        public string map_address { get; set; }
        public string map_radius { get; set; }
        public string map_latitude { get; set; }
        public string map_longitude { get; set; }

    }
}
