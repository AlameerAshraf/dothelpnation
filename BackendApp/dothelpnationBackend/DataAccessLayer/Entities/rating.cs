namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("dothelpn_website.rating")]
    public partial class rating
    {
        public int id { get; set; }

        public int? post_id { get; set; }

        public int? user_id { get; set; }

        public int? stars { get; set; }

        [Column(TypeName = "date")]
        public DateTime? date { get; set; }

        [Required]
        [StringLength(15)]
        public string time { get; set; }
    }
}
