namespace Domain
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class admin_translation
    {
        public int id { get; set; }

        [StringLength(100)]
        public string lang_code { get; set; }

        [Required]
        [StringLength(200)]
        public string langkey { get; set; }

        [StringLength(255)]
        public string text { get; set; }
    }
}
