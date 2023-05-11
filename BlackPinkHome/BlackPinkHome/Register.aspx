<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="BlackPinkHome.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="CSS/base.css">
    <link rel="stylesheet" href="CSS/register.css">

    <title>Register</title>
</head>
<body>
    <div class="container">
        <form id="RegisterForm" method="post" runat="server" onsubmit="return checkRegister();">
            <div class="formSignUp">
            <div class="image">
                <a href="Trangchu.aspx">
                    <img src="image/logo.png" alt="">
                </a>
            </div>  
            <div class="input">
                <div class="inputBlockFirst input__name">
                    <div class="input__name input__name--firstName">
                        <input type="text" id="firstName" name="firstName" runat="server" placeholder="First name"/>
                    </div>
                    <div class="input__name input__name--lastName">
                        <input type="text" id="lastName" name="lastName" runat="server" placeholder="Last name"/>
                    </div>
                </div>
                <div class="inputBlock">
                    <div class="inputBlock__icon">
                        <i class="fa-solid fa-phone"></i>
                    </div>
                    <div class="inputBox input__phoneNumber">
                        <input type="text" id="phone" name="phone" runat="server" placeholder="Phone number"/>
                    </div>
                </div>
                <div class="inputBlock">
                    <div class="inputBlock__icon">
                        <i class="fa-solid fa-envelope"></i>
                    </div>
                    <div class="inputBox input__email">
                        <input type="email" id="email" name="email" runat="server" placeholder="Email address"/>
                    </div>
                </div>
                <div class="inputBlock">
                    <div class="inputBlock__icon">
                        <i class="fa-solid fa-key"></i>
                    </div>
                    <div class="inputBox input__pass">
                        <input type="password" id="pass" name="pass" runat="server" placeholder="Password"/>
                    </div>
                </div>
                <div class="inputBlock">
                    <div class="inputBlock__icon">
                        <i class="fa-solid fa-key"></i>
                    </div>
                    <div class="inputBox input__confirmPass">
                        <input type="password" id="cfPass" placeholder="Confirm password"/>
                    </div>
                </div>
            </div>
            <div id="error" style="font-size: 1.5rem; color: red;" runat="server">
                <%--error--%>
            </div>
            <div class="agreeTerms">
                <input type="checkbox"/>
                <span>I agree to the terms and conditions of the public offer.</span>
            </div>
             <div class="btn">
                <a><asp:Button id="btnRegister" runat="server" Text="REGISTER" name="btnRegister" OnClick="btnRegister_onClick" style="border:none; border-radius: 10px; background-color: #f4a7ba; padding: 0 20px; cursor: pointer;" /></a>
            </div> 
              
            <div class="toSignIn">
                <span>Have an account? <a href="signin.aspx">Sign in now</a></span>
            </div>
        </div>
        </form>
    </div>
</body>
</html>
<script src="Javascript/register.js"></script>
