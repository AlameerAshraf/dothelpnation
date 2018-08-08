namespace Domain.NewFolder1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class destination
    {
        [DatabaseGenerated(DatabaseGeneratedOption.None)]
        public int id { get; set; }

        [StringLength(400)]
        public string title { get; set; }

        public string url { get; set; }

        [StringLength(255)]
        public string photo { get; set; }

        public string content { get; set; }

        [StringLength(500)]
        public string short_desc { get; set; }

        public int? stuts { get; set; }

        public string meat_description { get; set; }

        [Required]
        public string meat_keywords { get; set; }
    }
}
