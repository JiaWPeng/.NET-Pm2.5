<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="首页.aspx.cs" Inherits="首页" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 1455px;
            height: 709px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        
            <table class="auto-style4" style="background-color: #31AECE">
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/logo.png" />
                    </td>
                    <td class="auto-style3" style="text-align: right">
                        <asp:LinkButton ID="LinkButton1" runat="server" style="text-decoration:none" Font-Size="20pt" ForeColor="White" PostBackUrl="~/首页.aspx">首页</asp:LinkButton>
&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" style="text-decoration:none" Font-Size="20pt" ForeColor="White" PostBackUrl="~/空气质量.aspx">空气质量</asp:LinkButton>
&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton3" runat="server" style="text-decoration:none" Font-Size="20pt" ForeColor="White" PostBackUrl="~/产品中心.aspx">产品中心</asp:LinkButton>
&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton4" runat="server" style="text-decoration:none" Font-Size="20pt" ForeColor="White" PostBackUrl="~/问题建议.aspx">问题建议</asp:LinkButton>
&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton5" runat="server" style="text-decoration:none" Font-Size="20pt" ForeColor="White" PostBackUrl="~/联系我们.aspx">联系我们</asp:LinkButton>
&nbsp;&nbsp;<asp:LinkButton ID="LinkButton6" runat="server" style="text-decoration:none" Font-Size="10pt" ForeColor="White" PostBackUrl="~/adminlogin.aspx">管理员登录</asp:LinkButton>
                        &nbsp;&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2" style="background-image: url('image/背景4.jpg'); text-align: center;">
                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/image/净化空气.png" OnClick="ImageButton1_Click" PostBackUrl="~/空气净化.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                       <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/空气质量.png" PostBackUrl="~/空气质量.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/image/新闻.png" PostBackUrl="~/新闻.aspx" OnClick="ImageButton3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:ImageButton ID="ImageButton4" runat="server" ForeColor="White" ImageUrl="~/image/app-item01-icon05.jpg" PostBackUrl="~/更多.aspx" />
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left; font-size: 10px">河北北方学院<br />
                        信息科学与工程学院</td>
                    <td style="font-size: 10px; text-align: right">计算机科学与技术2019级4班15组</td>
                </tr>
            </table>
        
        </asp:Content>


