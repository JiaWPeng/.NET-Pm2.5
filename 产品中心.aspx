<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="产品中心.aspx.cs" Inherits="产品中心" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 1455px;
            height: 709px;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
        
            <table class="auto-style8" style="background-color: #31AECE">
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
&nbsp;&nbsp; </td>
                </tr>
                <tr>
                    <td class="auto-style2" colspan="2" style="background-image: url('image/背景2.jpg'); text-align: center">
                        <table class="auto-style9">
                            <tr>
                                <td class="auto-style10" style="color: #FFFFFF">
                                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/image/捕获.PNG" Height="182px" Width="205px" />
                                    <br />
                                    华为智选 720全效空气净化器1i<br />
                                    支持鸿蒙智联</td>
                                <td class="auto-style10" style="color: #FFFFFF">
                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="181px" ImageUrl="~/image/加湿器.PNG" Width="205px" />
                                    <br />
                                    HUAWEI HiLink生态产品<br />
                                    720全效空气净化器C400</td>
                                <td class="auto-style10" style="color: #FFFFFF">
                                    <asp:ImageButton ID="ImageButton3" runat="server" Height="181px" ImageUrl="~/image/冰箱.PNG" Width="209px" />
                                    <br />
                                    美的冰箱 BCD-603WKGPZM<br />
                                    支持鸿蒙智联</td>
                                <td class="auto-style10" style="color: #FFFFFF">
                                    <asp:ImageButton ID="ImageButton4" runat="server" Height="181px" ImageUrl="~/image/空调.PNG" Width="194px" />
                                    <br />
                                    美的无感换新风一级变频智能空调<br />
                                    KFR-26GW/K-H1<br />
                                    支持鸿蒙智联</td>
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

