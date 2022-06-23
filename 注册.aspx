<%@ Page Language="C#" AutoEventWireup="true" CodeFile="注册.aspx.cs" Inherits="注册" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1455px;
            height: 698px;
        }
        .auto-style2 {
            width: 780px;
        }
        .auto-style3 {
            height: 671px;
            width: 3816px;
        }
        .auto-style4 {
            width: 780px;
            height: 671px;
        }
        .auto-style5 {
            width: 496px;
            height: 141px;
        }
        .auto-style6 {
            width: 3816px;
        }
        .auto-style7 {
            height: 23px;
        }
        .auto-style8 {
            height: 20px;
        }
        </style>
</head>
<body style="height: 696px; width: 1458px">
    <form id="form1" runat="server">
    <div style="background-image: url('image/index.jpg')">
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/image/logo2.png" />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td class="auto-style4" style="text-align: center">
                    <table class="auto-style5">
                        <tr>
                            <td>
                                <asp:Image ID="Image6" runat="server" Height="129px" ImageUrl="~/image/用户注册.png" Width="306px" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image3" runat="server" Height="16px" ImageUrl="~/image/账号.png" Width="50px" />
                                <asp:TextBox ID="TextBox1" runat="server" Height="20px" Width="240px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image4" runat="server" Height="16px" ImageUrl="~/image/密码.png" Width="50px" />
                                <asp:TextBox ID="TextBox2" runat="server" Height="20px" Width="240px" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Image ID="Image7" runat="server" Height="18px" ImageUrl="~/image/确认登录.png" Width="50px" />
                                <asp:TextBox ID="TextBox3" runat="server" Height="20px" Width="240px" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style8" style="text-align: center">&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Red">以上必填</asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                                &nbsp;
                                <asp:ImageButton ID="ImageButton1" runat="server" Height="42px" ImageUrl="~/image/注册.png" OnClick="ImageButton1_Click1" Width="305px" />
                            &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" Height="42px" ImageUrl="~/image/登录.png" OnClick="ImageButton2_Click" Width="305px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="color: #FFFFFF; font-size: 10px;">河北北方学院<br />
                    信息科学与工程学院</td>
                <td class="auto-style2" style="font-size: 10px; color: #FFFFFF; text-align: right">计算机科学与技术2019级4班15组</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>