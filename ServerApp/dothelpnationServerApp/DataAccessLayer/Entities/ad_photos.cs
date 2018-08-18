namespace DataAccessLayer.Entities
{
    public partial class ad_photos
    {
        public int id { get; set; }

        public int ad_id { get; set; }

        public string photo { get; set; }

        public virtual blog blog { get; set; }
    }
}
