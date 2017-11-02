<%--
================================================================================================
Motivo			Fecha			Nombre		Descripción
================================================================================================
FON_CGC-947		18/08/2017		GMD			Correción de errores
--%>
<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Inventario_CargaMasivaUC, App_Web_sdv2cw23" theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style3">
        <tr>
            <td class="style41" align="left" colspan="3">
                <table align="center" cellpadding="0" cellspacing="0" class="style36">
                    <tr>
                        <td class="style57">
                            <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Archivo Cabecera:" Width="114px"></asp:Label>
                        </td>
                        <td class="style46">
                            <asp:FileUpload ID="FileCabecera" runat="server" />
                        </td>
                        <td class="style47">
							<!-- FON_CGC-947 - INICIO -->
							<%-- 
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl="~/Inventario/PlantillaCabecera.xls" Target="_blank">Descargar plantilla de Carga</asp:HyperLink>
							--%>
                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl="~/Inventario/PlantillaCarga.xls" Target="_blank">Descargar plantilla de Carga</asp:HyperLink>
							<!-- FON_CGC-947 - FIN -->
                        </td>
                    </tr>
                    <tr>
                        <td class="style54">
                        </td>
                        <td class="style55">
                            <asp:Label ID="lblcabecera" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Width="78px"></asp:Label>
                        </td>
                        <td class="style56">
                            </td>
                    </tr>
                    <tr>
                        <td class="style45">
                        </td>
                        <td class="style58">
                            <asp:Button ID="btnValidar" runat="server" Text="Validar Datos" 
                                onclick="btnValidar_Click" />
                        &nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnCargar" runat="server" Text="Importar Datos" 
                                onclick="btnCargar_Click" />
                        </td>
                        <td class="style59">
                            </td>
                    </tr>
                    <tr>
                        <td class="style39" colspan="3">
                        <asp:Label ID="lblmensaje" runat="server" Font-Names="Arial" Font-Size="8pt" 
                            ForeColor="Red" Width="100%"></asp:Label>
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td class="style18" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style33">
            &nbsp;</td>
            <td class="style8">
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

