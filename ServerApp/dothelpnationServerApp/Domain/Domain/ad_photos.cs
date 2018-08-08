namespace Domain.NewFolder1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class ad_photos
    {
        public int id { get; set; }

        public int ad_id { get; set; }

        [Required]
        [StringLength(300)]
        public string photo { get; set; }

        public virtual blog blog { get; set; }
    }
}
