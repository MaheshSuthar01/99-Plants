<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bonsai_plants.aspx.cs" Inherits="PLANTS.Main_page.Bonsai_plants" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Bonsai</title>

     <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../Style/Defualt.css" />

   
</head>
<body>
    <form id="form1" runat="server">
        
<!-- header section starts  -->

<header>

    <div class="header-1">

        <a href="plants.aspx" class="logo"> <i class="fas fa-seedling"></i> Plants </a>

        <div class="search-bar-container">
            <form action="#" >
              <asp:TextBox ID="search_bar" runat="server" placeholder="search here..."></asp:TextBox>
              <asp:Button  ID="searchbarbtn" runat="server" Text="Search" CssClass="searchbar" />

            </form>
        </div>
        

    </div>

    <div class="header-2">

        <div id="menu-bar" class="fas fa-bars"></div>

        <nav class="navbar">
            <a href="plants.aspx">home</a>
            <a href="plants.aspx">category</a>
            <a href="plants.aspx">product</a>
            <a href="plants.aspx">deal</a>
            <a href="plants.aspx">contact</a>
        </nav>

        <div class="icons">
            <a><i class="fas fa-shopping-cart"></i></a>&nbsp; 
            <asp:Button  ID="btnAddtoCart" class="btnCart" runat="server" Text="Cart" />
            <i class="fas fa-heart"></i>
            <asp:Button ID="btnWishlist" runat="server" Text="Wishlist" CssClass="btnWishlist" />
            <i class="fa fa-sign-out-alt"></i>
            <asp:Button ID="btnAdmin" runat="server" Text="Sign out" CssClass="btnSignOut" OnClick="btnAdmin_Click"/>
            <i class="fa fa-user"></i>
            <asp:Label ID="user" runat="server" CssClass="lblUserName"></asp:Label>
        </div>

    </div>

</header>

<!-- header section ends -->

<!-- product section starts  -->

<section class="product" id="product">

<h1 class="heading">bonsai plants </h1>

<div class="box-container">

    <div class="box">
        <span class="discount">-10%</span>
        <div class="icons">
            <asp:LinkButton ID="AddToWishList" runat="server" OnClick="AddToWishList_Click"><i class="fas fa-heart"></i></asp:LinkButton>
            
        </div>
        <img src="../Images/new products/bonsai/bonsai4.jpg" alt="" />
        <h3>latest plants</h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
        </div>
        <div class="quantity">
            <span> quantity : </span>
            <asp:TextBox ID="TextBox1" runat="server" min="1" max="100" value="1" TextMode="Number" CssClass="add-items"></asp:TextBox>
        
        </div>
        <div class="price">₹99 <span>₹150</span></div>
        <asp:Button ID="Button10" CssClass="btn1" runat="server" Text="add to cart" />
    </div>

    <div class="box">
        <span class="discount">-25%</span>
        <div class="icons">
          <asp:LinkButton ID="AddToWishList2" runat="server" OnClick="AddToWishList2_Click"><i class="fas fa-heart"></i></asp:LinkButton>           
            
        </div>
        <img src="../Images/new products/bonsai/bonsai2.jpg" alt="" />
        <h3>latest plants</h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
        </div>
        <div class="quantity">
            <span> quantity : </span>
            <asp:TextBox ID="TextBox2" runat="server" min="1" max="100" value="1" TextMode="Number" CssClass="add-items"></asp:TextBox>
        </div>
        <div class="price"> ₹99<span>₹150</span></div>
        <asp:Button ID="Button11" CssClass="btn1" runat="server" Text="add to cart" />
    </div>

    <div class="box">
        <span class="discount">-7%</span>
        <div class="icons">
          <asp:LinkButton ID="AddToWishList3" runat="server" OnClick="AddToWishList3_Click"><i class="fas fa-heart"></i></asp:LinkButton>

          
        </div>
        <img src="../Images/new products/bonsai/bonsai3.jpg" alt="" />
        <h3>latest plants</h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
        </div>
        <div class="quantity">
            <span> quantity : </span>
            <asp:TextBox ID="TextBox3" runat="server" min="1" max="100" value="1" TextMode="Number" CssClass="add-items"></asp:TextBox>
        </div>
        <div class="price">₹99 <span>₹150</span></div>
        <asp:Button ID="Button12" CssClass="btn1" runat="server" Text="add to cart" />
    </div>

    <div class="box">
        <span class="discount">-4%</span>
        <div class="icons">
          <asp:LinkButton ID="AddToWishList4" runat="server" OnClick="AddToWishList4_Click"><i class="fas fa-heart"></i></asp:LinkButton>

            
        </div>
        <img src="../Images/new products/bonsai/bonsai1.jpg" alt="" />
        <h3>latest plants</h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
        </div>
        <div class="quantity">
            <span> quantity : </span>
            <asp:TextBox ID="TextBox4" runat="server" min="1" max="100" value="1" TextMode="Number" CssClass="add-items"></asp:TextBox>
        </div>
        <div class="price">₹99 <span>₹150</span></div>
        <asp:Button ID="Button13" CssClass="btn1" runat="server" Text="add to cart" />
    </div>

    <div class="box">
        <span class="discount">-13%</span>
        <div class="icons">
          <asp:LinkButton ID="AddToWishList5" runat="server" OnClick="AddToWishList5_Click"><i class="fas fa-heart"></i></asp:LinkButton>            
           
        </div>
        <img src="../Images/new products/bonsai/bonsai5.jpg" alt="" />
        <h3>latest plants</h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
        </div>
        <div class="quantity">
            <span> quantity : </span>
            <asp:TextBox ID="TextBox5" runat="server" min="1" max="100" value="1" TextMode="Number" CssClass="add-items"></asp:TextBox>
        </div>
        <div class="price">₹99 <span>₹150</span></div>
        <asp:Button ID="Button14" CssClass="btn1" runat="server" Text="add to cart" />
    </div>

    <div class="box">
        <span class="discount">-20%</span>
        <div class="icons">
           <asp:LinkButton ID="AddToWishList6" runat="server" OnClick="AddToWishList6_Click"><i class="fas fa-heart"></i></asp:LinkButton>                        
            
        </div>
        <img src="../Images/new products/bonsai/bonsai6.jpg" alt="" />
        <h3>latest plants</h3>
        <div class="stars">
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="fas fa-star"></i>
            <i class="far fa-star"></i>
        </div>
        <div class="quantity">
            <span> quantity : </span>
            <asp:TextBox ID="TextBox6" runat="server" min="1" max="100" value="1" TextMode="Number" CssClass="add-items"></asp:TextBox>
        </div>
        <div class="price">₹99 <span>₹150</span></div>
        <asp:Button ID="Button15" CssClass="btn1" runat="server" Text="add to cart" />
    </div>


</div>

</section>



<!-- product section ends -->

      <div><hr /></div>
<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3>about us</h3>
            <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quo hic eum veniam aut nisi. Libero autem nemo amet recusandae eveniet?</p>
        </div>
        <div class="box">
            <h3>branch locations</h3>
            <a href="#">india</a>
            <a href="#">USA</a>
            <a href="#">japan</a>
            <a href="#">france</a>
        </div>
        <div class="box">
            <h3>quick links</h3>
            <a href="plants.aspx">home</a>
            <a href="plants.aspx">category</a>
            <a href="plants.aspx">product</a>
            <a href="plants.aspx">deal</a>
            <a href="plants.aspx">contact</a>
        </div>
        <div class="box">
            <h3>follow us</h3>
            <a href="#">facebook</a>
            <a href="#">twitter</a>
            <a href="#">instagram</a>
            <a href="#">linked</a>
        </div>

    </div>

    
    
</section>

<!-- footer section ends -->

    </form>
    <script src="../scripts/plants.js"></script>
</body>
</html>
