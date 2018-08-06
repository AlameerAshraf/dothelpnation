namespace Domain
{
    using System.ComponentModel.DataAnnotations;

    public partial class site_translation
    {
        public int id { get; set; }

        [StringLength(100)]
        public string lang_code { get; set; }

        [Required]
        [StringLength(200)]
        public string langkey { get; set; }

        [StringLength(255)]
        public string text { get; set; }
    }
}
