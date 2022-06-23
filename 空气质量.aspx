<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="空气质量.aspx.cs" Inherits="空气质量" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style4 {
            width: 260px;
        }
        .auto-style5 {
            width: 228px;
        }
        .auto-style6 {
            width: 228px;
            height: 27px;
        }
        .auto-style7 {
            height: 27px;
        }
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
                        <table align="center" class="auto-style4">
                            <tr>
                                <td class="auto-style6">
                                    <asp:Chart ID="Chart1" runat="server" BackColor="CornflowerBlue" BorderlineColor="CornflowerBlue"  Width="700px" BackGradientStyle="Center">
                                        <series>
                                            <asp:Series ChartType="StackedColumn" Name="Series1" YValuesPerPoint="2" ChartArea="ChartArea1">
                                                <Points>
                                                    <asp:DataPoint YValues="0,0" />
                                                </Points>
                                            </asp:Series>
                                            <asp:Series ChartArea="ChartArea1" Name="Series2">
                                                <Points>
                                                    <asp:DataPoint YValues="0" />
                                                </Points>
                                            </asp:Series>
                                        </series>
                                        <chartareas>
                                            <asp:ChartArea Name="ChartArea1" >
                                                <AxisY Maximum="300" Minimum="0" TextOrientation="Stacked" Title="PM2'5值">
                                                    <MajorGrid  LineWidth="0"/>
                                                </AxisY>
                                                <AxisX Interval="1" Maximum="8" Minimum="0" Title="时间 / 天（平均值)">

                                                </AxisX>
                                            </asp:ChartArea>
                                        </chartareas>
                                    </asp:Chart>
                                    <asp:Button ID="Button1" runat="server" Text="开始连接传感器" Height="35px" Width="153px" OnClick="Button1_Click" />
                                    <asp:Button ID="Button2" runat="server" Text="开始检测空气质量" Width="153px" Height="35px" OnClick="Button2_Click1" />
                                    <asp:Label ID="Label3" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <asp:Label ID="Label4" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <asp:Label ID="Label6" runat="server" Text="Label" Visible="False"></asp:Label>
                                    <br />
                                    当前设备状态：<asp:Label ID="Label1" runat="server">未连接</asp:Label>
                                    <br />
                                    PM2.5值：<asp:Label ID="Label2" runat="server">设备未连接</asp:Label>
                                </td>
                                <td class="auto-style7">
                                    <table class="auto-style9">
                                        <tr>
                                            <td class="auto-style10"></td>
                                            <td class="auto-style10">
                                                <asp:Chart ID="Chart2" runat="server" BackColor="CornflowerBlue" Height="200px" BorderlineColor="CornflowerBlue" BorderlineDashStyle="Solid">
                                                    <Series>
                                                        <asp:Series ChartType="Pie" Name="Series1" ChartArea="ChartArea1">
                                                        </asp:Series>
                                                    </Series>
                                                    <ChartAreas>
                                                        <asp:ChartArea Name="ChartArea1">
                                                            <AxisY Maximum="300" Minimum="0" TextOrientation="Stacked" Title="PM2'5值">
                                                    <MajorGrid  LineWidth="0"/>
                                                </AxisY>
                                                <AxisX Interval="1" Maximum="8" Minimum="0" Title="时间 / 天（平均值)">

                                                </AxisX>
                                                        </asp:ChartArea>
                                                    </ChartAreas>
                                                </asp:Chart>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;</td>
                                            <td>
                                                <asp:Chart ID="Chart3" runat="server" BackColor="CornflowerBlue" BackGradientStyle="Center" Height="200px">
                                                    <Series>
                                                        <asp:Series ChartType="Pie" Name="Series1">
                                                        </asp:Series>
                                                    </Series>
                                                    <ChartAreas>
                                                        <asp:ChartArea Name="ChartArea1">
                                                            <AxisY Maximum="300" Minimum="0" TextOrientation="Stacked" Title="PM2'5值">
                                                    <MajorGrid  LineWidth="0"/>
                                                </AxisY>
                                                <AxisX Interval="1" Maximum="8" Minimum="0" Title="时间 / 天（平均值)">

                                                </AxisX>
                                                        </asp:ChartArea>
                                                    </ChartAreas>
                                                </asp:Chart>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style5">
                                    &nbsp;</td>
                                <td style="vertical-align: text-bottom">&nbsp;</td>
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


