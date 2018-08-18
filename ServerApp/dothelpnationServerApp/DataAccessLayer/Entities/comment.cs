namespace DataAccessLayer.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class comment
    {
        public int id { get; set; }

        public string type { get; set; }

        public int? user_id { get; set; }

        public int? ad_id { get; set; }

        public string name { get; set; }

        public string email { get; set; }

        public string phone { get; set; }

        public string commentBody { get; set; }

        public DateTime? date { get; set; }

        public string time { get; set; }

        public virtual blog blog { get; set; }

        public virtual user user { get; set; }
    }
}
