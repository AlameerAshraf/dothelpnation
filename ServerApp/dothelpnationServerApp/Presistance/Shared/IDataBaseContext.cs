using System.Data.Entity;
using Domain;
namespace Presistance.Shared
{
    public interface IDataBaseContext
    {
        IDbSet<ad_photos> ad_photos { get; set; }
        IDbSet<admin_lang> admin_lang { get; set; }
        IDbSet<admin_translation> admin_translation { get; set; }
        IDbSet<ads_messages> ads_messages { get; set; }
        IDbSet<blog> blogs { get; set; }
        IDbSet<blog_sections> blog_sections { get; set; }
        IDbSet<comment> comments { get; set; }
        IDbSet<destination> destinations { get; set; }
        IDbSet<email_contact> email_contact { get; set; }
        IDbSet<fqa> fqas { get; set; }
        IDbSet<newslatter> newslatters { get; set; }
        IDbSet<photo> photos { get; set; }
        IDbSet<site_lang> site_lang { get; set; }
        IDbSet<site_translation> site_translation { get; set; }
        IDbSet<sysdiagram> sysdiagrams { get; set; }
        IDbSet<tag> tags { get; set; }
        IDbSet<tour_category> tour_category { get; set; }
        IDbSet<tour_dayes> tour_dayes { get; set; }
        IDbSet<tour> tours { get; set; }
        IDbSet<user> users { get; set; }
        IDbSet<admin_config> admin_config { get; set; }
        IDbSet<password_resets> password_resets { get; set; }
        IDbSet<rating> ratings { get; set; }
        IDbSet<site_config> site_config { get; set; }
        IDbSet<user_access_rolls> user_access_rolls { get; set; }
        IDbSet<user_rolls> user_rolls { get; set; }
        IDbSet<video> videos { get; set; }

        IDbSet<T> Set<T>() where T : class;
    }
}
