using DataAccessLayer.Entities;
using System;
using System.Collections.Generic;
using System.Data.Entity.ModelConfiguration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer.Configurations
{
    class ads_messagesConfigurations : EntityTypeConfiguration<ads_messages>
    {
        public ads_messagesConfigurations()
        {
            this.ToTable("ads_messages");

            this.Property(t => t.type).HasMaxLength(155);
            this.Property(t => t.time).HasMaxLength(255);
            this.Property(t => t.date).HasColumnName("date");



            this.HasRequired<blog>(x => x.blog)
                .WithMany(x => x.ads_messages)
                .HasForeignKey(x => x.ad_id);
        }
    }
}
