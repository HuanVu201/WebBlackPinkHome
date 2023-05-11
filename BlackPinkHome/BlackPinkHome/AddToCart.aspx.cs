using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlackPinkHome
{
    public partial class AddToCart : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((string)Session["userName"] != null)
            {
                string phone = (string)Session["phone"];

                List<objects.productOfUser> cart = (List<objects.productOfUser>)Application["listProductOfUser"];
                List<objects.productStore> listProduct = (List<objects.productStore>)Application["listProductStore"];

                string idProduct = Request.Form["idProduct"];
                string sizeProduct = Request.Form["sizeProduct"];
                int quantityProduct = Int32.Parse(Request.Form["quantity"]);

                //Code lỗi: Else thất bại
                //for (int i = 0; i < cart.Count; i++)
                //{
                //    if (idProduct == cart[i].product.id && sizeProduct == cart[i].size)
                //    {
                //        cart[i].quantity += quantityProduct;
                //        break;
                //    }
                //    else
                //    {
                //        foreach (objects.productStore product in listProduct)
                //        {
                //            if (idProduct == product.id)
                //            {
                //                cart.Add(new objects.productOfUser(cart.Count.ToString(), product, phone, sizeProduct, quantityProduct));
                //                break;
                //            }
                //        }
                //    }
                //}


                
                bool check = false;

                for (int i = 0; i < cart.Count; i++)
                {
                    if (idProduct == cart[i].product.id && sizeProduct == cart[i].size)
                    {
                        cart[i].quantity += quantityProduct;
                        check = true;
                        break;
                    }
                }

                if (check == false) 
                {
                    foreach (objects.productStore product in listProduct)
                    {
                        if (idProduct == product.id)
                        {
                            cart.Add(new objects.productOfUser(cart.Count.ToString(), product, phone, sizeProduct, quantityProduct));
                            break;
                        }
                    }
                }


                Application["listProductOfUser"] = cart;
                Response.Redirect("Cart.aspx");
            }
            else
            {
                Response.Redirect("signin.aspx");
            }
        }
    }
}