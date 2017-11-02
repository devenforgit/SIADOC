<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" validaterequest="false" inherits="ExpedientesGLC_Form, App_Web_rn5pk5zs" title=" .: SIADOC - Solicitar Préstamo de Documento :." theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" Text="Solicitudes de Expedientes de GLC "
                        Width="314px"></asp:Label>
                </td>
            </tr>
            
            <tr>
                <td style="width: 155px; height: 9px; text-align: left;">
                </td>
                <td style="width: 100px; height: 9px; text-align: left;">
                </td>
            </tr>
            <tr>
                <td style="text-align: center" colspan="2">
                <table width="80%">
                <tr>
                <td style="text-align: left">
                    <asp:Label ID="Label6" runat="server" Text="Tipo Documento  : "></asp:Label>
                    </td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlTipoDocumento" runat="server" Width="245px">
                    </asp:DropDownList>
                    <anthem:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="ddlTipoDocumento"
                        Display="None" ErrorMessage="Seleccione tipo documento"></anthem:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td style="text-align: left">
                    <asp:Label ID="Label2" runat="server" Text="Cartera : "></asp:Label>
                    </td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlCartera" runat="server" Width="245px">
                    </asp:DropDownList>
                    <anthem:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="ddlCartera"
                        Display="None" ErrorMessage="Seleccione cartera "></anthem:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                <td style="text-align: left">
                    <asp:Label ID="Label3" runat="server" Text="Deudor : "></asp:Label>
                    </td>
                <td style="text-align: left">
                    <asp:TextBox ID="txtDeudor" runat="server" Width="240px">
                    </asp:TextBox>
                    </td>
                </tr>
                <tr>
                <td style="text-align: left">
                    <asp:Label ID="lblLetra" runat="server" Text="Letra : "></asp:Label>
                    </td>
                <td style="text-align: left">
                    <asp:DropDownList ID="ddlLetra" runat="server" Width="245px">
                    </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                <td colspan="2">
                    <anthem:Button ID="btnBuscar" runat="server" Text="Buscar" OnClick="Button1_Click" />
                    </td>
                </tr>
                </table>
                </td>
            </tr>
            <tr>
                <td style="width: 155px; height: 1px; text-align: right">
                    &nbsp;</td>
                <td style="width: 100px; height: 1px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="height: 29px; text-align: right">
                    <anthem:GridView Width="95%" ID="gvw_Datos" runat="server" ForeColor="#333333" AutoGenerateColumns="False"
                        OnRowCreated="gvw_Datos_RowCreated" CellPadding="4" DataKeyNames="IdDocumento"
                        EmptyDataText='No se encontraron registros' OnPageIndexChanging="gvw_Datos_PageIndexChanging"
                        OnRowCommand="gvw_Datos_RowCommand" AllowPaging="True">
                        <EditRowStyle BackColor="#999999" />
                        <SelectedRowStyle Font-Bold="True" />
                        <PagerStyle BackColor="Gainsboro" ForeColor="#747474" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="Gainsboro" Font-Bold="True" HorizontalAlign="Center" ForeColor="#747474" />
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="IdDocumento" HeaderText="Id"></asp:BoundField>
                            <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="Descripcion" HeaderText="Deudor">
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="IDCartera" HeaderText="Cartera"
                                Visible="False">
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="Cartera" HeaderText="Cartera"
                                >
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                            
                            <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="UbicacionFisica" HeaderText="UbicacionFisica">
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                            
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <anthem:CheckBox ID="CheckBox1" AutoCallBack="true" OnCheckedChanged="Check_Clicked"
                                        AutoUpdateAfterCallBack="true" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="IdArchivo" HeaderText="IdArchivo">
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="IdTramite" HeaderText="IdTramite">
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="CodigoDocumento" HeaderText="CodigoDocumento">
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                        </Columns>
                    </anthem:GridView>
                </td>
            </tr>
            <tr>
                <td style="height: 5px; text-align: center" colspan="2"></td>
            </tr>
            <tr>
                <td style="height: 1px; text-align: center" colspan="2">
                    <anthem:Button ID="btnRegistrar" runat="server" Text="Grabar" 
                        OnClick="btnRegistrar_Click" Width="86px" EnabledDuringCallBack="False" 
                        TextDuringCallBack="Grabando..." />
                
                </td>
            </tr>
            <tr>
                <td style="width: 155px; text-align: left;">
                    <asp:Label ID="Label1" runat="server" Text="Solicitante : " Visible="False"></asp:Label>
                </td>
                <td style="width: 100px; text-align: left;">
                    <asp:DropDownList ID="ddlUsuarios" runat="server" Width="245px" Height="16px" 
                        Visible="False">
                    </asp:DropDownList>
                    <anthem:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="ddlUsuarios"
                        Display="None" ErrorMessage="Seleccione Solicitud"></anthem:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 155px;text-align: left;">
                    <asp:Label ID="Label7" runat="server" Text="Gerencia : " Visible="False"></asp:Label>
                </td>
                <td style="width: 100px; text-align: left;">
                    <asp:DropDownList ID="ddlGerencia" runat="server" Width="245px" Height="16px" 
                        Visible="False">
                    </asp:DropDownList>
                    <anthem:RequiredFieldValidator ID="rfv11" runat="server" ControlToValidate="ddlGerencia"
                        Display="None" ErrorMessage="Seleccione Gerencia"></anthem:RequiredFieldValidator>
                </td>
            </tr>
        </table>
        <anthem:ValidationSummary DisplayMode="List" ShowSummary="false" ID="ValidationSummary1"
            runat="server" ShowMessageBox="True" />
    </div>
</asp:Content>
