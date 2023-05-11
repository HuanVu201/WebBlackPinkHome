using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlackPinkHome
{
    public partial class Cart : System.Web.UI.Page
    {   
        List<objects.productOfUser> cart;
        string phone;
        protected void Page_Load(object sender, EventArgs e)
        {
            cart = (List<objects.productOfUser>)Application["listProductOfUser"];

            if ((string)Session["userName"] != null)
            {
                var str =
                    "<a>"
                        + "<span>" + (string)Session["userName"] + "</span>"
                        + "<a href = 'signout.aspx' ><i class='fa-solid fa-arrow-right-from-bracket' style='font-size: 1.5rem;'></i></a>"
                    + "</a>";
                log.InnerHtml = str;

                Session["quantityOfCart"] = cart.Count;
                quantityOfCart.InnerHtml = Session["quantityOfCart"].ToString();


                phone = (string)Session["phone"];
                string html = "";
                float subTotal = 0;

                html +=
                    "<div class='product__title'>"
                        + "<span class='product__title--name'>Product</span>"
                        + "<span class='product__title--size'>Size</span>"
                        + "<span class='product__title--price'>Price</span>"
                        + "<span class='product__title--quantity'>Quantity</span>"
                        + "<span class='product__title--total'>Total</span>"
                    + "</div>";

                for (int i = 0; i < cart.Count; i++)
                {
                    
                    if (cart[i].phone == phone)
                    {
                        
                        float total = cart[i].product.price * cart[i].quantity;
                        subTotal += total;
                        
                        html +=
                        "<div class='product' id='cartBlock' runat='server'>"
                            + "<div class='shoppingCart__detail image'>"
                                + "<img src = '" + cart[i].product.image + "' alt=''>"
                            + "</div>"
                            + "<div class='shoppingCart__detail name'>"
                                + "<span>" + cart[i].product.name + "</span>"
                            + "</div>"
                            + "<div class='shoppingCart__detail size'>"
                                + "<span>" + cart[i].size + "</span>"
                            + "</div>"
                            + "<div class='shoppingCart__detail price'>"
                                + "<span>$" + cart[i].product.price + ".00 </span>"
                            + "</div>"
                            + "<div class='shoppingCart__detail quantity'>"
                                + "<a href ='lessQuantity.aspx?idProduct=" + cart[i].id + "' class='changeQuantity changeQuantity__less'><i class='fa-solid fa-minus'></i></a>"
                                + "<input type = 'number' min='1' value='" + cart[i].quantity + "' disabled='disabled'/>"
                                + "<a href ='moreQuantity.aspx?idProduct=" + cart[i].id + "' class='changeQuantity changeQuantity__more'><i class='fa-solid fa-plus'></i></a>"
                            + "</div>"
                            + "<div class='shoppingCart__detail total'>"
                                + "<span>$" + total + ".00</span>"
                            + "</div>"
                            + "<div class='shoppingCart__detail remove'>"
                                + "<a href='removeProduct.aspx?idRemove=" + cart[i].id + "'><i class='fa-solid fa-xmark'></i></a>"
                            + "</div>"
                        + "</div>";
                    }
                }
                shoppingCart.InnerHtml = html;
                subTotalBox.InnerHtml = "$" + subTotal + ".00";

                
            }
            else
            {
                Response.Redirect("signin.aspx");
            }


        }   
    }
}