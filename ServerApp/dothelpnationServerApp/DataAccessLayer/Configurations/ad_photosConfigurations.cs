using System.Data.Entity.ModelConfiguration;
using DataAccessLayer.Entities;


namespace DataAccessLayer.Configurations
{
    class ad_photosConfigurations : EntityTypeConfiguration<ad_photos>
    {
        public ad_photosConfigurations()
        {
            this.ToTable("ad_photos");

            this.HasKey(x => x.id);

            this.Property(t => t.photo).HasMaxLength(500);

            //this.HasOptional(x => x.blog)
            //    .WithRequired(x => x.ad_photos);
        }
    }
}
