using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlackPinkHome
{
    public partial class removeProduct : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            List<objects.productOfUser> cart = (List<objects.productOfUser>)Application["listProductOfUser"];
            string idCart = Request.QueryString["idRemove"];


            foreach (objects.productOfUser i in cart.ToList())
            {
                if (idCart == i.id)
                {
                    cart.Remove(i);
                }
            }

            Application["listProductOfUser"] = cart;
            Response.Redirect("cart.aspx");

        }
    }
}