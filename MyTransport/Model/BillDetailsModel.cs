using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyTransport.Model
{
    public class BillDetailsModel
    {
        public int Id { get; set; }
        public string Name { get; set; }

        public string EmpEmailId { get; set; }
        public string EmpMobileNum { get; set; }
    }
}