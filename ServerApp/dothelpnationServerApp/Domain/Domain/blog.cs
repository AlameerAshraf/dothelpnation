namespace Domain.NewFolder1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("blog")]
    public partial class blog
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public blog()
        {
            ads_messages = new HashSet<ads_messages>();
            comments = new HashSet<comment>();
            ratings = new HashSet<rating>();
        }

        public int id { get; set; }

        [StringLength(255)]
        public string langkey { get; set; }

        public int? section_id { get; set; }

        [StringLength(400)]
        public string title { get; set; }

        public string url { get; set; }

        [StringLength(300)]
        public string address { get; set; }

        public int? place_id { get; set; }

        public int? city_id { get; set; }

        [StringLength(255)]
        public string map_address { get; set; }

        [StringLength(55)]
        public string map_radius { get; set; }

        [StringLength(100)]
        public string map_latitude { get; set; }

        [StringLength(100)]
        public string map_longitude { get; set; }

        [StringLength(255)]
        public string photo { get; set; }

        [StringLength(255)]
        public string bloodtype { get; set; }

        public string content { get; set; }

        [StringLength(500)]
        public string short_desc { get; set; }

        [StringLength(10)]
        public string type { get; set; }

        public int? user_id { get; set; }

        public int? stuts { get; set; }

        [StringLength(500)]
        public string meat_description { get; set; }

        public string meat_keywords { get; set; }

        [Column(TypeName = "date")]
        public DateTime? publish_date { get; set; }

        [StringLength(155)]
        public string time { get; set; }

        public int? vists { get; set; }

        public virtual ad_photos ad_photos { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ads_messages> ads_messages { get; set; }

        public virtual blog_sections blog_sections { get; set; }

        public virtual user user { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<comment> comments { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<rating> ratings { get; set; }
    }
}
