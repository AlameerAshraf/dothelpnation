namespace Domain
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    [Table("fqa")]
    public partial class fqa
    {
        public int id { get; set; }

        [StringLength(155)]
        public string type { get; set; }

        [StringLength(255)]
        public string langkey { get; set; }

        [StringLength(355)]
        public string name { get; set; }

        [Column(TypeName = "text")]
        public string info { get; set; }
    }
}
