using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace BlackPinkHome
{
    public partial class signin : System.Web.UI.Page
    {
        List<objects.user> listUser;
        protected void Page_Load(object sender, EventArgs e)
        {
            listUser = (List<objects.user>)Application["listUser"];
        }

        protected void btnSignIn_onClick(object sender, EventArgs e)
        {
            string phone = Request.Form["phone"];
            string pass = Request.Form["pass"];
            string userName = "";

            if (IsPostBack)
            {
                foreach(objects.user user in listUser)
                {
                    if(user.phone == phone && user.password == pass)
                    {
                        userName = user.firstName+ " " + user.lastName;
                    }

                    if(userName != "")
                    {
                        Session["phone"] = phone;
                        Session["userName"] = userName;
                        Session["quantityOfCart"] = 0;
                        Response.Redirect("Store.aspx");
                    }
                    else
                    {
                        error.InnerHtml = "ERROR: Wrong phone number or password!";
                    }
                }
            }
        }
    }
}