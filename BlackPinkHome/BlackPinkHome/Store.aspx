<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="BlackPinkHome.Store" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="image/avataFB.jpg" type="image/x-icon"> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="CSS/base.css">
    <link rel="stylesheet" href="CSS/store.css">
    <link rel="stylesheet" href="CSS/navbar.css">
    <link rel="stylesheet" href="CSS/footer.css">
    
    <title>BLACKPINK | SHOP</title>
</head>
<body>
    <div class="narbar">
        <div class="narbar__content">
            <%--<div class="navbar__logo">
                <a href="Trangchu.aspx" target="_blank" class="navbar__logo--link">
                    <img src="image/LogoBP-transparent.png" alt="">
                </a>
            </div>--%>

            <!-- Làm Mobile: start -->
            <label for="navbar__mobile--input" class="navbar__mobile--bars">
                <i class="fa-solid fa-bars"></i>
            </label>

            <input type="checkbox" name="" class="navbar__mobile--input" id="navbar__mobile--input">
            
            <label for="navbar__mobile--input" class="navbar__mobile--overlay"></label>

            <div class="narbar__options--mobile">
                <div class="taskBar">
                    <div class="narbar__options--item">
                        <a href="" class="options__title">
                            <span >APPAREL</span>
                        </a>
                    </div>
                    <div class="narbar__options--item">
                        <a href="" class="options__title">
                            <span>MUSIC</span>
                        </a>
                    </div>
                    <div class="narbar__options--item">
                        <a href="" class="options__title">
                            <span>COLLECTIONS</span>
                        </a>
                    </div>
                    <div class="narbar__options--item">
                        <a href="" class="options__title">
                            <span >ACCESSORIES</span>
                        </a>
                    </div>
                    <div class="narbar__options--item">
                        <a href="" class="options__title">
                            <span >BORN PINK TOUR</span>
                        </a>
                    </div>
                </div>
                <label for="navbar__mobile--input" class="cancel">
                    <i class="fa-solid fa-xmark"></i>
                </label>
            </div>
            <!-- Làm Mobile: end -->


            <div class="narbar__options">
                <div class="narbar__options--item">
                    <a href="" class="options__title">
                        <span >APPAREL</span>
                        <i class="fa-solid fa-chevron-down"></i>
                    </a>
                    <ul class="list">
                        <li><a class="listOption" href="">ALL</a></li>
                        <li><a class="listOption" href="">TOPS</a></li>
                        <li><a class="listOption" href="">BOTTOMS</a></li>
                    </ul>
                </div>
                <div class="narbar__options--item">
                    <a href="" class="options__title">
                        <span>MUSIC</span>
                        <i class="fa-solid fa-chevron-down"></i>
                    </a>
                    <ul class="list">
                        <li><a class="listOption" href="">ALL</a></li>
                        <li><a class="listOption" href="">VINYL</a></li>
                        <li><a class="listOption" href="">CD</a></li>
                        <li><a class="listOption" href="">BOX SETS</a></li>
                    </ul>
                </div>
                <div class="narbar__options--item">
                    <a href="" class="options__title">
                        <span>COLLECTIONS</span>
                        <i class="fa-solid fa-chevron-down"></i>
                    </a>
                    <ul class="list">
                        <li><a class="listOption" href="">JISOO</a></li>
                        <li><a class="listOption" href="">BORN PINK</a></li>
                        <li><a class="listOption" href="">PINK VENOM</a></li>
                        <li><a class="listOption" href="">THE ALBUM</a></li>
                        <li><a class="listOption" href="">LISA</a></li>
                        <li><a class="listOption" href="">SHUTDOWN</a></li>
                    </ul>
                </div>
                <div class="narbar__options--item">
                    <a href="" class="options__title">
                        <span >ACCESSORIES</span>
                    </a>
                </div>
                <div class="narbar__options--item">
                    <a href="" class="options__title">
                        <span >BORN PINK TOUR</span>
                    </a>
                </div>
            </div>

            <div class="narbar__extra">
                <div class="log" id="log" runat="server">
                    <%--<a href="signin.aspx" class="">
                        <span >Sign in</span>
                        <a href=""><i class="fa-solid fa-caret-down"></i></a>
                    </a>--%>
                </div>
                <div class="iconCart">
                    <a href="Cart.aspx">
                        <i class="cartIcon fa-solid fa-cart-shopping"></i>
                        <span id="quantityOfCart" runat="server">0</span>
                    </a>
                </div>
            </div>
        </div>
    </div>

    <div class="header">
        <img class="background--honn" src="image/background.jpg" alt="">
        <img class="background--bornPink" src="image/bornPink_png.png" alt="">
    </div>

    <div class="container">
        <div class="productBlock" id="listProduct" runat="server">
            <%--<div class="shopStore__item">
                <a href="./detailProduct.html">
                    <img class="shopStore__item--img" src="image/sp1.jpg" alt="shopStore_item">
                    <div class="shopStore__item-content">
                        <span class="shopStore__item--name">JISOO FIRST SINGLE ALBUM PHOTOBOOK (BLACK)</span>
                        <span class="shopStore__item--price">$30.00</span>
                    </div>
                </a>
                <a href="" class="removeProduct"><i class="fa-solid fa-xmark"></i></a>
            </div>--%>
        </div>
        <%--<div class="addProduct">
            <a href="">
                <i class="fa-solid fa-plus"></i>
                <span>Thêm sản phẩm</span>
            </a>
        </div>--%>
    </div>

    <div class="footer">
        <div class="shopButtons">
            <div class="button">
                <span class="text1">SHOP</span>
                <span class="text2">MUSIC</span>
            </div>
            <div class="button">
                <span class="text1">SHOP</span>
                <span class="text2">MERCH</span>
            </div>
        </div>
        <div class="footer__contact">
            <div class="social">
                <div class="social-icon"><a href="" ><i class="fa-brands fa-facebook"></i></a></div>
                <div class="social-icon"><a href="" ><i class="fa-brands fa-twitter"></i></a></div>
                <div class="social-icon"><a href="" ><i class="fa-brands fa-instagram"></i></a></div>
                <div class="social-icon"><a href="" ><i class="fa-brands fa-tiktok"></i></a></div>
                <div class="social-icon"><a href="" ><i class="fa-brands fa-youtube"></i></a></div>
                <div class="social-icon"><a href="" ><i class="fa-brands fa-apple"></i></a></div>
                <div class="social-icon"><a href="" ><i class="fa-brands fa-spotify"></i></a></div>
            </div>
            <span>© 2023 BLACKPINK | SHOP. All Rights Reserved.</span>
            <div class="footer__contact--options">
                <span class="option">Help</span>
                <span class="option">Terms</span>
                <span class="option">Privacy</span>
                <span class="option">Do Not Sell My Personal Infomation</span>
                <span class="option">Cookie Choise</span>
            </div>
            <span>IF YOU ARE USING A SCREEN READER AND ARE HAVING PROBLEMS USING THIS WEBSITE, PLEASE CALL 866-682-4413 FOR ASSISTANCE.</span>
        </div>
        <div class="accountLogin" id="accountLogin" runat="server"></div>
    </div>

</body>
</html>
