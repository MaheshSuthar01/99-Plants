<%@ Page  Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PLANTS.Login_page.login"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
    <!--Css file link-->
    <link rel="stylesheet" href="../Style/login.css"/>
</head>
<body>
    <form id="form1" runat="server">

   <!-- header section starts  -->

<header>

 
        


    <div class="header-2">

        <div id="menu-bar" class="fas fa-bars"></div>

        <nav class="navbar">
            <a href="../Main_page/Default.aspx">home</a>
            <a href="../Main_page/Default.aspx">category</a>
            <a href="../Main_page/Default.aspx">product</a>
            <a href="../Main_page/Default.aspx">deal</a>
            <a href="../Main_page/Default.aspx">contact</a>
        </nav>

        <div class="icons">
            <a href="#" class="fas fa-shopping-cart"><span>Cart</span></a>
            <a href="#" class="fas fa-heart"><span>Wishlist</span></a>
            <a href="sign_up.aspx" class="fas fa-user-circle"><span>Sign Up</span></a>
        </div>

    </div>

</header>

<!-- header section ends -->


        <div class="main">
        <div class="left">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/images/back.jpg" />
        </div>
        <div class="right"><br /><br/>
             <asp:Label ID="heading" runat="server" Text="Login"></asp:Label><br />
             <asp:Label ID="signup" runat="server" Text="Doesn't have an account yet?"></asp:Label>
             <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Login_page/sign_up.aspx">Sign Up</asp:HyperLink>
            
            <div class="input-container">
                 <asp:Label class="label" runat="server" Text="Username"></asp:Label><br />
                 <asp:TextBox ID="username" class="input" placeholder="Enter your username" runat="server"></asp:TextBox>
            </div>

            <div class="input-container">
                 <asp:Label class="label" runat="server" Text="Password"></asp:Label>
                 <asp:HyperLink ID="HyperLink2" runat="server" class="forgot-psw" NavigateUrl="~/Login_page/forgotpassword.aspx">Forgot Password</asp:HyperLink>
                 <br />
                 <asp:TextBox ID="password" class="input" placeholder="Enter your password" runat="server" TextMode="Password"></asp:TextBox>
                 <span>
                     <i class="fa fa-eye-slash" aria-hidden="true" id="eye"></i>
                 </span>
               
            </div>
               
                             
            <asp:CheckBox ID="CheckBox1" runat="server" CssClass="psw_check" Text="Remember Me"/>  
                             
                        
            <div class="btn-con">
                <asp:Button class="btn" runat="server" Text="Login" ID="btnLogin" OnClick="btnLogin_Click" />   
            </div>
             <asp:Label ID="lblError" runat="server" ></asp:Label>
        </div>
        
    </div>
    
    </form>

  <script src="../scripts/Login.js"></script>
</body>
</html>
