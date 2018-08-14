namespace Domain
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class photo
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        public int? section_id { get; set; }

        [StringLength(255)]
        public string langkey { get; set; }

        [Column("photo")]
        public string photo1 { get; set; }
    }
}
