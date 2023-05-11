using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace BlackPinkHome
{
    public class Global : System.Web.HttpApplication
    {



        protected void Application_Start(object sender, EventArgs e)
        {
            List<objects.productHome> listProductHome = new List<objects.productHome>();
            listProductHome.Add(new objects.productHome("1", "image/home-shopStore1.jpg", "BORN PINK STANDARD DIGIPACK – JISOO", 26, ""));
            listProductHome.Add(new objects.productHome("2", "image/home-shopStore2.jpg", "BORN PINK STANDARD DIGIPACK – JENNIE", 26, "shopStore__item--under"));
            listProductHome.Add(new objects.productHome("3", "image/home-shopStore3.jpg", "BORN PINK STANDARD DIGIPACK – ROSÉ", 26, ""));
            listProductHome.Add(new objects.productHome("4", "image/home-shopStore4.jpg", "BORN PINK STANDARD DIGIPACK – LISA", 26, "shopStore__item--under"));
            listProductHome.Add(new objects.productHome("5", "image/home-shopStore5.png", "BORN PINK EXCLUSIVE BOX SET – BLACK VERSION", 50,  ""));
            listProductHome.Add(new objects.productHome("6", "image/home-shopStore6.png", "TIE DYE FALL 2022 TOUR T-SHIRT", 55, "shopStore__item--under"));
            listProductHome.Add(new objects.productHome("7", "image/home-shopStore7.png", "BORN PINK TOUR LOGO CREWNECK", 70, ""));
            listProductHome.Add(new objects.productHome("8", "image/home-shopStore8.png", "PINK VENOM HOODIE", 75, "shopStore__item--under"));
            Application["listProductHome"] = listProductHome;



            List<objects.productStore> listProductStore = new List<objects.productStore>();
            listProductStore.Add(new objects.productStore("1", "image/sp1.jpg", "JISOO FIRST SINGLE ALBUM PHOTOBOOK (BLACK)", 30));
            listProductStore.Add(new objects.productStore("2", "image/sp2.jpg", "SHUT DOWN HAT", 30));
            listProductStore.Add(new objects.productStore("3", "image/sp3.jpg", "FLOWER TEXT CHARCOAL LONGSLEEVE", 50));
            listProductStore.Add(new objects.productStore("4", "image/sp4.jpg", "FLOWER HEART NATURAL LONGSLEEVE", 50));
            listProductStore.Add(new objects.productStore("5", "image/sp5.jpg", "ME SYMBOL HOODIE", 65));
            listProductStore.Add(new objects.productStore("6", "image/sp6.jpg", "SCENT OF A FLOWER LYRIC T-SHIRT", 40));
            listProductStore.Add(new objects.productStore("7", "image/sp7.jpg", "FLOWER HEART TOTE BAG", 40));
            listProductStore.Add(new objects.productStore("8", "image/sp8.jpg", "JISOO ME BUCKET HAT", 35));
            listProductStore.Add(new objects.productStore("9", "image/sp9.jpg", "FLOWER HEART KEYCHAIN", 25));
            listProductStore.Add(new objects.productStore("10", "image/sp10.jpg", "PINK VENOM GRID TEE PINK", 40));
            listProductStore.Add(new objects.productStore("11", "image/sp11.jpg", "FANGS HOODIE", 75));
            listProductStore.Add(new objects.productStore("12", "image/sp12.jpg", "SHUT DOWN CHARCOAL CREW", 75));
            listProductStore.Add(new objects.productStore("13", "image/sp13.jpg", "PINK VENOM ROSE LS TEE", 60));
            listProductStore.Add(new objects.productStore("14", "image/sp14.jpg", "PINK VENOM LISA LS TEE", 60));
            listProductStore.Add(new objects.productStore("15", "image/sp15.jpg", "PINK VENOM JISOO LS TEE", 60));
            listProductStore.Add(new objects.productStore("16", "image/sp16.jpg", "PINK VENOM JENNIE LS TEE", 60));
            listProductStore.Add(new objects.productStore("17", "image/sp17.jpg", "BORN PINK VINYL", 38));
            listProductStore.Add(new objects.productStore("18", "image/sp18.jpg", "TIE DYE FALL 2022 TOUR T-SHIRT", 55));
            listProductStore.Add(new objects.productStore("19", "image/sp19.jpg", "BORN PINK TOUR LOGO CREWNECK", 70));
            listProductStore.Add(new objects.productStore("20", "image/sp20.jpg", "BLACKPINK LIGHT STICK KEYRING", 24));
            listProductStore.Add(new objects.productStore("21", "image/sp21.jpg", "PINK VENOM HOODIE", 75));
            listProductStore.Add(new objects.productStore("22", "image/sp22.jpg", "PHOTO BOX FALL 2022 TOUR T-SHIRT", 45));
            listProductStore.Add(new objects.productStore("23", "image/sp23.jpg", "BORN PINK PHOTO GRID HOODIE", 80));
            listProductStore.Add(new objects.productStore("24", "image/sp24.jpg", "BORN PINK TRADING CARDS", 20));
            Application["listProductStore"] = listProductStore;




            List<objects.user> listUser = new List<objects.user>();
            listUser.Add(new objects.user("Huấn", "Vũ", "0354405437", "vuhuan414@gmail.com", "123456"));
            Application["listUser"] = listUser;





            List<objects.productOfUser> cart = new List<objects.productOfUser>();
            Application["listProductOfUser"] = cart;




            //Thi:
            //Câu hỏi 1: Làm reponsive, đưa navbar thành column
            //Câu hỏi 2: Tạo form thêm sản phẩm mới vào danh sách
            //Câu hỏi 3: Javascript - kiểm tra tính hợp lệ của dữ liệu thêm vào form
            //Bonus: Tạo ô tìm kiếm để tìm kiếm sản phẩm


            //Application["counter"] = 0;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            //Session.Timeout = 1;
            //if (Application["counter"] != null)
            //{
            //    //tránh nhiều người dùng truy cập vào 1 lúc
            //    Application.Lock();
            //    int i = Convert.ToInt32(Application["counter"]);
            //    Application["counter"] = ++i;
            //    Application.UnLock();
            //}
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            //if (Application["counter"] != null)
            //{
            //    Application.Lock();
            //    int i = Convert.ToInt32(Application["counter"]);
            //    Application["counter"] = --i;
            //    Application.UnLock();
            //}
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}