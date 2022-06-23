<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="details.aspx.cs" Inherits="details" %>

<%@ Register src="WebUserControl.ascx" tagname="WebUserControl" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <uc1:WebUserControl ID="WebUserControl1" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="height: 340px; vertical-align: top; text-align: center">
                <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" GridLines="None" Height="50px" Width="80%">
                    <Fields>
                        <asp:BoundField DataField="标题">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="作者">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="内容">
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                    </Fields>
                </asp:DetailsView>
            </td>
        </tr>
    </table>
</asp:Content>
