namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;

    public partial class blog
    {
        public blog()
        {
            ads_messages = new HashSet<ads_messages>();
            comments = new HashSet<comment>();
            ratings = new HashSet<rating>();
        }

        public int id { get; set; }

        public string langkey { get; set; }

        public int? section_id { get; set; }

        public string title { get; set; }

        public string url { get; set; }

        public string address { get; set; }

        public int? place_id { get; set; }

        public int? city_id { get; set; }

        public string map_address { get; set; }

        public string map_radius { get; set; }

        public string map_latitude { get; set; }

        public string map_longitude { get; set; }

        public string photo { get; set; }

        public string bloodtype { get; set; }

        public string content { get; set; }

        public string short_desc { get; set; }

        public string type { get; set; }

        public int? user_id { get; set; }

        public int? stuts { get; set; }

        public string meat_description { get; set; }

        public string meat_keywords { get; set; }

        public DateTime? publish_date { get; set; }

        public string time { get; set; }

        public int? vists { get; set; }

        public virtual ad_photos ad_photos { get; set; }

        public virtual ICollection<ads_messages> ads_messages { get; set; }

        public virtual blog_sections blog_sections { get; set; }

        public virtual user user { get; set; }

        public virtual ICollection<comment> comments { get; set; }

        public virtual ICollection<rating> ratings { get; set; }
    }
}
