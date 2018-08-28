namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("dothelpn_website.ad_photos")]
    public partial class ad_photos
    {
        public int id { get; set; }

        public int ad_id { get; set; }

        [Required]
        [StringLength(300)]
        public string photo { get; set; }
    }
}
