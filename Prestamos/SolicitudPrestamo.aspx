<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" validaterequest="false" inherits="SolicitudPrestamo_Form, App_Web_rn5pk5zs" title=" .: SIADOC - Solicitar Préstamo de Documento :." theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" Text="Solicitudes de Préstamo "
                        Width="314px"></asp:Label>
                </td>
            </tr>          
            <tr>
                <td style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label1" runat="server" Text="Solicitante : "></asp:Label>
                </td>
                <td style="width: 100px; height: 29px; text-align: left;">
                    <asp:DropDownList ID="ddlUsuarios" runat="server" Width="245px" Height="16px">
                    </asp:DropDownList>
                    <anthem:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="ddlUsuarios"
                        Display="None" ErrorMessage="Seleccione Solicitud">
                    </anthem:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label7" runat="server" Text="Gerencia : "></asp:Label>
                </td>
                <td style="width: 100px; height: 29px; text-align: left;">
                    <asp:DropDownList ID="ddlGerencia" runat="server" Width="245px" Height="16px">
                    </asp:DropDownList>
                    <anthem:RequiredFieldValidator ID="rfv11" runat="server" ControlToValidate="ddlGerencia"
                        Display="None" ErrorMessage="Seleccione Gerencia">
                    </anthem:RequiredFieldValidator>
                </td>
            </tr>
            
            <tr>
                <td style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label3" runat="server" Text="Id Trámite : "></asp:Label>
                </td>
                <td style="width: 100px; height: 29px; text-align: left;">
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td style="width: 100px">
                                <asp:TextBox ID="txtIdTramite" runat="server" Width="97px"></asp:TextBox>
                            </td>
                            <td style="width: 19px">
                            </td>
                            <td style="width: 100px">
                                <img onclick="javascript:window.open('DocumentoTramite_Form.aspx','popUp','width=650,height=450,resizable=yes,toolbar=no');"
                                    src="../Img/zoom_16x16.gif" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label4" runat="server" Text="Descripción : "></asp:Label>
                </td>
                <td style="width: 100px; height: 29px; text-align: left;">
                    <asp:TextBox ID="txtDescripcion" runat="server" Height="43px" TextMode="MultiLine"
                        Width="240px"></asp:TextBox>
                    <anthem:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtDescripcion"
                        Display="None" ErrorMessage="Ingrese una descripcion">
                    </anthem:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label6" runat="server" Text="Archivo  : "></asp:Label>
                </td>
                <td style="width: 100px; height: 29px; text-align: left;">
                    <asp:DropDownList ID="ddlArchivo" runat="server" Width="245px">
                    </asp:DropDownList>
                    <anthem:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="ddlArchivo"
                        Display="None" ErrorMessage="Seleccione Archivo">
                    </anthem:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 155px; height: 29px; text-align: left">
                    <asp:Label ID="Label9" runat="server" Visible=false Text="Adjuntar Archivo  : " Width="134px"></asp:Label>
                </td>
                <td style="width: 100px; height: 29px; text-align: left">
                    <table border="0" cellpadding="0" cellspacing="0" style="width: 286px">
                        <tr>
                            <td>
                                <input type="file" runat="server" visible=false id="file2" style="width: 245px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="width: 155px; height: 29px; text-align: right">
                </td>
                <td style="width: 100px; height: 29px">
                </td>
            </tr>
            <tr>
                <td style="width: 155px; height: 29px; text-align: right">
                </td>
                <td style="width: 100px; height: 29px" align="right">
                    <asp:Button ID="Button1" runat="server" Text="Registrar" OnClick="Button1_Click" />
                </td>
            </tr>
            </table>
        <anthem:ValidationSummary DisplayMode="List" ShowSummary="false" ID="ValidationSummary1"
            runat="server" ShowMessageBox="True" />
    </div>
</asp:Content>
