<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="空气净化.aspx.cs" Inherits="空气净化" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            width: 1455px;
            height: 709px;
        }
        .auto-style7 {
            width: 291px;
        }
        .auto-style8 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        
            <table class="auto-style6" style="background-color: #31AECE">
                <tr>
                    <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/image/logo.png" />
                    </td>
                    <td class="auto-style3" style="text-align: right">
                        <asp:LinkButton ID="LinkButton1" runat="server" style="text-decoration:none" Font-Size="20pt" ForeColor="White" PostBackUrl="~/首页.aspx">首页</asp:LinkButton>
&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton2" runat="server" style="text-decoration:none" Font-Size="20pt" ForeColor="White" PostBackUrl="~/产品中心.aspx">空气质量</asp:LinkButton>
&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton3" runat="server" style="text-decoration:none" Font-Size="20pt" ForeColor="White" PostBackUrl="~/产品中心.aspx">产品中心</asp:LinkButton>
&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton4" runat="server" style="text-decoration:none" Font-Size="20pt" ForeColor="White" PostBackUrl="~/问题建议.aspx">问题建议</asp:LinkButton>
&nbsp;&nbsp;
                        <asp:LinkButton ID="LinkButton5" runat="server" style="text-decoration:none" Font-Size="20pt" ForeColor="White" PostBackUrl="~/联系我们.aspx">联系我们</asp:LinkButton>
&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2" style="text-align: center; background-image: url('image/背景3.jpg');">
                        <table align="center" class="auto-style7">
                            <tr>
                                <td class="auto-style8">
                                    <asp:Button ID="Button1" runat="server" Height="35px" Text="点击连接设备" Width="153px" />
                                    <asp:Label ID="Label1" runat="server"></asp:Label>
                                </td>
                                <td class="auto-style8"></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="Button2" runat="server" Height="35px" Text="点击开始净化" Width="153px" />
                                    <asp:Label ID="Label2" runat="server"></asp:Label>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td style="text-align: left; font-size: 10px">河北北方学院<br />
                        信息科学与工程学院</td>
                    <td style="font-size: 10px; text-align: right">计算机科学与技术2019级4班15组</td>
                </tr>
            </table>
        
        </asp:Content>


