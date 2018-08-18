using DataAccessLayer.Entities;
using System.Data.Entity.ModelConfiguration;

namespace DataAccessLayer.Configurations
{
    class ratingConfigurations : EntityTypeConfiguration<rating>
    {
        public ratingConfigurations()
        {
            this.ToTable("rating");

            this.HasKey(x => x.id);

            this.Property(t => t.date).HasColumnType("date");
            this.Property(t => t.time).HasMaxLength(15);
        }
    }
}
