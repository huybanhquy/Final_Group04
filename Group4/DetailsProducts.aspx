<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DetailsProducts.aspx.cs" Inherits="Group4.DetailsProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Masp" DataSourceID="SqlDataSource1" AllowPaging="True">
        <EditItemTemplate>
            Masp:
            <asp:Label Text='<%# Eval("Masp") %>' runat="server" ID="MaspLabel1" /><br />
            Malsp:
            <asp:TextBox Text='<%# Bind("Malsp") %>' runat="server" ID="MalspTextBox" /><br />
            Ten:
            <asp:TextBox Text='<%# Bind("Ten") %>' runat="server" ID="TenTextBox" /><br />
            Gia:
            <asp:TextBox Text='<%# Bind("Gia") %>' runat="server" ID="GiaTextBox" /><br />
            Mota:
            <asp:TextBox Text='<%# Bind("Mota") %>' runat="server" ID="MotaTextBox" /><br />
            Image:
            <asp:TextBox Text='<%# Bind("Image") %>' runat="server" ID="ImageTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Masp:
            <asp:TextBox Text='<%# Bind("Masp") %>' runat="server" ID="MaspTextBox" /><br />
            Malsp:
            <asp:TextBox Text='<%# Bind("Malsp") %>' runat="server" ID="MalspTextBox" /><br />
            Ten:
            <asp:TextBox Text='<%# Bind("Ten") %>' runat="server" ID="TenTextBox" /><br />
            Gia:
            <asp:TextBox Text='<%# Bind("Gia") %>' runat="server" ID="GiaTextBox" /><br />
            Mota:
            <asp:TextBox Text='<%# Bind("Mota") %>' runat="server" ID="MotaTextBox" /><br />
            Image:
            <asp:TextBox Text='<%# Bind("Image") %>' runat="server" ID="ImageTextBox" /><br />
            <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
             Image:
            <asp:Image ImageUrl='<%# Bind("Image") %>' runat="server" ID="ImageLabel" /><br />
            Masp:
            <asp:Label Text='<%# Eval("Masp") %>' runat="server" ID="MaspLabel" /><br />
            Malsp:
            <asp:Label Text='<%# Bind("Malsp") %>' runat="server" ID="MalspLabel" /><br />
            Ten:
            <asp:Label Text='<%# Bind("Ten") %>' runat="server" ID="TenLabel" /><br />
            Gia:
            <asp:Label Text='<%# Bind("Gia") %>' runat="server" ID="GiaLabel" /><br />
            Mota:
            <asp:Label Text='<%# Bind("Mota") %>' runat="server" ID="MotaLabel" /><br />
           
            <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:QLBANHANG_NHOM4ConnectionString8 %>' DeleteCommand="DELETE FROM [SanPham] WHERE [Masp] = @Masp" InsertCommand="INSERT INTO [SanPham] ([Masp], [Malsp], [Ten], [Gia], [Mota], [Image]) VALUES (@Masp, @Malsp, @Ten, @Gia, @Mota, @Image)" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [Malsp] = @Malsp, [Ten] = @Ten, [Gia] = @Gia, [Mota] = @Mota, [Image] = @Image WHERE [Masp] = @Masp">
        <DeleteParameters>
            <asp:Parameter Name="Masp" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Masp" Type="String"></asp:Parameter>
            <asp:Parameter Name="Malsp" Type="String"></asp:Parameter>
            <asp:Parameter Name="Ten" Type="String"></asp:Parameter>
            <asp:Parameter Name="Gia" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Mota" Type="String"></asp:Parameter>
            <asp:Parameter Name="Image" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Malsp" Type="String"></asp:Parameter>
            <asp:Parameter Name="Ten" Type="String"></asp:Parameter>
            <asp:Parameter Name="Gia" Type="Decimal"></asp:Parameter>
            <asp:Parameter Name="Mota" Type="String"></asp:Parameter>
            <asp:Parameter Name="Image" Type="String"></asp:Parameter>
            <asp:Parameter Name="Masp" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BottomPage" runat="server">
</asp:Content>
