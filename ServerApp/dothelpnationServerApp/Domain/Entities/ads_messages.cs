namespace Domain
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ads_messages
    {
        public int id { get; set; }

        [StringLength(155)]
        public string type { get; set; }

        public int? parent_id { get; set; }

        public int? ad_id { get; set; }

        public int? from_user_id { get; set; }

        public int? to_user_id { get; set; }

        [StringLength(255)]
        public string title { get; set; }

        public string info { get; set; }

        public int stuts { get; set; }

        [Column(TypeName = "date")]
        public DateTime? date { get; set; }

        [StringLength(155)]
        public string time { get; set; }

        public virtual blog blog { get; set; }

        public virtual user user { get; set; }

        public virtual user user1 { get; set; }
    }
}
