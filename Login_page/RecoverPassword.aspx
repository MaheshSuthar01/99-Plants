<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecoverPassword.aspx.cs" Inherits="PLANTS.Login_page.RecoverPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset your Password</title>


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
            <h1>Reset Password</h1>
            <asp:Label ID="lblmsg" runat="server" Visible="False" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            
            <div class="container1">
                <asp:Label ID="lblNewPass" class="lbl-text" runat="server" Text="Your New Password" Visible="False"></asp:Label><br />
                <asp:TextBox ID="txtNewPass" class="text-email"  runat="server" Placeholder="Enter your new password" TextMode="Password" Visible="False"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" runat="server" ErrorMessage="Enter your New Password" ControlToValidate="txtNewPass" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <br />
                <asp:Label ID="lblNewConPass" class="lbl-text" runat="server" Text="Conrim New Password" Visible="False"></asp:Label><br />
                <asp:TextBox ID="txtNewConPass" class="text-email"  runat="server" Placeholder="Enter your Confirm Password" TextMode="Password" Visible="False"></asp:TextBox>

                <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter your Confirm Password" ControlToValidate="txtNewConPass" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:CompareValidator ID="CompareValidatorPass" runat="server" ErrorMessage="Confirm password not match...try again" ControlToCompare="txtNewPass" ControlToValidate="txtNewConPass" ForeColor="Red"></asp:CompareValidator>
                <asp:Button ID="btnResetPass" class="submit-btn" runat="server" Text="Reset" Visible="False" OnClick="btnResetPass_Click" />
                
            </div>
        </div>
    </form>
</body>
</html>
