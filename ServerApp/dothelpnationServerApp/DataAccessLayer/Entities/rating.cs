namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("rating")]
    public partial class rating
    {
        [Key]
        [Column(Order = 0)]
        public int id { get; set; }

        public int? post_id { get; set; }

        public int? user_id { get; set; }

        public int? stars { get; set; }

        [Column(TypeName = "date")]
        public DateTime? date { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(15)]
        public string time { get; set; }

        public virtual blog blog { get; set; }

        public virtual user user { get; set; }
    }
}
