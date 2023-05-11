<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="BlackPinkHome.Trangchu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="CSS/base.css">
    <link rel="stylesheet" href="CSS/Home.css">
    
    <title>Home - BLACKPINK</title>
</head>
<body>
    <div class="navbar">
        <div class="navbar__content">
            <ul class="navbar__listChoose">
                <li class="navbar__listChoose-item"><a target="_blank" href="Store.aspx">STORE</a></li>
                <li class="navbar__listChoose-item"><a target="_blank" href="https://www.youtube.com/BLACKPINKOFFICIAL" target="_blank">MUSIC</a></li>
                <li class="navbar__listChoose-item"><a target="_blank" href="#videoAnimation">TOUR</a></li>
                <li class="navbar__listChoose-item"><a target="_blank" href="https://www.youtube.com/BLACKPINKOFFICIAL" target="_blank">VIDEOS</a></li>
                <li class="navbar__listChoose-item"><a target="_blank" href="#subscribeBlock">SUBSCRIBE</a></li>
            </ul>
        </div>  
        <!-- Làm Mobile: Start -->
        <label for="navbar__input" class="navbar--mobile">
            <i class="fa-solid fa-bars"></i>
        </label>

        <input type="checkbox" name="" class="navbar-input-mobile" id="navbar__input">

        <label for="navbar__input" class="navbar__overlay"></label>
        
        <div class="navbar__logo">
            <a href=""><img id="logo" src="image/logo.png" alt=""></a>
        </div>

        <div class="navbar__content--mobile">
            <ul class="navbar__listChoose">
                <li class="navbar__listChoose-item--mobile"><a target="_blank" href="https://localhost:44330/Store.aspx">STORE</a></li>
                <li class="navbar__listChoose-item--mobile"><a target="_blank" href="https://www.youtube.com/BLACKPINKOFFICIAL" target="_blank">MUSIC</a></li>
                <li class="navbar__listChoose-item--mobile"><a href="#videoAnimation">TOUR</a></li>
                <li class="navbar__listChoose-item--mobile"><a target="_blank" href="https://www.youtube.com/BLACKPINKOFFICIAL" target="_blank">VIDEOS</a></li>
                <li class="navbar__listChoose-item--mobile"><a href="#subscribeBlock">SUBSCRIBE</a></li>
            </ul>
            <label for="navbar__input" class="navbar__content-mobile--cancel">
                <i class="fa-solid fa-xmark"></i>
            </label>
        </div> 
        <!-- Làm Mobile: End -->

        <div class="narbar__social">
            <ul class="narbar__social-listIcon">
                <li class="narbar__social-listIcon--icon"><a target="_blank" href="https://www.instagram.com/blackpinkofficial/"><i class="fa-brands fa-instagram"></i></a></li>
                <li class="narbar__social-listIcon--icon"><a target="_blank" href="https://www.tiktok.com/@bp_tiktok"><i class="fa-brands fa-tiktok"></i></a></li>
                <li class="narbar__social-listIcon--icon"><a target="_blank" href="https://www.youtube.com/BLACKPINKOFFICIAL"><i class="fa-brands fa-youtube"></i></a></li>
                <li class="narbar__social-listIcon--icon"><a target="_blank" href="https://twitter.com/BLACKPINK"><i class="fa-brands fa-twitter"></i></a></li>
                <li class="narbar__social-listIcon--icon"><a target="_blank" href="https://www.facebook.com/BLACKPINKOFFICIAL/"><i class="fa-brands fa-facebook"></i></a></li>
                <li class="narbar__social-listIcon--icon"><a target="_blank" href="https://open.spotify.com/artist/41MozSoPIsD1dJM0CLPjZF"><i class="fa-brands fa-spotify"></i></a></li>
                <li class="narbar__social-listIcon--icon"><a target="_blank" href="https://music.apple.com/us/artist/blackpink/1141774019"><i class="fa-brands fa-apple"></i></a></li>
            </ul>
        </div>
        
    </div>
    
    <div class="header">
        <img id="horn" src="image/background.jpg" alt="">
        <img id="bornPink" src="image/bornPink.jpg" alt="">
    </div>



    <div class="shopStore">
        <img class="shopStore__logo" src="image/shopStore-logo.png" alt="Logo_ShopStore">
        <div class="listItem__block">
            <div class="listItem" id="listProductHomes" runat="server">
                
               <%-- <div class="shopStore__item ">
                    <img class="shopStore__item--img" src="image/home-shopStore8.png" alt="shopStore_item">
                    <div class="shopStore__item-content">
                        <span class="shopStore__item--name">PINK VENOM HOODIE</span>
                        <div class="shopStore__item--detail">
                            <span class="shopStore__item--price">$75.00</span>
                            <a href class="shopStore__item--link">SHOP</a>
                        </div>
                    </div>
                </div> --%>
                
            </div>
        </div>

        <div class="shopStore__button">
            <a href="Store.aspx" target="_blank" class="shopStore__button-link">SHOP ALL</a>
        </div>
    </div>




    <div class="videoAnimation" id="videoAnimation">
        <video autoplay loop width="100%">
            <source src="image/videoBP.mp4">
        </video>
    </div>


    <div id="subscribeBlock">
        <div class="subscribeBlock__content">
            <img src="image/subscribe-logo.png" alt="">
            <div class="subscribeBlock__input">
                <div class="subscribeBlock__input--email">
                    <span>EMAIL</span>
                    <input type="email" name="email" id="email" placeholder="Email Address">
                    
                </div>
                <div class="subscribeBlock__input--phone">
                    <span>PHONE NUMBER</span>
                    <input type="text" name="phone" id="phone" placeholder="Phone Number">

                </div>
            </div>
        
            <span class="required">*REQUIRED FIELDS</span>
            <div class="agreeTerms">
                <input type="checkbox">
                <span>I agree to the terms and conditions of the public offer.</span>
            </div>
            <span class="node">Emails will be sent by or on behalf of Universal Music Group 2220 Colorado Avenue, Santa Monica, CA 90404 (310) 865-4000. You may withdraw your consent at any time. Privacy Policy / Do Not Sell My Personal Information</span>
            <div class="register">
                <a href="" class="registerSubscribe">REGISTER</a>
            </div>
        </div>
    </div>
</body>
</html>
