namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("dothelpn_website.device_tokens")]
    public partial class device_tokens
    {
        public int id { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string device_token { get; set; }

        [Column(TypeName = "text")]
        [StringLength(65535)]
        public string device_type { get; set; }
        public int user_id { get; set; }
    }
}
