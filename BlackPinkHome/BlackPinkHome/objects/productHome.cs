using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BlackPinkHome.objects
{
	public class productHome
	{
		public string id { get; set; }
		
		public string image { get; set; }
	
		public string name { get; set; }
		public float price { get; set; }
		public string description { get; set; }

	
		public productHome() {
		
		}

		public productHome(string id, string image, string name, float price, string description) {
			this.id = id;
			this.image = image;
			this.name = name;
			this.price = price;
			this.description = description;
		}
	}


}