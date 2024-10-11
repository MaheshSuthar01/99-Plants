<%@ Page Title="Manage" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="manage.aspx.cs" Inherits="PLANTS.Manage.manage" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <link rel="stylesheet" href="../Style/manage.css"/>


    <div class="managecon">
        <h2>Manage</h2><br /><br /><br />
        <a href="Category.aspx"><span>Category</span></a><br /><br />
        <a href="Quantity.aspx"><span>Quantity</span></a><br /><br />
        <a href="AddProduct.aspx"><span>Add Product</span></a><br /><br />
        <a href="Product Details.aspx"><span>Product Details</span></a>
    </div>
</asp:Content>
