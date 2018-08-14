namespace DataAccessLayer.Entities
{
    using System;

    public partial class ads_messages
    {
        public int id { get; set; }

        public string type { get; set; }

        public int? parent_id { get; set; }

        public int? ad_id { get; set; }

        public int? from_user_id { get; set; }

        public int? to_user_id { get; set; }

        public string title { get; set; }

        public string info { get; set; }

        public int stuts { get; set; }

        public DateTime? date { get; set; }

        public string time { get; set; }

        public virtual blog blog { get; set; }

        public virtual user sender { get; set; }

        public virtual user receiver { get; set; }
    }
}
