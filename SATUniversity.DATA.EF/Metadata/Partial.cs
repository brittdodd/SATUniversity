using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using static SATUniversity.DATA.EF.Models.Metadata;

namespace SATUniversity.DATA.EF.Models
{
    [ModelMetadataType(typeof(CourseMetadata))]
    public partial class Course { }

    [ModelMetadataType(typeof(ScheduledClassStatusMetadata))]
    public partial class ScheduledClassStatus { }

    [ModelMetadataType(typeof(ScheduledClassMetadata))]
    public partial class ScheduledClass { }

    [ModelMetadataType(typeof(EnrollmentMetadata))]
    public partial class Enrollment { }

    [ModelMetadataType(typeof(StudentStatusMetadata))]
    public partial class StudentStatus { }

    [ModelMetadataType(typeof(StudentMetadata))]
    public partial class Student
    {
        [NotMapped]
        public IFormFile? Image { get; set; }
        public string FullName { get { return $"{FirstName} {LastName}"; } }
    }


}
