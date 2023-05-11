using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlackPinkHome.objects
{
    public class productStore
    {
        public string id { get; set; }

        public string image { get; set; }

        public string name { get; set; }
        public float price { get; set; }



        public productStore()
        {

        }

        public productStore(string id, string image, string name, float price)
        {
            this.id = id;
            this.image = image;
            this.name = name;
            this.price = price;
        }

    }
}