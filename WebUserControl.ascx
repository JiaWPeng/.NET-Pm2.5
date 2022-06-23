<%@ Control Language="C#" AutoEventWireup="true" CodeFile="WebUserControl.ascx.cs" Inherits="WebUserControl" %>
<style type="text/css">
    .auto-style1 {
        width: 760px;
        height: 60px;
    }
    .auto-style2 {
        height: 58px;
    }
</style>

<table class="auto-style1">
    <tr>
        <td style="vertical-align: top" class="auto-style2">
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
&nbsp;&nbsp;<asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Default4.aspx">校内外事</asp:HyperLink>
            &nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/newslist.aspx">精选文章</asp:HyperLink>
            &nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/newslist1.aspx">基础知识</asp:HyperLink>
            &nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/newslist2.aspx">开发技巧</asp:HyperLink>
            &nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/newslist3.aspx">音频视频</asp:HyperLink>
&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">退出</asp:LinkButton>
        &nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/adminlogin.aspx">管理员登录</asp:HyperLink>
        </td>
    </tr>
</table>