namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class blog_sections
    {
        public blog_sections()
        {
            blogs = new HashSet<blog>();
        }

        public int id { get; set; }

        public string langkey { get; set; }

        public string title { get; set; }

        public string url { get; set; }

        public string stuts { get; set; }

        public string photo { get; set; }

        public string content { get; set; }

        public string meat_description { get; set; }

        public string meat_keywords { get; set; }

        public virtual ICollection<blog> blogs { get; set; }
    }
}
