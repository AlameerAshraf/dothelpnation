namespace Domain
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class slider
    {
        public int id { get; set; }

        [StringLength(55)]
        public string langkey { get; set; }

        [StringLength(300)]
        public string text_1 { get; set; }

        [StringLength(300)]
        public string text_2 { get; set; }

        [Column(TypeName = "text")]
        public string text_3 { get; set; }

        [Column(TypeName = "text")]
        public string url { get; set; }

        public int? sort { get; set; }

        [StringLength(255)]
        public string photo { get; set; }

        [StringLength(50)]
        public string stuts { get; set; }
    }
}
