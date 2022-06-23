<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="editnews.aspx.cs" Inherits="editnews" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            width: 100%;
            height: 360px;
        }
        .auto-style4 {
        }
        .auto-style5 {
            width: 93px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style3">
        <tr>
            <td colspan="2" style="text-align: center">修改新闻</td>
        </tr>
        <tr>
            <td class="auto-style5">新闻标题</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="334px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">所属栏目：</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>新闻快讯</asp:ListItem>
                    <asp:ListItem>优化空气</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">内容</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Height="34px" Width="391px" TextMode="MultiLine"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="2" style="text-align: center">
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="提交" />
            </td>
        </tr>
    </table>
</asp:Content>
