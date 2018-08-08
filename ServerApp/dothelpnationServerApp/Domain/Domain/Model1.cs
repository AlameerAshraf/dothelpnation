namespace Domain.NewFolder1
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=Model1")
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
            modelBuilder.Entity<blog>()
                .Property(e => e.url)
                .IsUnicode(false);

            modelBuilder.Entity<blog>()
                .HasOptional(e => e.ad_photos)
                .WithRequired(e => e.blog);

            modelBuilder.Entity<blog>()
                .HasMany(e => e.ads_messages)
                .WithOptional(e => e.blog)
                .HasForeignKey(e => e.ad_id);

            modelBuilder.Entity<blog>()
                .HasMany(e => e.comments)
                .WithOptional(e => e.blog)
                .HasForeignKey(e => e.ad_id);

            modelBuilder.Entity<blog>()
                .HasMany(e => e.ratings)
                .WithOptional(e => e.blog)
                .HasForeignKey(e => e.post_id);

            modelBuilder.Entity<blog_sections>()
                .HasMany(e => e.blogs)
                .WithOptional(e => e.blog_sections)
                .HasForeignKey(e => e.section_id);

            modelBuilder.Entity<user>()
                .Property(e => e.created_at)
                .HasPrecision(0);

            modelBuilder.Entity<user>()
                .Property(e => e.updated_at)
                .HasPrecision(0);

            modelBuilder.Entity<user>()
                .HasMany(e => e.ads_messages)
                .WithOptional(e => e.user)
                .HasForeignKey(e => e.from_user_id);

            modelBuilder.Entity<user>()
                .HasMany(e => e.ads_messages1)
                .WithOptional(e => e.user1)
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
