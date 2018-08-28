namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("dothelpn_website.menu_locations")]
    public partial class menu_locations
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [StringLength(155)]
        public string langkey { get; set; }

        [StringLength(255)]
        public string code { get; set; }

        [StringLength(255)]
        public string title { get; set; }

        public int? stuts { get; set; }
    }
}
