namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("dothelpn_website.tour_category")]
    public partial class tour_category
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [StringLength(255)]
        public string title { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string url { get; set; }

        [StringLength(20)]
        public string stuts { get; set; }

        [StringLength(255)]
        public string photo { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string content { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string meat_description { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string meat_keywords { get; set; }
    }
}
