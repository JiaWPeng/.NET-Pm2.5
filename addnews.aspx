<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="addnews.aspx.cs" Inherits="addnews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        height: 21px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
    <tr>
        <td colspan="2" style="text-align: center">添加新闻</td>
    </tr>
    <tr>
        <td class="auto-style4">新闻标题</td>
        <td class="auto-style4">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>内容</td>
        <td>
            <asp:TextBox ID="TextBox2" runat="server" Height="303px" TextMode="MultiLine" Width="439px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>所属栏目</td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>新闻快讯</asp:ListItem>
                <asp:ListItem>优化空气</asp:ListItem>
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="添加" />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="重置" />
        </td>
    </tr>
</table>
</asp:Content>

