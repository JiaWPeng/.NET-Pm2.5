<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Addadmin.aspx.cs" Inherits="Addadmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style3 {
        width: 100%;
    }
    .auto-style4 {
        width: 300px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
    <tr>
        <td style="height: 360px; text-align: center;">
            <table class="auto-style4">
                <tr>
                    <td colspan="2">添加管理员</td>
                </tr>
                <tr>
                    <td>账号：</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>密码：</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="添加" />
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="重置" />
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>