namespace Domain
{
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public partial class site_config
    {
        [Key]
        [Column(Order = 0)]
        [StringLength(255)]
        public string key { get; set; }

        [Key]
        [Column(Order = 1, TypeName = "text")]
        public string value { get; set; }
    }
}
