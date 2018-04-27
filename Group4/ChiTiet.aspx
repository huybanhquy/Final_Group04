<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="Group4.ChiTiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Malhd" DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Malhd:
            <asp:Label Text='<%# Eval("Malhd") %>' runat="server" ID="MalhdLabel1" /><br />
            Mahd:
            <asp:TextBox Text='<%# Bind("Mahd") %>' runat="server" ID="MahdTextBox" /><br />
            Masp:
            <asp:TextBox Text='<%# Bind("Masp") %>' runat="server" ID="MaspTextBox" /><br />
            amount:
            <asp:TextBox Text='<%# Bind("amount") %>' runat="server" ID="amountTextBox" /><br />
            <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Malhd:
            <asp:TextBox Text='<%# Bind("Malhd") %>' runat="server" ID="MalhdTextBox" /><br />
            Mahd:
            <asp:TextBox Text='<%# Bind("Mahd") %>' runat="server" ID="MahdTextBox" /><br />
            Masp:
            <asp:TextBox Text='<%# Bind("Masp") %>' runat="server" ID="MaspTextBox" /><br />
            amount:
            <asp:TextBox Text='<%# Bind("amount") %>' runat="server" ID="amountTextBox" /><br />
            <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
        <ItemTemplate>
            Malhd:
            <asp:Label Text='<%# Eval("Malhd") %>' runat="server" ID="MalhdLabel" /><br />
            Mahd:
            <asp:Label Text='<%# Bind("Mahd") %>' runat="server" ID="MahdLabel" /><br />
            Masp:
            <asp:Label Text='<%# Bind("Masp") %>' runat="server" ID="MaspLabel" /><br />
            amount:
            <asp:Label Text='<%# Bind("amount") %>' runat="server" ID="amountLabel" /><br />
            <asp:LinkButton runat="server" Text="Edit" CommandName="Edit" ID="EditButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="Delete" CommandName="Delete" ID="DeleteButton" CausesValidation="False" />&nbsp;<asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:QLBANHANG_NHOM4ConnectionString6 %>' DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [Malhd] = @Malhd" InsertCommand="INSERT INTO [ChiTietHoaDon] ([Malhd], [Mahd], [Masp], [amount]) VALUES (@Malhd, @Mahd, @Masp, @amount)" SelectCommand="SELECT * FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [Mahd] = @Mahd, [Masp] = @Masp, [amount] = @amount WHERE [Malhd] = @Malhd">
        <DeleteParameters>
            <asp:Parameter Name="Malhd" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Malhd" Type="String"></asp:Parameter>
            <asp:Parameter Name="Mahd" Type="String"></asp:Parameter>
            <asp:Parameter Name="Masp" Type="String"></asp:Parameter>
            <asp:Parameter Name="amount" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Mahd" Type="String"></asp:Parameter>
            <asp:Parameter Name="Masp" Type="String"></asp:Parameter>
            <asp:Parameter Name="amount" Type="String"></asp:Parameter>
            <asp:Parameter Name="Malhd" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="BottomPage" runat="server">
</asp:Content>
