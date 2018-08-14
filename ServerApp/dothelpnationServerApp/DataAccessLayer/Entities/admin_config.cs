namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class admin_config
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(255)]
        public string key { get; set; }

        [Key]
        [Column(Order = 1)]
        public string value { get; set; }
    }
}
