﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PLANTS.Login_page.Default" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Plants</title>

    <!-- swiper CDN link -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- font awesome CDN link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />

    <!-- custom css file link  -->
    <link rel="stylesheet" href="../Style/Defualt.css" />



</head>
<body>
    <form id="form1" runat="server">
    
                    
 <!-- header section starts  -->

<header>

    <div class="header-1">

        <a href="Default.aspx" class="logo"> <i class="fas fa-seedling"></i> Plants </a>

        <div class="search-bar-container">
            <form action="#" >
              <asp:TextBox ID="search_bar" runat="server" placeholder="search here..."></asp:TextBox>
              <!--<label for="search-bar" class="fas fa-search"></label>-->
                
                <asp:Button  ID="searchbarbtn" runat="server" Text="Search" CssClass="searchbar" />
            </form>
        </div>
        

    </div>

    <div class="header-2">

        <div id="menu-bar" class="fas fa-bars"></div>

        <nav class="navbar">
            <a href="#home">home</a>
            <a href="#category">category</a>
            <a href="#product">product</a>
            <a href="#deal">deal</a>
            <a href="#contact">contact</a>
        </nav>

        <div class="icons">
            <a><i class="fas fa-shopping-cart"></i></a>&nbsp; 
            <asp:Button class="btnCart" runat="server" Text="Cart"/>
            <i class="fas fa-heart"></i>
            <asp:Button ID="btnWisthlist" runat="server" Text="Wishlist" CssClass="btnWishlist" />
            <a href="../Login_page/login.aspx" class="fas fa-user-circle"><span>Login</span></a>
        </div>

    </div>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="home" id="home">

    <div class="swiper-container home-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide">
                <div class="box" style="background: url(../images/slider1.jpg);">
                    <div class="content">
                        <span>upto 75% off</span>
                        <h3>plant big sale special offer</h3>
                        <asp:Button ID="Button1" CssClass="btn" runat="server" Text="shop now" />
               
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="box" style="background: url(../images/slider2.jpg);">
                    <div class="content">
                        <span>upto 45% off</span>
                        <h3>plant make people happy</h3>
                       <asp:Button ID="Button2" CssClass="btn" runat="server" Text="shop now" />
                    </div>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="box" style="background: url(../images/slider3.jpg);">
                    <div class="content">
                        <span>upto 65% off</span>
                        <h3>decorate your home now</h3>
                        <asp:Button ID="Button3" CssClass="btn" runat="server" Text="shop now" />
                    </div>
                </div>
            </div>

        </div>

        <div class="swiper-pagination"></div>

    </div>

</section>

<!-- home section ends -->

<!-- banner section starts  -->

<section class="banner-container">

    <div class="banner">
        <img src="../images/banner1.jpg" alt="" />
        <div class="content">
            <span>new arrivals</span>
            <h3>house plants</h3>
            <asp:Button ID="Button4" CssClass="btn" runat="server" Text="shop now" OnClick="Button4_Click" OnClientClick="window.open('plants_for_house.aspx')"/>
        </div>
    </div>
    <div class="banner">
        <img src="../images/banner2.jpg" alt="" />
        <div class="content">
            <span>new arrivals</span>
            <h3>office plants</h3>
            <asp:Button ID="Button5" CssClass="btn" runat="server" Text="shop now" OnClick="Button5_Click" OnClientClick="window.open('plants_for_office.aspx')"/>
        </div>
    </div>

</section>

<!-- banner section ends -->

<!-- category section starts  -->

<section class="category" id="category">

<h1 class="heading"> shop by category </h1>

<div class="box-container">

    <div class="box">
        <img src="../images/cat1.jpg" alt="" />
        <div class="content">
            <h3>bonsai</h3>
            <asp:Button ID="Button6" CssClass="btn" runat="server" Text="shop now" OnClick="Button6_Click" OnClientClick="window.open('Bonsai_plants.aspx')"/>
        </div>
    </div>
    <div class="box">
        <img src="../images/cat2.jpg" alt="" />
        <div class="content">
            <h3>plants for house</h3>
            <asp:Button ID="Button7" CssClass="btn" runat="server" Text="shop now" OnClick="Button7_Click" OnClientClick="window.open('plants_for_house.aspx')"/>
        </div>
    </div>
    <div class="box">
        <img src="../images/cat3.jpg" alt="" />
        <div class="content">
            <h3>plants for office</h3>
           <asp:Button ID="Button8" CssClass="btn" runat="server" Text="shop now" OnClick="Button8_Click" OnClientClick="window.open('plants_for_office.aspx')"/>
        </div>
    </div>
    <div class="box">
        <img src="../images/cat4.jpg" alt="" />
        <div class="content">
            <h3>gift plants</h3>
           <asp:Button ID="Button9" CssClass="btn" runat="server" Text="shop now" OnClick="Button9_Click" OnClientClick="window.open('gift_plants.aspx')"/>
        </div>
    </div>

</div>

</section>

<!-- category section ends -->

<!-- product section starts  -->

<section class="product" id="product">

<h1 class="heading"> new products </h1>

<div class="box-container">

    <div class="box">
        <span class="discount">-34%</span>
        <div class="icons">
            <!--<a href="#" class="fas fa-heart"></a> -->
            <asp:LinkButton ID="AddToWishList" runat="server" OnClick="AddToWishList_Click"><i class="fas fa-heart"></i></asp:LinkButton>
            
        </div>
        <img src="../images/product1.jpg" alt="" />
        <h3>aloe vera</h3>
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
        <span class="discount">-50%</span>
        <div class="icons">
          <asp:LinkButton ID="AddToWishList2" runat="server" OnClick="AddToWishList2_Click"><i class="fas fa-heart"></i></asp:LinkButton>

            
        </div>
        <img src="../images/product2.jpg" alt="" />
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
        <div class="price">₹99 <span>₹198</span></div>
        <asp:Button ID="Button11" CssClass="btn1" runat="server" Text="add to cart"  />
    </div>

    <div class="box">
        <span class="discount">-40%</span>
        <div class="icons">
           <asp:LinkButton ID="AddToWishList3" runat="server" OnClick="AddToWishList3_Click"><i class="fas fa-heart"></i></asp:LinkButton>
            
          
        </div>
        <img src="../images/product3.jpg" alt="" />
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
        <div class="price">₹99 <span>₹165</span></div>
        <asp:Button ID="Button12" CssClass="btn1" runat="server" Text="add to cart" />
    </div>

    <div class="box">
        <span class="discount">-35%</span>
        <div class="icons">
           <asp:LinkButton ID="AddToWishList4" runat="server" OnClick="AddToWishList4_Click"><i class="fas fa-heart"></i></asp:LinkButton>
            
        </div>
        <img src="../images/product4.jpg" alt="" />
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
        <div class="price">₹99 <span>₹152.3</span></div>
        <asp:Button ID="Button13" CssClass="btn1" runat="server" Text="add to cart" />
    </div>

    <div class="box">
        <span class="discount">-10%</span>
        <div class="icons">
          <asp:LinkButton ID="AddToWishList5" runat="server" OnClick="AddToWishList5_Click"><i class="fas fa-heart"></i></asp:LinkButton>

           
        </div>
        <img src="../images/product5.jpg" alt="" />
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
        <div class="price">₹99 <span>₹110</span></div>
        <asp:Button ID="Button14" CssClass="btn1" runat="server" Text="add to cart" />
    </div>

    <div class="box">
        <span class="discount">-20%</span>
        <div class="icons">
           <asp:LinkButton ID="AddToWishList6" runat="server" OnClick="AddToWishList6_Click"><i class="fas fa-heart"></i></asp:LinkButton>            
            
        </div>
        <img src="../images/product6.jpg" alt="" />
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
        <div class="price">₹99 <span>₹123.75</span></div>
        <asp:Button ID="Button15" CssClass="btn1" runat="server" Text="add to cart" />
    </div>

</div>

</section>

<!-- product section ends -->

<!-- .icons section starts  -->

<section class="icons-container">

    <div class="icon">
        <img src="../images/icon1.png" alt="" />
        <div class="content">
            <h3>free shipping</h3>
            <p>Free shipping on order</p>
        </div>
    </div>
    <div class="icon">
        <img src="../images/icon2.png" alt="" />
        <div class="content">
            <h3>100% Money Back</h3>
            <p>You’ve 30 days to Return</p>
        </div>
    </div>
    <div class="icon">
        <img src="../images/icon3.png" alt="" />
        <div class="content">
            <h3>Payment Secure</h3>
            <p>100% secure payment</p>
        </div>
    </div>
    <div class="icon">
        <img src="../images/icon4.png" alt="" />
        <div class="content">
            <h3>Support 24/7</h3>
            <p>Contact us anytime</p>
        </div>
    </div>

</section>

<!-- .icons section ends -->

<!-- deal section starts  -->

<section class="deal" id="deal">

    <h1 class="heading"> deal of the day </h1>

    <div class="row">

        <div class="content">
            <h3 class="title">don't miss the deal</h3>
            <div class="count-down">
                <div class="box">
                    <h3 id="day">00</h3>
                    <span>day</span>
                </div>
                <div class="box">
                    <h3 id="hour">00</h3>
                    <span>hour</span>
                </div>
                <div class="box">
                    <h3 id="minute">00</h3>
                    <span>minute</span>
                </div>
                <div class="box">
                    <h3 id="second">00</h3>
                    <span>second</span>
                </div>
            </div>
            <asp:Button ID="Button16" CssClass="btn" runat="server" Text="check out deal" />
            
        </div>

        <div class="image">
            <img src="../images/deal-img.jpg" alt="" />
        </div>

    </div>

</section>

<!-- deal section ends -->

<!-- contact section starts  -->

<section class="contact" id="contact">

<h1 class="heading">get in touch</h1>

<div class="row">

    
    <form action="#">

        <div class="inputBox">
            <asp:TextBox ID="TextBox7" runat="server" CssClass="con"></asp:TextBox>
            <!--<input type="text" required>-->
            <label>name</label>
        </div>
        <div class="inputBox">
            <asp:TextBox ID="TextBox8" runat="server" CssClass="con"  ></asp:TextBox>
            <label>email</label>
        </div>
        <div class="inputBox">
            <asp:TextBox ID="TextBox9" runat="server" CssClass="con" ></asp:TextBox>
            <label>number</label>
        </div>
        <div class="inputBox">
            <asp:TextBox ID="TextBox10" runat="server" CssClass="textarea" TextMode="MultiLine" Rows="5" Columns="40"></asp:TextBox>
            <label>message</label>
        </div>

        <asp:Button ID="Button17" CssClass="btn" runat="server" Text="send message" />

    </form>

</div>

</section>

<!-- contact section ends -->

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
            <a href="#">home</a>
            <a href="#">category</a>
            <a href="#">product</a>
            <a href="#">deal</a>
            <a href="#">contact</a>
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

<!-- scroll top button  -->
<a href="#home" class="scroll-top fas fa-angle-up"></a>





















<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="../scripts/plants.js"></script>


    </form>
</body>
</html>
