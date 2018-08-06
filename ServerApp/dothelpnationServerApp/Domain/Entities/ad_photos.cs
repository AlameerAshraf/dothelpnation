namespace Domain
{
    using System.ComponentModel.DataAnnotations;

    public partial class ad_photos
    {
        public int id { get; set; }

        public int ad_id { get; set; }

        [Required]
        [StringLength(300)]
        public string photo { get; set; }
    }
}
