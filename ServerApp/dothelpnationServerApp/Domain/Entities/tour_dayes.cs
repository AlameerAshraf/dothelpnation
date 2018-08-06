namespace Domain
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class tour_dayes
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        public int? tour_id { get; set; }

        public int? sort_day { get; set; }

        [Required]
        [StringLength(255)]
        public string photo { get; set; }

        [Column(TypeName = "text")]
        public string content { get; set; }

        [StringLength(355)]
        public string title { get; set; }

        [StringLength(255)]
        public string price_1 { get; set; }

        [StringLength(255)]
        public string price_2 { get; set; }
    }
}
