namespace Domain
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class photos_videos_sections
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [StringLength(255)]
        public string langkey { get; set; }

        [StringLength(355)]
        public string title { get; set; }

        public int? stuts { get; set; }

        [StringLength(255)]
        public string type { get; set; }
    }
}
