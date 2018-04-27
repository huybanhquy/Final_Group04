<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="HoaDon.aspx.cs" Inherits="Group4.HoaDon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Mahd" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Mahd:
            <asp:Label Text='<%# Eval("Mahd") %>' runat="server" ID="MahdLabel1" /><br />
            Sohd:
            <asp:TextBox Text='<%# Bind("Sohd") %>' runat="server" ID="SohdTextBox" /><br />
            MaKh:
            <asp:TextBox Text='<%# Bind("MaKh") %>' runat="server" ID="MaKhTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Mahd:
            <asp:TextBox Text='<%# Bind("Mahd") %>' runat="server" ID="MahdTextBox" /><br />
            Sohd:
            <asp:TextBox Text='<%# Bind("Sohd") %>' runat="server" ID="SohdTextBox" /><br />
            MaKh:
            <asp:TextBox Text='<%# Bind("MaKh") %>' runat="server" ID="MaKhTextBox" /><br />
            <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            Mahd:
            <asp:Label Text='<%# Eval("Mahd") %>' runat="server" ID="MahdLabel" /><br />
            Sohd:
            <asp:Label Text='<%# Bind("Sohd") %>' runat="server" ID="SohdLabel" /><br />
            MaKh:
            <asp:Label Text='<%# Bind("MaKh") %>' runat="server" ID="MaKhLabel" /><br />
            <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:QLBANHANG_NHOM4ConnectionString5 %>' DeleteCommand="DELETE FROM [HoaDon] WHERE [Mahd] = @Mahd" InsertCommand="INSERT INTO [HoaDon] ([Mahd], [Sohd], [MaKh]) VALUES (@Mahd, @Sohd, @MaKh)" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [Sohd] = @Sohd, [MaKh] = @MaKh WHERE [Mahd] = @Mahd">
        <DeleteParameters>
            <asp:Parameter Name="Mahd" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Mahd" Type="String"></asp:Parameter>
            <asp:Parameter Name="Sohd" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="MaKh" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Sohd" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="MaKh" Type="String"></asp:Parameter>
            <asp:Parameter Name="Mahd" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BottomPage" runat="server">
</asp:Content>
