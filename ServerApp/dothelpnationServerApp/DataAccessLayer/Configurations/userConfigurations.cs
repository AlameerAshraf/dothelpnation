using System.Data.Entity.ModelConfiguration;
using DataAccessLayer.Entities;


namespace DataAccessLayer.Configurations
{
    class userConfigurations : EntityTypeConfiguration<user>
    {
        public userConfigurations()
        {
            this.ToTable("users");

            this.HasKey(x => x.id);

            this.Property(t => t.name).HasMaxLength(255);
            this.Property(t => t.mobile).HasMaxLength(255);
            this.Property(t => t.age).HasMaxLength(155);
            this.Property(t => t.email).HasMaxLength(255);
            this.Property(t => t.level).HasMaxLength(255);
            this.Property(t => t.photo).HasMaxLength(255);
            this.Property(t => t.provider).HasMaxLength(255);
            this.Property(t => t.provider_id).HasMaxLength(255);
            this.Property(t => t.access_token).HasMaxLength(255);
            this.Property(t => t.password).HasMaxLength(255);
            this.Property(t => t.remember_token).HasMaxLength(100);
            this.Property(t => t.remember_token).HasMaxLength(100);
            this.Property(t => t.created_at).HasColumnType("datetime2");
            this.Property(t => t.updated_at).HasColumnType("datetime2");


            
            this.Property(e => e.created_at)
                .HasPrecision(0);

            this.Property(e => e.updated_at)
                .HasPrecision(0);

            this.HasMany(e => e.sentMessages)
                .WithOptional(e => e.sender)
                .HasForeignKey(e => e.from_user_id);

            this.HasMany(e => e.receivedMessages)
                .WithOptional(e => e.receiver)
                .HasForeignKey(e => e.to_user_id);

            this.HasMany(e => e.blogs)
                .WithOptional(e => e.user)
                .HasForeignKey(e => e.user_id);

            this.HasMany(e => e.comments)
                .WithOptional(e => e.user)
                .HasForeignKey(e => e.user_id);

            this.HasMany(e => e.ratings)
                .WithOptional(e => e.user)
                .HasForeignKey(e => e.user_id);
        }
    }
}
