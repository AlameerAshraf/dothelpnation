namespace Domain
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class migration
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [Column("migration")]
        [Required]
        [StringLength(255)]
        public string migration1 { get; set; }

        public int batch { get; set; }
    }
}
