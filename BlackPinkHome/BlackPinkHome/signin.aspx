<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signin.aspx.cs" Inherits="BlackPinkHome.signin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="css/base.css">
    <link rel="stylesheet" href="css/signin.css">

    <title>Sign In</title>
</head>
<body>
    <div class="container">
        <form id="signInForm" runat="server" method="post" onsubmit="return checkSignIn();">
            <div class="formSignIn">
                <div class="image">
                    <a href="Trangchu.aspx">
                        <img src="image/logo.png" alt="">
                    </a>
                </div>
                <div class="input">
                    <div class="input__phoneNumber">
                        <div class="input__value">  
                            <input type="text" id="inputPhone" name="phone" placeholder="Phone number">
                        </div>
                    </div>
                    <div class="input__password">
                        <div class="input__value">
                            <input type="password" id="inputPass" name="pass" placeholder="Password">
                        </div>
                    </div>
                </div>
                <div id="error" runat="server">
                    <%--ERROR--%>
                </div>
                <div class="btn">
                    <a><asp:Button id="btnSignIn" runat="server" Text="SIGN IN" name="btnSignIn" OnClick="btnSignIn_onClick " style="border:none; background-color: transparent; width: 100%; padding: 8px 30px;"/></a>
                </div>
            
                <div class="toSignUp">
                    <span>Not a member? <a href="Register.aspx">Register now</a></span>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
<script src="Javascript/signIn.js"></script>