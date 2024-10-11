 <%@ Page Title="AddProduct" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="PLANTS.Manage.AddProduct" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <link rel="stylesheet" href="../Style/manage.css"/>
     <link rel="stylesheet" href="../Style/add_Products.css"/>
    
    <div class="managecon">
        <h2>Manage</h2><br /><br /><br />
        <a href="Category.aspx"><span>Category</span></a><br /><br />
        <a href="Quantity.aspx"><span>Quantity</span></a><br /><br />
        <a href="AddProduct.aspx"><span>Add Product</span></a><br /><br />
        <a href="Product Details.aspx"><span>Product Details</span></a>
    </div>

    <div class="productCon" style="left: 0px; top: -682px; height: 1394px">

        <h3>Add Product</h3>
        <hr />
      
             <asp:Label ID="Label1" runat="server" Text="Product Name" CssClass="lblProductName"></asp:Label>
             <asp:TextBox ID="txtProductName" runat="server" CssClass="txtProductName"></asp:TextBox>
             <br />
             <asp:Label ID="Label2" runat="server" Text="Price" CssClass="lblPrice"></asp:Label>
             <asp:TextBox ID="txtPrice" runat="server" CssClass="txtPrice"></asp:TextBox>
             <br />
             <asp:Label ID="Label3" runat="server" Text="Selling Price" CssClass="lblSellingPrice"></asp:Label>
             <asp:TextBox ID="txtSellingPrice" runat="server" CssClass="txtSellingPrice"></asp:TextBox>
             <br />
             <asp:Label ID="Label4" runat="server" Text="Category" CssClass="lblCategory"></asp:Label>
             <asp:DropDownList ID="ddlCategory" runat="server" CssClass="ddlCategory">
                
             </asp:DropDownList>
             <br />
             <asp:Label ID="Label5" runat="server" Text="Upload Image" CssClass="lblUploadImage"></asp:Label>
             <asp:FileUpload ID="fuImg" runat="server" CssClass="fuImg" Height="25px" Width="250px"/>
             <br />
             <asp:Label ID="Label6" runat="server" Text="Quanitity" CssClass="lblQuanitity"></asp:Label>
             <asp:TextBox ID="txtQuanitity" runat="server" CssClass="txtQuanitity"></asp:TextBox>             
             <br />
             <br />
             <asp:Button ID="btnAdd" runat="server" Text="Add Product" CssClass="btnAdd" OnClick="btnAdd_Click" />


       
    </div>
</asp:Content>
