<%@ Page Title="Category" Language="C#" MasterPageFile="~/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="Category.aspx.cs" Inherits="PLANTS.Manage.Category" enableEventValidation="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <link rel="stylesheet" href="../Style/manage.css"/>
     <link rel="stylesheet" href="../Style/Category.css"/>

    <div class="managecon">
        <h2>Manage</h2><br /><br /><br />
        <a href="Category.aspx"><span>Category</span></a><br /><br />
        <a href="Quantity.aspx"><span>Quantity</span></a><br /><br />
        <a href="AddProduct.aspx"><span>Add Product</span></a><br /><br />
        <a href="Product Details.aspx"><span>Product Details</span></a>
    </div>

    <div class="CategoryCon">
        <h3>Add Category</h3>       
        <asp:Label ID="Label1" runat="server" Text="Category Name" CssClass="lblCategoryName"></asp:Label>
        <asp:TextBox ID="txtCategoryName" runat="server" CssClass="txtCategoryName"></asp:TextBox>
        <br />
        <asp:Button ID="btnAddCategory" runat="server" Text="Add Category" CssClass="btnAddCategory" OnClick="btnAddCategory_Click"/>
             
     
     </div>
    

    <!--GridView control-->
    <asp:GridView ID="GridView1" runat="server" CssClass="gridviewcategory" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating" style="left: 4px; top: 82px; width: 1283px" OnRowDeleting="GridView1_RowDeleting">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField HeaderText="Category ID">
                <EditItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Eval("CatID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("CatID") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Category Name">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("CatName") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("CatName") %>'></asp:Label>
                </ItemTemplate>
                <ItemStyle HorizontalAlign="Center" />
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Operation">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton3" runat="server" CommandName="Update">Update</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="LinkButton4" runat="server" CommandName="Cancel">Cancel</asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Edit</asp:LinkButton>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="btn_delete" runat="server" CommandName="Delete">Delete</asp:LinkButton>
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
     <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlantsDBConnectionString %>" DeleteCommand="DELETE FROM [tblCategory] WHERE [CatID] = @CatID" InsertCommand="INSERT INTO [tblCategory] ([CatName]) VALUES (@CatName)" SelectCommand="SELECT * FROM [tblCategory]" UpdateCommand="UPDATE [tblCategory] SET [CatName] = @CatName WHERE [CatID] = @CatID">
    <DeleteParameters>
        <asp:Parameter Name="CatID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="CatName" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="CatName" Type="String" />
        <asp:Parameter Name="CatID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>
