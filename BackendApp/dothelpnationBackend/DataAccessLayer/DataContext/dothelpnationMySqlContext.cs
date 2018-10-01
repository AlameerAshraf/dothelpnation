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

        public virtual DbSet<device_tokens> device_tokens { get; set; }
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
            modelBuilder.Entity<device_tokens>()
                .Property(e => e.device_token)
                .IsUnicode(false);


            modelBuilder.Entity<ad_photos>()
                .Property(e => e.photo)
                .IsUnicode(true);

            modelBuilder.Entity<admin_lang>()
                .Property(e => e.code)
                .IsUnicode(true);

            modelBuilder.Entity<admin_lang>()
                .Property(e => e.name)
                .IsUnicode(true);

            modelBuilder.Entity<admin_lang>()
                .Property(e => e.dir)
                .IsUnicode(true);

            modelBuilder.Entity<admin_lang>()
                .Property(e => e.photo)
                .IsUnicode(true);

            modelBuilder.Entity<admin_lang>()
                .Property(e => e.is_main)
                .IsUnicode(true);

            modelBuilder.Entity<admin_translation>()
                .Property(e => e.lang_code)
                .IsUnicode(true);

            modelBuilder.Entity<admin_translation>()
                .Property(e => e.langkey)
                .IsUnicode(true);

            modelBuilder.Entity<admin_translation>()
                .Property(e => e.text)
                .IsUnicode(true);

            modelBuilder.Entity<ads_messages>()
                .Property(e => e.type)
                .IsUnicode(true);

            modelBuilder.Entity<ads_messages>()
                .Property(e => e.title)
                .IsUnicode(true);

            modelBuilder.Entity<ads_messages>()
                .Property(e => e.info)
                .IsUnicode(true);

            modelBuilder.Entity<ads_messages>()
                .Property(e => e.time)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.langkey)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.title)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.url)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.address)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.map_address)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.map_radius)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.map_latitude)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.map_longitude)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.photo)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.bloodtype)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.content)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.short_desc)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.type)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.meat_description)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.meat_keywords)
                .IsUnicode(true);

            modelBuilder.Entity<blog>()
                .Property(e => e.time)
                .IsUnicode(true);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.langkey)
                .IsUnicode(true);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.title)
                .IsUnicode(true);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.url)
                .IsUnicode(true);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.stuts)
                .IsUnicode(true);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.photo)
                .IsUnicode(true);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.content)
                .IsUnicode(true);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.meat_description)
                .IsUnicode(true);

            modelBuilder.Entity<blog_sections>()
                .Property(e => e.meat_keywords)
                .IsUnicode(true);

            modelBuilder.Entity<comment>()
                .Property(e => e.type)
                .IsUnicode(true);

            modelBuilder.Entity<comment>()
                .Property(e => e.name)
                .IsUnicode(true);

            modelBuilder.Entity<comment>()
                .Property(e => e.email)
                .IsUnicode(true);

            modelBuilder.Entity<comment>()
                .Property(e => e.phone)
                .IsUnicode(true);

            modelBuilder.Entity<comment>()
                .Property(e => e.comment1)
                .IsUnicode(true);

            modelBuilder.Entity<comment>()
                .Property(e => e.time)
                .IsUnicode(true);

            modelBuilder.Entity<destination>()
                .Property(e => e.title)
                .IsUnicode(true);

            modelBuilder.Entity<destination>()
                .Property(e => e.url)
                .IsUnicode(true);

            modelBuilder.Entity<destination>()
                .Property(e => e.photo)
                .IsUnicode(true);

            modelBuilder.Entity<destination>()
                .Property(e => e.content)
                .IsUnicode(true);

            modelBuilder.Entity<destination>()
                .Property(e => e.short_desc)
                .IsUnicode(true);

            modelBuilder.Entity<destination>()
                .Property(e => e.meat_description)
                .IsUnicode(true);

            modelBuilder.Entity<destination>()
                .Property(e => e.meat_keywords)
                .IsUnicode(true);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.name)
                .IsUnicode(true);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.email)
                .IsUnicode(true);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.phone)
                .IsUnicode(true);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.subject)
                .IsUnicode(true);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.message)
                .IsUnicode(true);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.attach)
                .IsUnicode(true);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.time)
                .IsUnicode(true);

            modelBuilder.Entity<email_contact>()
                .Property(e => e.stuts)
                .IsUnicode(true);

            modelBuilder.Entity<fqa>()
                .Property(e => e.type)
                .IsUnicode(true);

            modelBuilder.Entity<fqa>()
                .Property(e => e.langkey)
                .IsUnicode(true);

            modelBuilder.Entity<fqa>()
                .Property(e => e.name)
                .IsUnicode(true);

            modelBuilder.Entity<fqa>()
                .Property(e => e.info)
                .IsUnicode(true);

            modelBuilder.Entity<menu_locations>()
                .Property(e => e.langkey)
                .IsUnicode(true);

            modelBuilder.Entity<menu_locations>()
                .Property(e => e.code)
                .IsUnicode(true);

            modelBuilder.Entity<menu_locations>()
                .Property(e => e.title)
                .IsUnicode(true);

            modelBuilder.Entity<menu>()
                .Property(e => e.langkey)
                .IsUnicode(true);

            modelBuilder.Entity<menu>()
                .Property(e => e.title)
                .IsUnicode(true);

            modelBuilder.Entity<menu>()
                .Property(e => e.url)
                .IsUnicode(true);

            modelBuilder.Entity<migration>()
                .Property(e => e.migration1)
                .IsUnicode(true);

            modelBuilder.Entity<newslatter>()
                .Property(e => e.email)
                .IsUnicode(true);

            modelBuilder.Entity<page>()
                .Property(e => e.langkey)
                .IsUnicode(true);

            modelBuilder.Entity<page>()
                .Property(e => e.url)
                .IsUnicode(true);

            modelBuilder.Entity<page>()
                .Property(e => e.title)
                .IsUnicode(true);

            modelBuilder.Entity<page>()
                .Property(e => e.content)
                .IsUnicode(true);

            modelBuilder.Entity<page>()
                .Property(e => e.photo)
                .IsUnicode(true);

            modelBuilder.Entity<page>()
                .Property(e => e.meat_description)
                .IsUnicode(true);

            modelBuilder.Entity<page>()
                .Property(e => e.meat_keywords)
                .IsUnicode(true);

            modelBuilder.Entity<photo>()
                .Property(e => e.langkey)
                .IsUnicode(true);

            modelBuilder.Entity<photo>()
                .Property(e => e.photo1)
                .IsUnicode(true);

            modelBuilder.Entity<photos_videos_sections>()
                .Property(e => e.langkey)
                .IsUnicode(true);

            modelBuilder.Entity<photos_videos_sections>()
                .Property(e => e.title)
                .IsUnicode(true);

            modelBuilder.Entity<photos_videos_sections>()
                .Property(e => e.type)
                .IsUnicode(true);

            modelBuilder.Entity<place>()
                .Property(e => e.name)
                .IsUnicode(true);

            modelBuilder.Entity<place>()
                .Property(e => e.type)
                .IsUnicode(true);

            modelBuilder.Entity<place>()
                .Property(e => e.url)
                .IsUnicode(true);

            modelBuilder.Entity<rating>()
                .Property(e => e.time)
                .IsUnicode(true);

            modelBuilder.Entity<service>()
                .Property(e => e.langkey)
                .IsUnicode(true);

            modelBuilder.Entity<service>()
                .Property(e => e.url)
                .IsUnicode(true);

            modelBuilder.Entity<service>()
                .Property(e => e.title)
                .IsUnicode(true);

            modelBuilder.Entity<service>()
                .Property(e => e.content)
                .IsUnicode(true);

            modelBuilder.Entity<service>()
                .Property(e => e.photo)
                .IsUnicode(true);

            modelBuilder.Entity<service>()
                .Property(e => e.meat_description)
                .IsUnicode(true);

            modelBuilder.Entity<service>()
                .Property(e => e.meat_keywords)
                .IsUnicode(true);

            modelBuilder.Entity<site_lang>()
                .Property(e => e.code)
                .IsUnicode(true);

            modelBuilder.Entity<site_lang>()
                .Property(e => e.name)
                .IsUnicode(true);

            modelBuilder.Entity<site_lang>()
                .Property(e => e.dir)
                .IsUnicode(true);

            modelBuilder.Entity<site_lang>()
                .Property(e => e.photo)
                .IsUnicode(true);

            modelBuilder.Entity<site_lang>()
                .Property(e => e.is_main)
                .IsUnicode(true);

            modelBuilder.Entity<site_translation>()
                .Property(e => e.lang_code)
                .IsUnicode(true);

            modelBuilder.Entity<site_translation>()
                .Property(e => e.langkey)
                .IsUnicode(true);

            modelBuilder.Entity<site_translation>()
                .Property(e => e.text)
                .IsUnicode(true);

            modelBuilder.Entity<slider>()
                .Property(e => e.langkey)
                .IsUnicode(true);

            modelBuilder.Entity<slider>()
                .Property(e => e.text_1)
                .IsUnicode(true);

            modelBuilder.Entity<slider>()
                .Property(e => e.text_2)
                .IsUnicode(true);

            modelBuilder.Entity<slider>()
                .Property(e => e.text_3)
                .IsUnicode(true);

            modelBuilder.Entity<slider>()
                .Property(e => e.url)
                .IsUnicode(true);

            modelBuilder.Entity<slider>()
                .Property(e => e.photo)
                .IsUnicode(true);

            modelBuilder.Entity<slider>()
                .Property(e => e.stuts)
                .IsUnicode(true);

            modelBuilder.Entity<tag>()
                .Property(e => e.title)
                .IsUnicode(true);

            modelBuilder.Entity<tour_category>()
                .Property(e => e.title)
                .IsUnicode(true);

            modelBuilder.Entity<tour_category>()
                .Property(e => e.url)
                .IsUnicode(true);

            modelBuilder.Entity<tour_category>()
                .Property(e => e.stuts)
                .IsUnicode(true);

            modelBuilder.Entity<tour_category>()
                .Property(e => e.photo)
                .IsUnicode(true);

            modelBuilder.Entity<tour_category>()
                .Property(e => e.content)
                .IsUnicode(true);

            modelBuilder.Entity<tour_category>()
                .Property(e => e.meat_description)
                .IsUnicode(true);

            modelBuilder.Entity<tour_category>()
                .Property(e => e.meat_keywords)
                .IsUnicode(true);

            modelBuilder.Entity<tour_dayes>()
                .Property(e => e.photo)
                .IsUnicode(true);

            modelBuilder.Entity<tour_dayes>()
                .Property(e => e.content)
                .IsUnicode(true);

            modelBuilder.Entity<tour_dayes>()
                .Property(e => e.title)
                .IsUnicode(true);

            modelBuilder.Entity<tour_dayes>()
                .Property(e => e.price_1)
                .IsUnicode(true);

            modelBuilder.Entity<tour_dayes>()
                .Property(e => e.price_2)
                .IsUnicode(true);

            modelBuilder.Entity<tour>()
                .Property(e => e.title)
                .IsUnicode(true);

            modelBuilder.Entity<tour>()
                .Property(e => e.main_price)
                .IsUnicode(true);

            modelBuilder.Entity<tour>()
                .Property(e => e.price)
                .IsUnicode(true);

            modelBuilder.Entity<tour>()
                .Property(e => e.duration)
                .IsUnicode(true);

            modelBuilder.Entity<tour>()
                .Property(e => e.url)
                .IsUnicode(true);

            modelBuilder.Entity<tour>()
                .Property(e => e.photo)
                .IsUnicode(true);

            modelBuilder.Entity<tour>()
                .Property(e => e.type)
                .IsUnicode(true);

            modelBuilder.Entity<tour>()
                .Property(e => e.content)
                .IsUnicode(true);

            modelBuilder.Entity<tour>()
                .Property(e => e.short_info)
                .IsUnicode(true);

            modelBuilder.Entity<tour>()
                .Property(e => e.meat_description)
                .IsUnicode(true);

            modelBuilder.Entity<tour>()
                .Property(e => e.meat_keywords)
                .IsUnicode(true);

            modelBuilder.Entity<user>()
                .Property(e => e.name)
                .IsUnicode(true);

            modelBuilder.Entity<user>()
                .Property(e => e.mobile)
                .IsUnicode(true);

            modelBuilder.Entity<user>()
                .Property(e => e.age)
                .IsUnicode(true);

            modelBuilder.Entity<user>()
                .Property(e => e.email)
                .IsUnicode(true);

            modelBuilder.Entity<user>()
                .Property(e => e.level)
                .IsUnicode(true);

            modelBuilder.Entity<user>()
                .Property(e => e.photo)
                .IsUnicode(true);

            modelBuilder.Entity<user>()
                .Property(e => e.provider)
                .IsUnicode(true);

            modelBuilder.Entity<user>()
                .Property(e => e.provider_id)
                .IsUnicode(true);

            modelBuilder.Entity<user>()
                .Property(e => e.access_token)
                .IsUnicode(true);

            modelBuilder.Entity<user>()
                .Property(e => e.password)
                .IsUnicode(true);

            modelBuilder.Entity<user>()
                .Property(e => e.remember_token)
                .IsUnicode(true);

            modelBuilder.Entity<admin_config>()
                .Property(e => e.key)
                .IsUnicode(true);

            modelBuilder.Entity<admin_config>()
                .Property(e => e.value)
                .IsUnicode(true);

            modelBuilder.Entity<password_resets>()
                .Property(e => e.email)
                .IsUnicode(true);

            modelBuilder.Entity<password_resets>()
                .Property(e => e.token)
                .IsUnicode(true);

            modelBuilder.Entity<site_config>()
                .Property(e => e.key)
                .IsUnicode(true);

            modelBuilder.Entity<site_config>()
                .Property(e => e.value)
                .IsUnicode(true);

            modelBuilder.Entity<user_rolls>()
                .Property(e => e.name)
                .IsUnicode(true);

            modelBuilder.Entity<user_rolls>()
                .Property(e => e.key)
                .IsUnicode(true);

            modelBuilder.Entity<video>()
                .Property(e => e.langkey)
                .IsUnicode(true);

            modelBuilder.Entity<video>()
                .Property(e => e.title)
                .IsUnicode(true);

            modelBuilder.Entity<video>()
                .Property(e => e.url)
                .IsUnicode(true);
        }
    }
}
