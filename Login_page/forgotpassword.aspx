<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="forgotpassword.aspx.cs" Inherits="PLANTS.Login_page.forgotpassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Forgot Password</title>

    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- font awesome CDN link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../Style/forgot password.css"/>
    
</head>
<body>
    <form id="form1" runat="server">
        
                            
<!-- header section starts  -->

<header>


  
  
    <div class="header-2">

        <div id="menu-bar" class="fas fa-bars"></div>

        <nav class="navbar">
            <a href="../Main_page/plants.aspx">home</a>
            <a href="#category">category</a>
            <a href="#product">product</a>
            <a href="#deal">deal</a>
            <a href="#contact">contact</a>
        </nav>

        <div class="icons">
            <a href="#" class="fas fa-shopping-cart"><span>Cart</span></a>
            <a href="#" class="fas fa-heart"><span>Wishlist</span></a>
            <a href="../Login_page/login.aspx" class="fas fa-user-circle"><span>Login</span></a>
        </div>

    </div>

</header>

<!-- header section ends -->


        <div class="forgot-container">
            <h1>Forgot Password</h1>

            <div class="container1">
                <asp:Label ID="Label1" class="lbl-text" runat="server" Text="Email Address"></asp:Label><br />
                <asp:TextBox ID="txtEmailID" class="text-email"  runat="server" Placeholder="Enter your email"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" runat="server" ErrorMessage="Enter your email" ControlToValidate="txtEmailID" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="btnResetPass" class="submit-btn" runat="server" Text="Send"  OnClick="btnResetPass_Click" />
                <br />
                <br />
                <asp:Label ID="lblResetPassMsg" runat="server"></asp:Label>
            </div>
        </div>
        
    </form>
</body>
</html>
