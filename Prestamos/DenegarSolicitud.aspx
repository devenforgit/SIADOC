<%@ page language="c#" autoeventwireup="true" masterpagefile="~/MasterPages/Logon.master" inherits="DenegarSolicitud_Form, App_Web_rn5pk5zs" theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
   
        <table border="0" cellpadding="0" cellspacing="0" width="100%">
            <tr>
                <td style="width: 39px">
                </td>
                <td colspan="3">
                    <hr />
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 39px">
                </td>
                <td colspan="3">
                    <img src="../Img/message.gif" />
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 39px">
                </td>
                <td colspan="3">
                    <asp:Label ID="Label5" runat="server"  Font-Bold="True" Font-Size="Small"
                        Width="314px"></asp:Label>
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 39px">
                </td>
                <td style="width: 100px; text-align: left">
                    <asp:Label ID="Label1" runat="server"  Text="Usuario : " Width="77px"></asp:Label>
                </td>
                <td colspan="2" style="text-align: left">
                    <asp:DropDownList ID="ddlUsuario" runat="server"  Width="306px">
                    </asp:DropDownList>
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 39px; height: 38px">
                </td>
                <td style="width: 100px; height: 38px; text-align: left">
                    <asp:Label ID="Label2" runat="server"  Text="Motivo del Rechazo de Solicitud : "
                        Width="137px"></asp:Label>
                </td>
                <td colspan="2" style="height: 38px">
                    <asp:TextBox ID="txtMessage" runat="server"  Height="75px" TextMode="MultiLine"
                        Width="297px"></asp:TextBox>
                </td>
                <td style="width: 100px; height: 38px">
                </td>
            </tr>
            <tr>
                <td style="width: 39px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 100px">
                </td>
                <td style="width: 210px; text-align: right">
                    <asp:Button ID="Button1" runat="server" Text="Enviar" Width="78px" OnClick="Button1_Click" />
                    <asp:Button ID="Button2" runat="server" Text="Cancelar" Width="78px" OnClick="Button2_Click" />
                </td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td style="width: 39px">
                </td>
                <td colspan="3">
                    <hr />
                </td>
                <td style="width: 100px">
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
