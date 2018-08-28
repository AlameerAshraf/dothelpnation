namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("dothelpn_website.places")]
    public partial class place
    {
        public int id { get; set; }

        [StringLength(255)]
        public string name { get; set; }

        [StringLength(155)]
        public string type { get; set; }

        public int? mohafza_id { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string url { get; set; }

        public int? num_view { get; set; }
    }
}
