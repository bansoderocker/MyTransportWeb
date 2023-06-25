using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyTransport.Model
{
    public class Post
    {
        public int UserId { get; set; }
        public string Body { get; set; }
        public string Title { get; set; }
    }
}