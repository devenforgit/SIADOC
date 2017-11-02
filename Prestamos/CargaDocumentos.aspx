<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Prestamos_CargaDocumentos, App_Web_rn5pk5zs" title=".: SIADOC - Carga de Documentos :." theme="Default" %>
<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" Text="Carga masiva de documentos "
                        Width="314px"></asp:Label>
                </td>
            </tr>
            <tr visible="false">
                <td style="height: 29px; text-align: left;" colspan="2">
                    
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="~/PlantillaPrestamos.xls" Width="200px">Descargar Plantilla de Carga</asp:HyperLink>
                    
                </td>
            </tr>
            <tr visible="false">
                <td style="height: 29px; text-align: left; width: 100px;">
                    
                    &nbsp;</td>
                <td style="height: 29px; text-align: left;">
                    &nbsp;</td>
            </tr>
            <tr visible="false">
                <td style="height: 29px; text-align: center;" colspan="2">
                    
                    <table style="width:90%;">
                        <tr>
                            <td style="text-align: left">
                    <asp:Label ID="Label4" runat="server" Text="Ubicacion de archivo Excel: "></asp:Label>
                            </td>
                            <td>
                    <asp:TextBox runat="server" ID="txtExcel"></asp:TextBox>
                    <asp:FileUpload ID="fupExcel" runat="server" Width="212px" />
                                <asp:Button ID="btnCargar" runat="server" CausesValidation="false" Text="Cargar"
                        OnClick="btnCargar_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                    <asp:RequiredFieldValidator runat="server" ID="rfv2" ControlToValidate="txtExcel"
                        Display="None" ErrorMessage="Ingrese Ubicación del archivo Excel"></asp:RequiredFieldValidator>
                    <asp:TextBox Visible=false runat="server" ID="txtRuta"></asp:TextBox>
                    
                    <asp:TextBox Visible=false runat="server" ID="txtFolder" Style="margin-left: 0px"></asp:TextBox>
                    
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td style="text-align: left">
                    <asp:Button ID="btnMigrar" Width="100px" Enabled="false" runat="server" Text="Migrar"
                        OnClick="btnMigrar_Click" />
                    &nbsp; <asp:Button ID="btnCompletar" Width="100px" runat="server" Text="Completar"
                        OnClick="btnCompletar_Click" Visible="false" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="height: 29px; text-align: left; width: 100px;">
                    &nbsp;</td>
                <td style="height: 29px; text-align: left;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 1px; text-align: right; width: 100px;">
                </td>
                <td style="height: 1px">
                    &nbsp;
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
