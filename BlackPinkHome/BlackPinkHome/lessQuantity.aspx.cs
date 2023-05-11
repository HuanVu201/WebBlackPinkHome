using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlackPinkHome
{
    public partial class lessQuantity : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<objects.productOfUser> cart = (List<objects.productOfUser>)Application["listProductOfUser"];

            string id = Request.QueryString["idProduct"];

            for (int i = 0; i < cart.Count; i++)
            {

                if (cart[i].id == id)
                {
                    if (cart[i].quantity > 1)
                    {
                        cart[i].quantity -= 1;
                        break;
                    }
                }
            }

            Application["listProductOfUser"] = cart;
            Response.Redirect("Cart.aspx");
        }
    }
}