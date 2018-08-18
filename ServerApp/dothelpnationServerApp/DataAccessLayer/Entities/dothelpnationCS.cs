namespace DataAccessLayer.Entities
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;
    using DataAccessLayer.Configurations;

    public partial class dothelpnationCS : DbContext
    {
        public dothelpnationCS()
            : base("name=dothelpnationCS")
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
        public virtual DbSet<newslatter> newslatters { get; set; }
        public virtual DbSet<photo> photos { get; set; }
        public virtual DbSet<site_lang> site_lang { get; set; }
        public virtual DbSet<site_translation> site_translation { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<tag> tags { get; set; }
        public virtual DbSet<tour_category> tour_category { get; set; }
        public virtual DbSet<tour_dayes> tour_dayes { get; set; }
        public virtual DbSet<tour> tours { get; set; }
        public virtual DbSet<user> users { get; set; }
        public virtual DbSet<admin_config> admin_config { get; set; }
        public virtual DbSet<password_resets> password_resets { get; set; }
        public virtual DbSet<rating> ratings { get; set; }
        public virtual DbSet<site_config> site_config { get; set; }
        public virtual DbSet<user_access_rolls> user_access_rolls { get; set; }
        public virtual DbSet<user_rolls> user_rolls { get; set; }
        public virtual DbSet<video> videos { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Configurations.Add(new blogConfigurations());
            modelBuilder.Configurations.Add(new ads_messagesConfigurations());
            modelBuilder.Configurations.Add(new ad_photosConfigurations());
            modelBuilder.Configurations.Add(new commentConfigurations());
            modelBuilder.Configurations.Add(new blog_sectionsConfigurations());
            modelBuilder.Configurations.Add(new ratingConfigurations());



            modelBuilder.Entity<user>()
                .Property(e => e.created_at)
                .HasPrecision(0);

            modelBuilder.Entity<user>()
                .Property(e => e.updated_at)
                .HasPrecision(0);

            modelBuilder.Entity<user>()
                .HasMany(e => e.ads_messages)
                .WithOptional(e => e.sender)
                .HasForeignKey(e => e.from_user_id);

            modelBuilder.Entity<user>()
                .HasMany(e => e.ads_messages1)
                .WithOptional(e => e.receiver)
                .HasForeignKey(e => e.to_user_id);

            modelBuilder.Entity<user>()
                .HasMany(e => e.blogs)
                .WithOptional(e => e.user)
                .HasForeignKey(e => e.user_id);

            modelBuilder.Entity<user>()
                .HasMany(e => e.comments)
                .WithOptional(e => e.user)
                .HasForeignKey(e => e.user_id);

            modelBuilder.Entity<user>()
                .HasMany(e => e.ratings)
                .WithOptional(e => e.user)
                .HasForeignKey(e => e.user_id);

            modelBuilder.Entity<password_resets>()
                .Property(e => e.created_at)
                .HasPrecision(0);

            modelBuilder.Entity<user_rolls>()
                .Property(e => e.name)
                .IsUnicode(false);

            modelBuilder.Entity<user_rolls>()
                .Property(e => e.key)
                .IsUnicode(false);
        }
    }
}
