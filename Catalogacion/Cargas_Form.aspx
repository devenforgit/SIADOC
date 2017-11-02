<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Maestros_Cargas_Form, App_Web_i2t0mwo5" title=".: SIADOC - Carga Masiva de Indices :." theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="smalltextgrey">
                    <asp:Label ID="Label7" runat="server" Font-Bold="True" 
            Font-Size="Small" Text="Carga masiva de Indices"
                        Width="314px"></asp:Label>
    </div>
    <br />
    <br />
    <anthem:Panel ID="pnl_EditGrid" runat="server" Visible="True" Width="100%" Height="100%">
        <table style="width: 100%">
            <tr align="left">
                <td align="left">
                    <asp:HyperLink ID="HyperLink1" runat="server" Height="16px" 
                        NavigateUrl="~/PlantillaCatalogacion.xls" Width="200px">Descargar Plantilla de Carga</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td style="height: 20px; text-align: left;">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    <table style="width: 90%">
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label4" runat="server"  Text="Ruta de Adjuntos :"
                                    Width="150px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txtFolder" runat="server" Width="200px" 
                                    OnTextChanged="TextBox6_TextChanged"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label2" runat="server"  Text="Ruta de Excel Carga : "
                                    Width="150px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_ruta" runat="server" Width="0px" OnTextChanged="TextBox6_TextChanged"
                                    MaxLength="49">
                                </anthem:TextBox>
                                <input id="File2" onchange="change(this);" type="file" onclick="return File1_onclick()"
                                    runat="server" />
                                <asp:Button ID="Button2" CausesValidation="false" runat="server" Text="Adjuntar"
                                    OnClick="Button2_Click" />
                            </td>
                        </tr>
                        <tr>
                            <td align="left" style="height: 11px">
                            </td>
                            <td align="left" style="height: 11px">
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left" colspan="2">
                                <asp:Label ID="Label6" runat="server" ForeColor="Red" style="text-align: left" 
                                    Text="Complete los 2 campos y pulse el boton &quot;Adjuntar&quot;, despues pulse el boton &quot;Migrar&quot;"></asp:Label>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                &nbsp;</td>
                            <td align="left">
                                <anthem:Button ID="btn_Aceptar" runat="server" AutoUpdateAfterCallBack="True" 
                                    Enabled="False" OnClick="btn_Aceptar_Click" Text="Migrar" Width="70px" />
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <span style="color: #ffffff">
                                    <anthem:Button ID="btn_Continuar" runat="server" AutoUpdateAfterCallBack="True" EnabledDuringCallBack="False"
                                        OnClick="btn_Continuar_Click" Text="Continuar con la migracion" TextDuringCallBack="Cargando..."
                                        Visible="False" Width="149px" />
                                </span>
                            </td>
                            <td align="left">
                                <span style="color: #ffffff">
                                    <anthem:Button ID="btn_Aceptar0" runat="server" EnabledDuringCallBack="False" OnClick="btn_Aceptar_Click"
                                        Text="Cancelar" TextDuringCallBack="Cargando..." Visible="False" Width="70px" />
                                </span>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </anthem:Panel>

    <anthem:Label ID="Label8" runat="server" ForeColor="Red"></anthem:Label>

    <script language="javascript" type="text/javascript">
// <!CDATA[
        function File1_onclick() {
        }
// ]]>
    </script>

</asp:Content>
