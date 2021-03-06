//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace YSUIB.Models.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class Classroom
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Classroom()
        {
            this.Lessons = new HashSet<Lesson>();
        }
    
        public long Id { get; set; }
        public long NameT { get; set; }
        public long FacultyId { get; set; }
        public Nullable<long> PictureId { get; set; }
    
        public virtual Faculty Faculty { get; set; }
        public virtual Picture Picture { get; set; }
        public virtual Translation NameTranslation { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Lesson> Lessons { get; set; }
    }
}
