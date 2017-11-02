<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Reportes_IndiceDetalle_Form, App_Web_55qshmmk" title="Indice Detalle" theme="Default" %>
    
<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <anthem:Panel ID="pnl_EditGrid" runat="server" Visible="True" Width="100%" Height="100%">
        <table style="width: 100%">
            <tr align="left">
                <td align="left">
                    <anthem:Button ID="btn_Aceptar" runat="server" Text="Regresar" Width="70px" OnClick="btn_Aceptar_Click"
                        TextDuringCallBack="Cargando..." EnabledDuringCallBack="False" />
                </td>
            </tr>
            <tr>
                <td style="height: 20px">
                </td>
            </tr>
            <tr>
                <td>
                    <table style="width: 90%">
                        <tr>
                            <td align="left">
                                <anthem:Label ID="Label10" runat="server" Text="Codigo" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_Codigo" runat="server" ReadOnly="true" Width="180px" MaxLength="49"
                                    Enabled="False"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label11" runat="server" Text="Tipo Doc." Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:DropDownList ID="ddl_TipoDoc" runat="server" Enabled="False">
                                </anthem:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label4" runat="server" Text="Area" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:DropDownList ID="ddl_Area" runat="server" Enabled="False">
                                </anthem:DropDownList>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label2" runat="server" Text="Titulo" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_Titulo" runat="server" MaxLength="49" Width="180px" Enabled="False"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label3" runat="server" Text="Fecha" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_Fecha" runat="server" Width="72px" Enabled="False" />
                                <anthem:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Img/icono.jpg"
                                    CausesValidation="false" />
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left" style="height: 25px">
                                <anthem:Label ID="Label5" runat="server" Text="Palabras Clave"></anthem:Label>
                            </td>
                            <td align="left" style="height: 25px">
                                <anthem:TextBox ID="txt_PalabrasClave" runat="server" MaxLength="49" TextMode="MultiLine"
                                    Width="180px" Enabled="False"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label6" runat="server" Text="Destinatario" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_Destinatario" runat="server" MaxLength="49" Width="180px"
                                    Enabled="False"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label7" runat="server" Text="Emisor" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_Emisor" runat="server" MaxLength="49" Width="180px" Enabled="False"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left" style="height: 25px">
                                <anthem:Label ID="Label9" runat="server" Text="Numero" Width="72px"></anthem:Label>
                            </td>
                            <td align="left" style="height: 25px">
                                <anthem:TextBox ID="txt_Numero" runat="server" MaxLength="49" Width="180px" Enabled="False"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label12" runat="server" Text="Archivos" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:ListBox CssClass="listbox" ID="lbx_Archivos" runat="server" Enabled="False">
                                </anthem:ListBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </anthem:Panel>
</asp:Content>
