<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="capnhattruonghoc.aspx.cs" Inherits="baithi.CapNhat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="padding:20px; text-align:center">
        <div>DANH SÁCH TRUÒNG HỌC</div>
        <div>
            Mã trường:
            <asp:TextBox ID="txtMaTH" runat="server"></asp:TextBox>
        </div>
        <div>
            Tên trường:
            <asp:TextBox ID="txtTenTH" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" PageSize="3">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="MaTruong" HeaderText="Mã trường" />
                    <asp:BoundField DataField="TenTruong" HeaderText="Tên truòng" />
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
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
        <div>
            <asp:Button ID="btnthem" runat="server" Text="Thêm" OnClick="btnthem_Click" />
            <asp:Button ID="btnluu" runat="server" Text="Lưu" OnClick="btnluu_Click" />
            <asp:Button ID="btnxoa" runat="server" Text="Xóa" OnClick="btnxoa_Click" />
            <asp:Button ID="btnsua" runat="server" Text="Sửa" OnClick="btnsua_Click" />
        </div>

    </div>
</asp:Content>
