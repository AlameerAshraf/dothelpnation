namespace Domain.NewFolder1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

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

        public string url { get; set; }

        public int? stuts { get; set; }

        [StringLength(255)]
        public string photo { get; set; }

        [StringLength(50)]
        public string type { get; set; }

        public string content { get; set; }

        [StringLength(600)]
        public string short_info { get; set; }

        public string meat_description { get; set; }

        public string meat_keywords { get; set; }
    }
}
