namespace Domain.NewFolder1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("fqa")]
    public partial class fqa
    {
        public int id { get; set; }

        [StringLength(155)]
        public string type { get; set; }

        [StringLength(255)]
        public string langkey { get; set; }

        [StringLength(355)]
        public string name { get; set; }

        public string info { get; set; }
    }
}
