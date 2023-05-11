using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlackPinkHome
{
    public partial class moreQuantity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<objects.productOfUser> cart = (List<objects.productOfUser>)Application["listProductOfUser"];

            string id = Request.QueryString["idProduct"];

            for (int i = 0; i < cart.Count; i++)
            {

                if (cart[i].id == id)
                {
                    cart[i].quantity += 1;
                    break;
                }
            }

            Application["listProductOfUser"] = cart;
            Response.Redirect("Cart.aspx");
        }
    }
}