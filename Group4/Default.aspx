<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Group4._Default" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" CellPadding="4" RepeatColumns="4" Width="115px">
        <ItemTemplate>           
        <div id="wrapper">
        <div id="content">
            <div class="container">
                  <asp:Image ImageUrl='<%# Eval("Image") %>' runat="server" ID="ImageLabel" /><br />
                <div class="overlay">
                    <div class="text">
                       <asp:Label Text='<%# Eval("Ten") %>' runat="server" ID="TenLabel" /><br />
                        Giá bán:
                        <asp:Label Text='<%# Eval("Gia") %>' runat="server" ID="GiaLabel" /><br />
                        </div>
                    <button >Mua ngay</button>
                </div>
            </div>            
        </div>
    </div>
</ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:QLBANHANG_NHOM4ConnectionString7 %>' SelectCommand="SELECT [Ten], [Gia], [Image] FROM [SanPham]"></asp:SqlDataSource> 
        </asp:Content>
<asp:Content runat="server" ID="BottomContent" ContentPlaceHolderID="BottomPage">
</asp:Content>
