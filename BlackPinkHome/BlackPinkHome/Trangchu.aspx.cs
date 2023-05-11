using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlackPinkHome
{
    public partial class Trangchu : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<objects.productHome> productHomes = (List<objects.productHome>)Application["listProductHome"];
            string html = "";
            foreach(objects.productHome obj in productHomes)
            {
                html +=
                    " <div class='shopStore__item " + obj.description + "'> "
                     + "<img class='shopStore__item--img' src='" + obj.image + "' alt='shopStore_item'>"
                     + "<div class='shopStore__item-content'> "
                            + "<span class='shopStore__item--name'>" + obj.name + "</span>"
                            + "<div class='shopStore__item--detail'>"
                                + "<span class='shopStore__item--price'>$" + obj.price +".00</span>"
                                + "<a href='Store.aspx' class='shopStore__item--link'>SHOP</a>"
                            + "</div>"
                        + "</div>"
                  + "</div>";


            }
            listProductHomes.InnerHtml = html;
        
        }
    }
}