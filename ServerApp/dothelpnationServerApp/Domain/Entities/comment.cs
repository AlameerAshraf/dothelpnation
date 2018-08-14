namespace Domain
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class comment
    {
        public int id { get; set; }

        [StringLength(155)]
        public string type { get; set; }

        public int? user_id { get; set; }

        public int? ad_id { get; set; }

        [StringLength(255)]
        public string name { get; set; }

        [StringLength(255)]
        public string email { get; set; }

        [StringLength(50)]
        public string phone { get; set; }

        [Column("comment")]
        public string comment1 { get; set; }

        [Column(TypeName = "date")]
        public DateTime? date { get; set; }

        [StringLength(155)]
        public string time { get; set; }

        public virtual blog blog { get; set; }

        public virtual user user { get; set; }
    }
}
