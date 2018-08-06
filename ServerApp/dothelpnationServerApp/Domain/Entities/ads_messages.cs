namespace Domain
{
    using System;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

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

        [Column(TypeName = "text")]
        public string info { get; set; }

        public int stuts { get; set; }

        [Column(TypeName = "date")]
        public DateTime? date { get; set; }

        [StringLength(155)]
        public string time { get; set; }
    }
}
