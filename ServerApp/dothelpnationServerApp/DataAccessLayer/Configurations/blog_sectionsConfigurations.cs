using DataAccessLayer.Entities;
using System.Data.Entity.ModelConfiguration;


namespace DataAccessLayer.Configurations
{
    class blog_sectionsConfigurations : EntityTypeConfiguration<blog_sections>
    {
        public blog_sectionsConfigurations()
        {
            this.ToTable("blog_sections");

            this.HasKey(x => x.id);

            this.Property(t => t.langkey).HasMaxLength(255);
            this.Property(t => t.title).HasMaxLength(255);
            this.Property(t => t.stuts).HasMaxLength(20);
            this.Property(t => t.photo).HasMaxLength(255);
            this.Property(t => t.photo).HasMaxLength(255);

            this.HasMany(e => e.blogs)
                .WithOptional(e => e.blog_sections)
                .HasForeignKey(e => e.section_id);

        }
    }
}
