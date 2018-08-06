namespace Domain
{
    using System;
    using System.ComponentModel.DataAnnotations;

    public partial class user
    {
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

        public DateTime? created_at { get; set; }

        public DateTime? updated_at { get; set; }
    }
}
