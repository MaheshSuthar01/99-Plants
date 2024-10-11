<%@ Page Title="Quantity" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Quantity.aspx.cs" Inherits="PLANTS.Manage.Quantity" EnableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="../Style/manage.css"/>
    <link rel="stylesheet" href="../Style/Quantity.css"/>

    <div class="managecon">
        <h2>Manage</h2><br /><br /><br />
        <a href="Category.aspx"><span>Category</span></a><br /><br />
        <a href="Quantity.aspx"><span>Quantity</span></a><br /><br />
        <a href="AddProduct.aspx"><span>Add Product</span></a><br /><br />
        <a href="Product Details.aspx"><span>Product Details</span></a>
    </div>


    <div class="productCon">
        <h3>Add Quantity</h3>
        <hr />
             
             
          
             <asp:Label ID="Label3" runat="server" Text="Category" CssClass="lblCategory"></asp:Label>
             <asp:DropDownList ID="ddlCategory" runat="server" CssClass="ddlCategory">
             </asp:DropDownList>
             <br />
             <asp:Label ID="Label2" runat="server" Text="Quantity" CssClass="lblQuantity"></asp:Label>
             <asp:TextBox ID="txtQuantity" runat="server" CssClass="txtQuantity"></asp:TextBox>
             <br />
             <br />
             
             <asp:Button ID="btnAddQuantity" runat="server" Text="Add Quantity" CssClass="btnAddQuantity" OnClick="btnAddQuantity_Click"/>


        <!--GridView control-->
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" Height="114px" style="margin-top: 100px; left: 249px; top: 368px; width: 1252px;" CssClass="gridviewQuantity " OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit" DataKeyNames="PrdQuantID" OnRowDeleting="GridView1_RowDeleting" OnRowUpdating="GridView1_RowUpdating">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:TemplateField HeaderText="Quantity ID">
                    <EditItemTemplate>
                        <asp:Label ID="Label7" runat="server" Text='<%# Eval("PrdQuantID") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("PrdQuantID") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Category">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("Category") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Category") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Quantity">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("Quantity") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Operation">
                    <EditItemTemplate>
                        <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update">Update</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Delete">Delete</asp:LinkButton>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlantsDBConnectionString2 %>" SelectCommand="SELECT * FROM [tblProductSizeQuantity]" >
            
        </asp:SqlDataSource>
    </div>
</asp:Content>
