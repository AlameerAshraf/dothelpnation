namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class user
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public user()
        {
            ads_messages = new HashSet<ads_messages>();
            ads_messages1 = new HashSet<ads_messages>();
            blogs = new HashSet<blog>();
            comments = new HashSet<comment>();
            ratings = new HashSet<rating>();
        }

        public int id { get; set; }

        [Required]
        [StringLength(255)]
        public string name { get; set; }

        [StringLength(255)]
        public string mobile { get; set; }

        [StringLength(155)]
        public string age { get; set; }

        [Required]
        [StringLength(255)]
        public string email { get; set; }

        [StringLength(255)]
        public string level { get; set; }

        [StringLength(255)]
        public string photo { get; set; }

        [StringLength(255)]
        public string provider { get; set; }

        [StringLength(255)]
        public string provider_id { get; set; }

        [StringLength(255)]
        public string access_token { get; set; }

        [Required]
        [StringLength(255)]
        public string password { get; set; }

        [StringLength(100)]
        public string remember_token { get; set; }

        [Column(TypeName = "datetime2")]
        public DateTime? created_at { get; set; }

        [Column(TypeName = "datetime2")]
        public DateTime? updated_at { get; set; }

        public virtual ICollection<ads_messages> ads_messages { get; set; }

        public virtual ICollection<ads_messages> ads_messages1 { get; set; }

        public virtual ICollection<blog> blogs { get; set; }

        public virtual ICollection<comment> comments { get; set; }

        public virtual ICollection<rating> ratings { get; set; }
    }
}
