using System.Data.Entity.ModelConfiguration;
using DataAccessLayer.Entities;

namespace DataAccessLayer.Configurations
{
    class commentConfigurations : EntityTypeConfiguration<comment>
    {
        public commentConfigurations()
        {
            this.ToTable("comment");

            this.Property(t => t.type).HasMaxLength(155);
            this.Property(t => t.name).HasMaxLength(255);
            this.Property(t => t.email).HasMaxLength(255);
            this.Property(t => t.phone).HasMaxLength(50);
            this.Property(t => t.date).HasColumnType("date");
            this.Property(t => t.time).HasMaxLength(155);
            this.Property(t => t.time).HasMaxLength(155);


            this.HasRequired<blog>(x => x.blog)
                .WithMany(x => x.comments)
                .HasForeignKey(x => x.ad_id);
        }
    }
}
