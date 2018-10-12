namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("dothelpn_website.user_settings")]
    public partial class user_settings
    {
        public int id { get; set; }

        public int? user_id { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string default_language { get; set; }

        public int? default_city_id { get; set; }
    }
}
