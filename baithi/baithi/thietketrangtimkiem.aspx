<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="thietketrangtimkiem.aspx.cs" Inherits="baithi.TimKiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding:20px; text-align:center">
        <div>TÌM KIẾM THÔNG TIN TRƯỜNG</div>
        <div>
    Nhập Mã Trường:
                        <asp:TextBox ID="txtMaTH" runat="server"></asp:TextBox>

           <asp:Button ID="btnmatr" runat="server" Text="Tìm theo Mã" />
</div>
        <div>
    Nhập Tên Trường:
                        <asp:TextBox ID="txtTenTH" runat="server"></asp:TextBox>

           <asp:Button ID="btntentr" runat="server" Text="Tìm theo Tên" />
</div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" HorizontalAlign="Center" PageSize="5">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MaTruong" HeaderText="Mã Trường" />
                    <asp:BoundField DataField="TenTruong" HeaderText="Tên Trường" />
                    <asp:CommandField SelectText="Chọn" ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </div>


    </div>
</asp:Content>
