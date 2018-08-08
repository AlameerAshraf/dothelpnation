namespace Domain.NewFolder1
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class blog_sections
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public blog_sections()
        {
            blogs = new HashSet<blog>();
        }

        public int id { get; set; }

        [StringLength(255)]
        public string langkey { get; set; }

        [StringLength(255)]
        public string title { get; set; }

        public string url { get; set; }

        [StringLength(20)]
        public string stuts { get; set; }

        [StringLength(255)]
        public string photo { get; set; }

        public string content { get; set; }

        public string meat_description { get; set; }

        public string meat_keywords { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<blog> blogs { get; set; }
    }
}
