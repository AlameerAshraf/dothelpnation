namespace Domain
{
    using System;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class email_contact
    {
        public int id { get; set; }

        [StringLength(255)]
        public string name { get; set; }

        [StringLength(255)]
        public string email { get; set; }

        [StringLength(255)]
        public string phone { get; set; }

        [StringLength(255)]
        public string subject { get; set; }

        [Column(TypeName = "text")]
        public string message { get; set; }

        [Column(TypeName = "text")]
        public string attach { get; set; }

        [Column(TypeName = "date")]
        public DateTime? date { get; set; }

        [StringLength(255)]
        public string time { get; set; }

        public int readed { get; set; }

        [Column(TypeName = "text")]
        public string stuts { get; set; }
    }
}
