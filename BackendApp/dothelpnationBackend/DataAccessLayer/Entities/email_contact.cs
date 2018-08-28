namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("dothelpn_website.email_contact")]
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
        [StringLength(65535)]
        public string message { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string attach { get; set; }

        [Column(TypeName = "date")]
        public DateTime? date { get; set; }

        [StringLength(255)]
        public string time { get; set; }

        public int readed { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string stuts { get; set; }
    }
}
