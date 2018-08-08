namespace Domain
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class place
    {
        public int id { get; set; }

        [StringLength(255)]
        public string name { get; set; }

        [StringLength(155)]
        public string type { get; set; }

        public int? mohafza_id { get; set; }

        [Column(TypeName = "text")]
        public string url { get; set; }

        public int? num_view { get; set; }
    }
}
