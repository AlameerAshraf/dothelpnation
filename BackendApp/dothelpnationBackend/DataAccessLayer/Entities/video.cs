namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("dothelpn_website.videos")]
    public partial class video
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        public int? section_id { get; set; }

        [StringLength(255)]
        public string langkey { get; set; }

        [StringLength(255)]
        public string title { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string url { get; set; }

        public int? stuts { get; set; }
    }
}
