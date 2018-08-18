namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class user
    {
        public user()
        {
            sentMessages = new HashSet<ads_messages>();
            receivedMessages = new HashSet<ads_messages>();
            blogs = new HashSet<blog>();
            comments = new HashSet<comment>();
            ratings = new HashSet<rating>();
        }

        public int id { get; set; }
        public string name { get; set; }
        public string mobile { get; set; }
        public string age { get; set; }
        public string email { get; set; }
        public string level { get; set; }
        public string photo { get; set; }
        public string provider { get; set; }
        public string provider_id { get; set; }
        public string access_token { get; set; }
        public string password { get; set; }
        public string remember_token { get; set; }
        public DateTime? created_at { get; set; }
        public DateTime? updated_at { get; set; }

        public virtual ICollection<ads_messages> sentMessages { get; set; }

        public virtual ICollection<ads_messages> receivedMessages { get; set; }

        public virtual ICollection<blog> blogs { get; set; }

        public virtual ICollection<comment> comments { get; set; }

        public virtual ICollection<rating> ratings { get; set; }
    }
}
