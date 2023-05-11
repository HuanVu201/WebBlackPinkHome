<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="BlackPinkHome.AddToCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <div id="testRender" runat="server">
        <%--<div class="shoppingCart__detail image" id="image" runat="server">
                    <img src="image/sp2.jpg" alt="">
                </div>
                <div class="shoppingCart__detail name" id="name" runat="server">
                    <span>SHUT DOWN HAT</span>
                </div>
                <div class="shoppingCart__detail price" id="price" runat="server">
                    <span>$30.00</span>
                </div>--%>
                <h2>Đây là size:</h2>
                <div class="shoppingCart__detail price" id="size" runat="server">
                    <span>size</span>
                </div>       
                <h2>Đây là quantity:</h2>
                <div class="shoppingCart__detail price" id="quantity" runat="server">
                    <span>quantity</span>
                </div>     
        
    </div>

</body>
</html>
