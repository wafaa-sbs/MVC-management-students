using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace MVCManagStdnts.Models
{
    public class NewStudentclass
    {
        [Key]
        public int Id { get; set; }

        public string Fname { get; set; }

        public string Lname { get; set; }

        public string NIC { get; set; }

        public string Adress { get; set; }
    }
}
