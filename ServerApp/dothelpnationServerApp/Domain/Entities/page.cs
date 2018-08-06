namespace Domain
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class page
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [StringLength(55)]
        public string langkey { get; set; }

        [Column(TypeName = "text")]
        public string url { get; set; }

        [StringLength(500)]
        public string title { get; set; }

        [Column(TypeName = "text")]
        public string content { get; set; }

        public int? stuts { get; set; }

        [StringLength(255)]
        public string photo { get; set; }

        [Column(TypeName = "text")]
        public string meat_description { get; set; }

        [Column(TypeName = "text")]
        public string meat_keywords { get; set; }
    }
}
