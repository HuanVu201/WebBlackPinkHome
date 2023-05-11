<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="BlackPinkHome.Cart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="CSS/cart.css">
    <link rel="stylesheet" href="CSS/base.css">
    <link rel="stylesheet" href="CSS/navbar.css">
    <link rel="stylesheet" href="CSS/footer.css">

    <title>Your Cart</title>
</head>
<body>
    <div class="narbar">
        <div class="narbar__content">
            <div class="navbar__logo">
                <a href="https://localhost:44330/Store.aspx" class="navbar__logo--link">
                    <img src="image/LogoBP-transparent.png" alt="">
                </a>
            </div>

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
                        <span>APPAREL</span>
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

    <div class="container">
        <div class="shoppingCart" id="shoppingCart" runat="server">
            <div class="product__title">
                <span class="product__title--name">Product</span>
                <span class="product__title--size">Size</span>
                <span class="product__title--price">Price</span>
                <span class="product__title--quantity">Quantity</span>
                <span class="product__title--total">Total</span>
            </div>

            <div class="product" id="cartBlock" runat="server">
                <<div class="shoppingCart__detail image">
                    <img src="image/sp2.jpg" alt="">
                </div>
                <div class="shoppingCart__detail name">
                    <span>SHUT DOWN HAT</span>
                </div>
                <div class="shoppingCart__detail size">
                    <span>XL</span>
                </div>
                <div class="shoppingCart__detail price">
                    <span>$30.00</span>
                </div>
                <div class="shoppingCart__detail quantity" >
                    <a href="#" class="changeQuantity changeQuantity__less"><i class="fa-solid fa-minus"></i></a>
                    <input type="number" min="1" disabled="disabled"/>
                    <a href="#" class="changeQuantity changeQuantity__more"><i class="fa-solid fa-plus"></i></a>
                </div>
                <div class="shoppingCart__detail total">
                    <span>$60.00</span>
                </div>
                <div class="shoppingCart__detail remove">
                    <a href=""><i class="fa-solid fa-xmark"></i></a>
                </div>
            </div>

        </div>
        <%--<script src="Javascript/cart.js"></script>--%>
        
        <div class="order">
            <div class="note">
                <span>Note to add if sending as gift:</span><br>
                <textarea name="" id="" cols="30" rows="6"></textarea>
            </div>
            <div class="checkout">
                <div class="checkout__subtotal">
                    <span>SUBTOTAL: </span>
                    <span id="subTotalBox" runat="server">$240.000</span>
                </div>
                <div class="checkout__extra">
                    Ships on or around May 15, 2023
                </div>
                <div class="checkout__btn">
                    <a href="Trangchu.aspx">CHECK OUT</a>
                </div>
            </div>
        </div>
    </div>

    <div class="footer">
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
    </div>
</body>
</html>
