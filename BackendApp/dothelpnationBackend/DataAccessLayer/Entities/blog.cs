namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("dothelpn_website.blog")]
    public partial class blog
    {
        public int id { get; set; }

        [StringLength(255)]
        public string langkey { get; set; }

        public int? section_id { get; set; }

        [StringLength(400)]
        public string title { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
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

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string content { get; set; }

        [StringLength(500)]
        public string short_desc { get; set; }

        [Column(TypeName = "enum")]
        [StringLength(65532)]
        public string type { get; set; }

        public int? user_id { get; set; }

        public int? stuts { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string meat_description { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string meat_keywords { get; set; }

        [Column(TypeName = "date")]
        public DateTime? publish_date { get; set; }

        [StringLength(155)]
        public string time { get; set; }

        public int? vists { get; set; }
    }
}
