<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sign_up.aspx.cs" Inherits="PLANTS.Login_page.sign_up" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <!-- css link -->
    <link rel="stylesheet" href="../Style/SignUp.css"/>
    
</head>
<body>
    <form id="form1" runat="server">

         <!-- header section starts  -->

<header>

    <div class="header-2">

        <div id="menu-bar" class="fas fa-bars"></div>

        <nav class="navbar">
            <a href="../Main_page/Default.aspx">home</a>
            <a href="../Main_page/Default.aspx">contact</a>
            <a href="../Main_page/Default.aspx">category</a>
            <a href="../Main_page/Default.aspx">product</a>
            <a href="../Main_page/Default.aspx">deal</a>
        </nav>

        <div class="icons">
            <a href="#" class="fas fa-shopping-cart"><span>Cart</span></a>
            <a href="#" class="fas fa-heart"><span>Wishlist</span></a>
            <a href="../Login_page/login.aspx" class="fas fa-user-circle"><span>Login</span></a>
        </div>

    </div>

</header>

<!-- header section ends -->


        <div class="main">
        <div class="left">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/back.jpg" />
        </div>
        <div class="right"><br />
             <asp:Label ID="heading" runat="server" Text="Sign up"></asp:Label><br />
             <asp:Label ID="signup" runat="server" Text="Already Sign up?"></asp:Label>
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login_page/login.aspx">Login</asp:HyperLink>

            <div class="input-con">
                 <asp:Label class="label" runat="server" Text="Username"></asp:Label><br />
                 <asp:TextBox ID="username" class="input" placeholder="Enter your username" runat="server"></asp:TextBox>
            </div>

            <div class="input-con">
                 <asp:Label class="label" runat="server" Text="Email Address"></asp:Label><br />
                 <asp:TextBox ID="email" class="input" placeholder="Enter your Email" runat="server" TextMode="Email"></asp:TextBox>
            </div>

            <div class="input-con">
                 <asp:Label class="label" runat="server" Text="Password"></asp:Label><br />
                 <asp:TextBox ID="password" class="input" placeholder="Enter your password" runat="server" TextMode="Password"></asp:TextBox>
                <span>
                     <i class="fa fa-eye-slash" aria-hidden="true" id="eye"></i>
                 </span>
            </div>

            <div class="input-con">
                 <asp:Label class="label" runat="server" Text="Confirm Password"></asp:Label><br />
                 <asp:TextBox ID="con_password" class="input" placeholder="Enter your Confirm password" runat="server" TextMode="Password"></asp:TextBox>
            </div>

            <div class="btn-con">
                <asp:Button class="btn" runat="server" Text="Sign up" ID="btn" OnClick="btn_Click" />   
            </div>
            </div>
    </div>

    <script src="../scripts/Login.js"></script>
    </form>

    </body>
</html>
