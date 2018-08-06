namespace Domain
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class destination
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [StringLength(400)]
        public string title { get; set; }

        [Column(TypeName = "text")]
        public string url { get; set; }

        [StringLength(255)]
        public string photo { get; set; }

        [Column(TypeName = "text")]
        public string content { get; set; }

        [StringLength(500)]
        public string short_desc { get; set; }

        public int? stuts { get; set; }

        [Column(TypeName = "text")]
        public string meat_description { get; set; }

        [Column(TypeName = "text")]
        [Required]
        public string meat_keywords { get; set; }
    }
}
