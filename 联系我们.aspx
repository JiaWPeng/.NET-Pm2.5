<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="联系我们.aspx.cs" Inherits="联系我们" %>

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
                        <asp:LinkButton ID="LinkButton1" style="text-decoration:none" runat="server" Font-Size="20pt" ForeColor="White" PostBackUrl="~/首页.aspx">首页</asp:LinkButton>
&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" style="text-decoration:none" runat="server" Font-Size="20pt" ForeColor="White" PostBackUrl="~/空气质量.aspx">空气质量</asp:LinkButton>
&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton3" style="text-decoration:none" runat="server" Font-Size="20pt" ForeColor="White" PostBackUrl="~/产品中心.aspx">产品中心</asp:LinkButton>
&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton4" style="text-decoration:none" runat="server" Font-Size="20pt" ForeColor="White" PostBackUrl="~/问题建议.aspx">问题建议</asp:LinkButton>
&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton5" style="text-decoration:none" runat="server" Font-Size="20pt" ForeColor="White" PostBackUrl="~/联系我们.aspx">联系我们</asp:LinkButton>
&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2" style="background-image: url('image/背景1.jpg'); text-align: center; color: #FFFFFF; font-size: 20px; font-family: 华康方圆体W7(P);">工作时间：周一至周五（8:00-18:00）<br />
                        邮箱：2431652649@qq.com<br />
                        服务热线：100000000</td>
                </tr>
                <tr>
                    <td style="text-align: left; font-size: 10px">河北北方学院<br />
                        信息科学与工程学院</td>
                    <td style="font-size: 10px; text-align: right">计算机科学与技术2019级4班15组</td>
                </tr>
            </table>
        
        </asp:Content>


