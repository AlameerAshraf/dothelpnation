namespace Domain
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class menu
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        public int? location_id { get; set; }

        [StringLength(155)]
        public string langkey { get; set; }

        public int? parent_id { get; set; }

        [StringLength(300)]
        public string title { get; set; }

        public int? stuts { get; set; }

        [Column(TypeName = "text")]
        public string url { get; set; }

        public int? sort { get; set; }
    }
}
