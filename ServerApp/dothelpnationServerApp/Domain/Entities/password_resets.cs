namespace Domain
{
    using System;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class password_resets
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(255)]
        public string email { get; set; }

        [Key]
        [Column(Order = 1)]
        [StringLength(255)]
        public string token { get; set; }

        public DateTime? created_at { get; set; }
    }
}
