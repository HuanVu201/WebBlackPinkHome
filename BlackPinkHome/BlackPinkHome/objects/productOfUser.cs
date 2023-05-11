using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;

namespace BlackPinkHome.objects
{
    public class productOfUser
    {
        public string id { get; set; }

        public objects.productStore product { get; set; }

        public string phone { get; set; }

        public string size { get; set; }

        public int quantity { get; set; }

        public productOfUser() { }

        public productOfUser(string id, productStore product, string phone, string size, int quantity) 
        {
            this.id = id;   
            this.product = product;
            this.phone = phone;
            this.size = size;
            this.quantity = quantity;
        }

    }
}