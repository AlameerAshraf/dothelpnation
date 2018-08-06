namespace Domain
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class tour
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        public int? dest_id { get; set; }

        [StringLength(450)]
        public string title { get; set; }

        [StringLength(200)]
        public string main_price { get; set; }

        [StringLength(200)]
        public string price { get; set; }

        [StringLength(200)]
        public string duration { get; set; }

        [Column(TypeName = "text")]
        public string url { get; set; }

        public int? stuts { get; set; }

        [StringLength(255)]
        public string photo { get; set; }

        [StringLength(50)]
        public string type { get; set; }

        [Column(TypeName = "text")]
        public string content { get; set; }

        [StringLength(600)]
        public string short_info { get; set; }

        [Column(TypeName = "text")]
        public string meat_description { get; set; }

        [Column(TypeName = "text")]
        public string meat_keywords { get; set; }
    }
}
