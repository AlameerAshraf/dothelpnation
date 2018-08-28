namespace DataAccessLayer.DataContext
{
    using System;
    using DataAccessLayer.Entities;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class dothelpnationMySqlContext : DbContext
    {
        public dothelpnationMySqlContext()
            : base("name=dothelpnationMySqlcs")
        {
        }

        public virtual DbSet<ad_photos> ad_photos { get; set; }
        public virtual DbSet<admin_lang> admin_lang { get; set; }
        public virtual DbSet<admin_translation> admin_translation { get; set; }
        public virtual DbSet<ads_messages> ads_messages { get; set; }
        public virtual DbSet<blog> blogs { get; set; }
        public virtual DbSet<blog_sections> blog_sections { get; set; }
        public virtual DbSet<comment> comments { get; set; }
        public virtual DbSet<destination> destinations { get; set; }
        public virtual DbSet<email_contact> email_contact { get; set; }
        public virtual DbSet<fqa> fqas { get; set; }
        public virtual DbSet<menu_locations> menu_locations { get; set; }
        public virtual DbSet<menu> menus { get; set; }
        public virtual DbSet<migration> migrations { get; set; }
        public virtual DbSet<newslatter> newslatters { get; set; }
        public virtual DbSet<page> pages { get; set; }
        public virtual DbSet<photo> photos { get; set; }
        public virtual DbSet<photos_videos_sections> photos_videos_sections { get; set; }
        public virtual DbSet<place> places { get; set; }
        public virtual DbSet<rating> ratings { get; set; }
        public virtual DbSet<service> services { get; set; }
        public virtual DbSet<site_lang> site_lang { get; set; }
        public virtual DbSet<site_translation> site_translation { get; set; }
        public virtual DbSet<slider> sliders { get; set; }
        public virtual DbSet<tag> tags { get; set; }
        public virtual DbSet<tour_category> tour_category { get; set; }
        public virtual DbSet<tour_dayes> tour_dayes { get; set; }
        public virtual DbSet<tour> tours { get; set; }
        public virtual DbSet<user> users { get; set; }
        public virtual DbSet<admin_config> admin_config { get; set; }
        public virtual DbSet<password_resets> password_resets { get; set; }
        public virtual DbSet<site_config> site_config { get; set; }
        public virtual DbSet<user_access_rolls> user_access_rolls { get; set; }
        public virtual DbSet<user_rolls> user_rolls { get; set; }
        public virtual DbSet<video> videos { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<ad_photos>()
                .Property(e => e.photo)
                .IsUnicode(false);

            modelBuilder.Entity<admin_lang>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<admin_lang>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<admin_lang>()
                .Property(e => e.dir)
                .IsUnicode(false);

            modelBuilder.Entity<admin_lang>()
                .Property(e => e.photo)
                .IsUnicode(false);

            modelBuilder.Entity<admin_lang>()
                .Property(e => e.is_main)
                .IsUnicode(false);

            modelBuilder.Entity<admin_translation>()
                .Property(e => e.lang_code)
                .IsUnicode(false);

            modelBuilder.Entity<admin_translation>()
                .Property(e => e.langkey)
                .IsUnicode(false);

            modelBuilder.Entity<admin_translation>()
                .Property(e => e.text)
                .IsUnicode(false);

            modelBuilder.Entity<ads_messages>()
                .Property(e => e.type)
                .IsUnicode(false);

            modelBuilder.Entity<ads_messages>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<ads_messages>()
                .Property(e => e.info)
                .IsUnicode(false);

            modelBuilder.Entity<ads_messages>()
                .Property(e => e.time)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.langkey)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.url)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.address)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.map_address)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.map_radius)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.map_latitude)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.map_longitude)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.photo)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.bloodtype)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.content)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.short_desc)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.type)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.meat_description)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.meat_keywords)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .Property(e => e.time)
                .IsUnicode(false);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.langkey)
                .IsUnicode(false);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.url)
                .IsUnicode(false);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.stuts)
                .IsUnicode(false);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.photo)
                .IsUnicode(false);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.content)
                .IsUnicode(false);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.meat_description)
                .IsUnicode(false);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.meat_keywords)
                .IsUnicode(false);

            modelBuilder.Entity<comment>()
                .Property(e => e.type)
                .IsUnicode(false);

            modelBuilder.Entity<comment>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<comment>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<comment>()
                .Property(e => e.phone)
                .IsUnicode(false);

            modelBuilder.Entity<comment>()
                .Property(e => e.comment1)
                .IsUnicode(false);

            modelBuilder.Entity<comment>()
                .Property(e => e.time)
                .IsUnicode(false);

            modelBuilder.Entity<destination>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<destination>()
                .Property(e => e.url)
                .IsUnicode(false);

            modelBuilder.Entity<destination>()
                .Property(e => e.photo)
                .IsUnicode(false);

            modelBuilder.Entity<destination>()
                .Property(e => e.content)
                .IsUnicode(false);

            modelBuilder.Entity<destination>()
                .Property(e => e.short_desc)
                .IsUnicode(false);

            modelBuilder.Entity<destination>()
                .Property(e => e.meat_description)
                .IsUnicode(false);

            modelBuilder.Entity<destination>()
                .Property(e => e.meat_keywords)
                .IsUnicode(false);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.phone)
                .IsUnicode(false);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.subject)
                .IsUnicode(false);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.message)
                .IsUnicode(false);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.attach)
                .IsUnicode(false);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.time)
                .IsUnicode(false);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.stuts)
                .IsUnicode(false);

            modelBuilder.Entity<fqa>()
                .Property(e => e.type)
                .IsUnicode(false);

            modelBuilder.Entity<fqa>()
                .Property(e => e.langkey)
                .IsUnicode(false);

            modelBuilder.Entity<fqa>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<fqa>()
                .Property(e => e.info)
                .IsUnicode(false);

            modelBuilder.Entity<menu_locations>()
                .Property(e => e.langkey)
                .IsUnicode(false);

            modelBuilder.Entity<menu_locations>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<menu_locations>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<menu>()
                .Property(e => e.langkey)
                .IsUnicode(false);

            modelBuilder.Entity<menu>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<menu>()
                .Property(e => e.url)
                .IsUnicode(false);

            modelBuilder.Entity<migration>()
                .Property(e => e.migration1)
                .IsUnicode(false);

            modelBuilder.Entity<newslatter>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<page>()
                .Property(e => e.langkey)
                .IsUnicode(false);

            modelBuilder.Entity<page>()
                .Property(e => e.url)
                .IsUnicode(false);

            modelBuilder.Entity<page>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<page>()
                .Property(e => e.content)
                .IsUnicode(false);

            modelBuilder.Entity<page>()
                .Property(e => e.photo)
                .IsUnicode(false);

            modelBuilder.Entity<page>()
                .Property(e => e.meat_description)
                .IsUnicode(false);

            modelBuilder.Entity<page>()
                .Property(e => e.meat_keywords)
                .IsUnicode(false);

            modelBuilder.Entity<photo>()
                .Property(e => e.langkey)
                .IsUnicode(false);

            modelBuilder.Entity<photo>()
                .Property(e => e.photo1)
                .IsUnicode(false);

            modelBuilder.Entity<photos_videos_sections>()
                .Property(e => e.langkey)
                .IsUnicode(false);

            modelBuilder.Entity<photos_videos_sections>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<photos_videos_sections>()
                .Property(e => e.type)
                .IsUnicode(false);

            modelBuilder.Entity<place>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<place>()
                .Property(e => e.type)
                .IsUnicode(false);

            modelBuilder.Entity<place>()
                .Property(e => e.url)
                .IsUnicode(false);

            modelBuilder.Entity<rating>()
                .Property(e => e.time)
                .IsUnicode(false);

            modelBuilder.Entity<service>()
                .Property(e => e.langkey)
                .IsUnicode(false);

            modelBuilder.Entity<service>()
                .Property(e => e.url)
                .IsUnicode(false);

            modelBuilder.Entity<service>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<service>()
                .Property(e => e.content)
                .IsUnicode(false);

            modelBuilder.Entity<service>()
                .Property(e => e.photo)
                .IsUnicode(false);

            modelBuilder.Entity<service>()
                .Property(e => e.meat_description)
                .IsUnicode(false);

            modelBuilder.Entity<service>()
                .Property(e => e.meat_keywords)
                .IsUnicode(false);

            modelBuilder.Entity<site_lang>()
                .Property(e => e.code)
                .IsUnicode(false);

            modelBuilder.Entity<site_lang>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<site_lang>()
                .Property(e => e.dir)
                .IsUnicode(false);

            modelBuilder.Entity<site_lang>()
                .Property(e => e.photo)
                .IsUnicode(false);

            modelBuilder.Entity<site_lang>()
                .Property(e => e.is_main)
                .IsUnicode(false);

            modelBuilder.Entity<site_translation>()
                .Property(e => e.lang_code)
                .IsUnicode(false);

            modelBuilder.Entity<site_translation>()
                .Property(e => e.langkey)
                .IsUnicode(false);

            modelBuilder.Entity<site_translation>()
                .Property(e => e.text)
                .IsUnicode(false);

            modelBuilder.Entity<slider>()
                .Property(e => e.langkey)
                .IsUnicode(false);

            modelBuilder.Entity<slider>()
                .Property(e => e.text_1)
                .IsUnicode(false);

            modelBuilder.Entity<slider>()
                .Property(e => e.text_2)
                .IsUnicode(false);

            modelBuilder.Entity<slider>()
                .Property(e => e.text_3)
                .IsUnicode(false);

            modelBuilder.Entity<slider>()
                .Property(e => e.url)
                .IsUnicode(false);

            modelBuilder.Entity<slider>()
                .Property(e => e.photo)
                .IsUnicode(false);

            modelBuilder.Entity<slider>()
                .Property(e => e.stuts)
                .IsUnicode(false);

            modelBuilder.Entity<tag>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<tour_category>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<tour_category>()
                .Property(e => e.url)
                .IsUnicode(false);

            modelBuilder.Entity<tour_category>()
                .Property(e => e.stuts)
                .IsUnicode(false);

            modelBuilder.Entity<tour_category>()
                .Property(e => e.photo)
                .IsUnicode(false);

            modelBuilder.Entity<tour_category>()
                .Property(e => e.content)
                .IsUnicode(false);

            modelBuilder.Entity<tour_category>()
                .Property(e => e.meat_description)
                .IsUnicode(false);

            modelBuilder.Entity<tour_category>()
                .Property(e => e.meat_keywords)
                .IsUnicode(false);

            modelBuilder.Entity<tour_dayes>()
                .Property(e => e.photo)
                .IsUnicode(false);

            modelBuilder.Entity<tour_dayes>()
                .Property(e => e.content)
                .IsUnicode(false);

            modelBuilder.Entity<tour_dayes>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<tour_dayes>()
                .Property(e => e.price_1)
                .IsUnicode(false);

            modelBuilder.Entity<tour_dayes>()
                .Property(e => e.price_2)
                .IsUnicode(false);

            modelBuilder.Entity<tour>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<tour>()
                .Property(e => e.main_price)
                .IsUnicode(false);

            modelBuilder.Entity<tour>()
                .Property(e => e.price)
                .IsUnicode(false);

            modelBuilder.Entity<tour>()
                .Property(e => e.duration)
                .IsUnicode(false);

            modelBuilder.Entity<tour>()
                .Property(e => e.url)
                .IsUnicode(false);

            modelBuilder.Entity<tour>()
                .Property(e => e.photo)
                .IsUnicode(false);

            modelBuilder.Entity<tour>()
                .Property(e => e.type)
                .IsUnicode(false);

            modelBuilder.Entity<tour>()
                .Property(e => e.content)
                .IsUnicode(false);

            modelBuilder.Entity<tour>()
                .Property(e => e.short_info)
                .IsUnicode(false);

            modelBuilder.Entity<tour>()
                .Property(e => e.meat_description)
                .IsUnicode(false);

            modelBuilder.Entity<tour>()
                .Property(e => e.meat_keywords)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.mobile)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.age)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.level)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.photo)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.provider)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.provider_id)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.access_token)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.password)
                .IsUnicode(false);

            modelBuilder.Entity<user>()
                .Property(e => e.remember_token)
                .IsUnicode(false);

            modelBuilder.Entity<admin_config>()
                .Property(e => e.key)
                .IsUnicode(false);

            modelBuilder.Entity<admin_config>()
                .Property(e => e.value)
                .IsUnicode(false);

            modelBuilder.Entity<password_resets>()
                .Property(e => e.email)
                .IsUnicode(false);

            modelBuilder.Entity<password_resets>()
                .Property(e => e.token)
                .IsUnicode(false);

            modelBuilder.Entity<site_config>()
                .Property(e => e.key)
                .IsUnicode(false);

            modelBuilder.Entity<site_config>()
                .Property(e => e.value)
                .IsUnicode(false);

            modelBuilder.Entity<user_rolls>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<user_rolls>()
                .Property(e => e.key)
                .IsUnicode(false);

            modelBuilder.Entity<video>()
                .Property(e => e.langkey)
                .IsUnicode(false);

            modelBuilder.Entity<video>()
                .Property(e => e.title)
                .IsUnicode(false);

            modelBuilder.Entity<video>()
                .Property(e => e.url)
                .IsUnicode(false);
        }
    }
}
