using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlackPinkHome
{
    public partial class Store : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["userName"] != null)
            {
                
                var str =
                    "<a>"
                        + "<span>" + (string)Session["userName"] + "</span>"
                        + "<a href = 'signout.aspx' ><i class='fa-solid fa-arrow-right-from-bracket' style='font-size: 1.5rem;'></i></a>"
                    + "</a>";
                log.InnerHtml = str;

                quantityOfCart.InnerHtml = Session["quantityOfCart"].ToString();
            }
            else
            {
                var str =
                    "<a href = 'signin.aspx' >"
                        + "<span>Sign in</span>"
                    + "<a href = '' ><i class='fa-solid fa-caret-down'></i></a>"
                    + "</a>";
                log.InnerHtml = str;
            }

            List<objects.productStore> productStores = (List<objects.productStore>)Application["listProductStore"];
            
            string html = "";
            foreach (objects.productStore obj in productStores)
            {
                html +=
                    "<div class='shopStore__item'>"
                        + "<a href = 'detailProduct.aspx?IdProduct=" + obj.id +"' >"
                            + "<img class='shopStore__item--img' src='" + obj.image + "' alt='shopStore_item'>"
                            + "<div class='shopStore__item-content'>"
                                + "<span class='shopStore__item--name'>" + obj.name + "</span>"
                                + "<span class='shopStore__item--price'>$" + obj.price + ".00</span>"
                            + "</div>"
                        + "</a>"
                    + "</div>";


            }
            listProduct.InnerHtml = html;
        }
    }
}