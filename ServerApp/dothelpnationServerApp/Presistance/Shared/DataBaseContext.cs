using System.Data.Entity;
using Domain;


namespace Presistance.Shared
{

    public partial class DataBaseContext : DbContext , IDataBaseContext
    {
        public DataBaseContext()
            : base("name=dothelpnationCS")
        {
        }

        public IDbSet<ad_photos> ad_photos { get; set; }
        public IDbSet<admin_lang> admin_lang { get; set; }
        public IDbSet<admin_translation> admin_translation { get; set; }
        public IDbSet<ads_messages> ads_messages { get; set; }
        public IDbSet<blog> blogs { get; set; }
        public IDbSet<blog_sections> blog_sections { get; set; }
        public IDbSet<comment> comments { get; set; }
        public IDbSet<destination> destinations { get; set; }
        public IDbSet<email_contact> email_contact { get; set; }
        public IDbSet<fqa> fqas { get; set; }
        public IDbSet<newslatter> newslatters { get; set; }
        public IDbSet<photo> photos { get; set; }
        public IDbSet<site_lang> site_lang { get; set; }
        public IDbSet<site_translation> site_translation { get; set; }
        public IDbSet<sysdiagram> sysdiagrams { get; set; }
        public IDbSet<tag> tags { get; set; }
        public IDbSet<tour_category> tour_category { get; set; }
        public IDbSet<tour_dayes> tour_dayes { get; set; }
        public IDbSet<tour> tours { get; set; }
        public IDbSet<user> users { get; set; }
        public IDbSet<admin_config> admin_config { get; set; }
        public IDbSet<password_resets> password_resets { get; set; }
        public IDbSet<rating> ratings { get; set; }
        public IDbSet<site_config> site_config { get; set; }
        public IDbSet<user_access_rolls> user_access_rolls { get; set; }
        public IDbSet<user_rolls> user_rolls { get; set; }
        public IDbSet<video> videos { get; set; }

        IDbSet<T> IDataBaseContext.Set<T>()
        {
            return base.Set<T>();
        }
    }
}
