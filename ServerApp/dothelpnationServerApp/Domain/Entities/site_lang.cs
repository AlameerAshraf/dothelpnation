namespace Domain
{
    using System.ComponentModel.DataAnnotations;

    public partial class site_lang
    {
        public int id { get; set; }

        [Required]
        [StringLength(155)]
        public string code { get; set; }

        [Required]
        [StringLength(200)]
        public string name { get; set; }

        [StringLength(100)]
        public string dir { get; set; }

        public int? stuts { get; set; }

        [StringLength(300)]
        public string photo { get; set; }

        [StringLength(155)]
        public string is_main { get; set; }
    }
}
