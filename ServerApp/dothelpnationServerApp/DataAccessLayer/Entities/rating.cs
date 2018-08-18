namespace DataAccessLayer.Entities
{
    using System;

    public partial class rating
    {
        public int id { get; set; }

        public int? post_id { get; set; }

        public int? user_id { get; set; }

        public int? stars { get; set; }

        public DateTime? date { get; set; }

        public string time { get; set; }

        public virtual blog blog { get; set; }

        public virtual user user { get; set; }
    }
}
