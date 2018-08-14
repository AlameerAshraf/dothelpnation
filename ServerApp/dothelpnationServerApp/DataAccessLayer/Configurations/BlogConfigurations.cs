using System.Data.Entity.ModelConfiguration;
using DataAccessLayer.Entities;

namespace DataAccessLayer.Configurations
{
    public class BlogConfigurations : EntityTypeConfiguration<blog>
    {
        public BlogConfigurations()
        {
            this.ToTable("blog");

            this.Property(t => t.langkey).HasMaxLength(255);
            this.Property(t => t.title).HasMaxLength(400);
            this.Property(t => t.address).HasMaxLength(300);
            this.Property(t => t.map_address).HasMaxLength(255);
            this.Property(t => t.map_radius).HasMaxLength(55);
            this.Property(t => t.map_latitude).HasMaxLength(100);
            this.Property(t => t.map_longitude).HasMaxLength(55);
            this.Property(t => t.photo).HasMaxLength(255);
            this.Property(t => t.bloodtype).HasMaxLength(255);
            this.Property(t => t.short_desc).HasMaxLength(500);
            this.Property(t => t.type).HasMaxLength(10);
            this.Property(t => t.meat_description).HasMaxLength(500);
            this.Property(t => t.publish_date).HasColumnType("date");
            this.Property(t => t.time).HasMaxLength(155);

            this.Property(e => e.url)
                .IsUnicode(false);

            this.HasOptional(e => e.ad_photos)
                .WithRequired(e => e.blog);

            this.HasMany(e => e.ads_messages)
                .WithOptional(e => e.blog)
                .HasForeignKey(e => e.ad_id);

            this.HasMany(e => e.comments)
                .WithOptional(e => e.blog)
                .HasForeignKey(e => e.ad_id);

            this.HasMany(e => e.ratings)
                .WithOptional(e => e.blog)
                .HasForeignKey(e => e.post_id);
        }
    }
}
