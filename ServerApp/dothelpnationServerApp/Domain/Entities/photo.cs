namespace Domain
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class photo
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        public int? section_id { get; set; }

        [StringLength(255)]
        public string langkey { get; set; }

        [Column("photo", TypeName = "text")]
        public string photo1 { get; set; }
    }
}
