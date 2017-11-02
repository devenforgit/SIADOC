<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="CerrarPrestamo_Form, App_Web_rn5pk5zs" title=".: SIADOC - Cerrar Préstamos :." theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<%@ Register Assembly="ControlesWeb" Namespace="ControlesWeb" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td colspan="3">
                <table style="width: 81%" cellpadding="0" cellspacing="2px">
                    <tr>
                        <td align="left" style="width: 100px">
                            <asp:Label ID="Label2" runat="server" Text="Gerencia : " BorderStyle="None"></asp:Label>
                        </td>
                        <td style="text-align: left">
                            <anthem:DropDownList OnSelectedIndexChanged="ddlGerencia_SelectedIndexChanged" ID="ddlGerencia"
                                AutoCallBack="true" AutoUpdateAfterCallBack="true" runat="server" Width="193px">
                            </anthem:DropDownList>
                        </td>
                        <td align="left">
                            <asp:Label ID="Label3" runat="server" Text="Area : " BorderStyle="None"></asp:Label>
                        </td>
                        <td style="width: 223px">
                            <anthem:DropDownList ID="ddlArea" AutoUpdateAfterCallBack="true" runat="server" AutoCallBack="true"
                                Width="220px" OnSelectedIndexChanged="ddlArea_SelectedIndexChanged">
                            </anthem:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 100px">
                            <asp:Label ID="Label8" runat="server" Text="Usuario : " BorderStyle="None"></asp:Label>
                        </td>
                        <td style="text-align: left">
                            <anthem:DropDownList ID="ddlUsuario" AutoCallBack="true" AutoUpdateAfterCallBack="true"
                                runat="server" Width="193px">
                            </anthem:DropDownList>
                        </td>
                        <td align="left">
                            <asp:Label ID="Label10" runat="server" Text="Archivo : " BorderStyle="None"></asp:Label>
                        </td>
                        <td style="width: 223px">
                            <anthem:DropDownList ID="ddlArchivo" AutoUpdateAfterCallBack="true" runat="server"
                                Width="220px">
                            </anthem:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 100px">
                            <asp:Label ID="Label1" runat="server" Text="Codigo Documento : " BorderStyle="None"
                                Width="117px"></asp:Label>
                        </td>
                        <td align="left" style="width: 100%">
                            <anthem:TextBox ID="txtCodigoDocumento" runat="server" Width="190px"></anthem:TextBox>
                        </td>
                        <td align="left">
                            <asp:Label ID="lblEstado" Visible="False" runat="server" Text="Estado : " BorderStyle="None"
                                Width="67px"></asp:Label>
                        </td>
                        <td style="width: 223px">
                            <anthem:DropDownList ID="ddlEstado" AutoUpdateAfterCallBack="true" runat="server"
                                Width="220px" Visible="false">
                            </anthem:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 100px">
                        </td>
                        <td align="left" style="width: 100%">
                        </td>
                        <td align="left">
                        </td>
                        <td style="width: 223px">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 174px; height: 29px; text-align: right">
            </td>
            <td style="width: 100px; height: 29px; text-align: left">
            </td>
            <td style="width: 103px; height: 29px; text-align: left">
                <anthem:Button ID="btnBuscar" AutoUpdateAfterCallBack="true" runat="server" Text="Buscar"
                    Width="93px" OnClick="btnBuscar_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 8px; text-align: right">
                <hr />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 32px; text-align: center">
                <anthem:Panel ID="divListadoCuotas" runat="server" AutoUpdateAfterCallBack="true">
                    <cc1:ExGridView ID="gvw_Datos" runat="server" AutoGenerateColumns="False" CellPadding="4"
                        ForeColor="#333333" AutoUpdateAfterCallBack="true" OnRowCreated="gvw_Datos_RowCreated"
                        OnPageIndexChanging="gvw_Datos_PageIndexChanging" AllowPaging="false" PageSize="10"
                        GridHeight="250px" Width="530px">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <RowStyle ForeColor="#333333" />
                        <Columns>
                            <asp:BoundField DataField="IdPrestamo" HeaderText="Id" SortExpression="IdPrestamo"
                                HeaderStyle-Width="40px" ItemStyle-Width="40px" />
                            <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha"
                                SortExpression="Fecha" HeaderStyle-Width="70px" ItemStyle-Width="70px" />
                            <asp:BoundField DataField="Solicitante" HeaderText="Solicitante" SortExpression="Solicitante"
                                HeaderStyle-Width="70px" ItemStyle-Width="70px" />
                            <asp:BoundField DataField="IdTramite" HeaderText="IdTramite" SortExpression="IdTramite"
                                HeaderStyle-Width="40px" ItemStyle-Width="40px" />
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion"
                                HeaderStyle-Width="70px" ItemStyle-Width="70px" />
                            <asp:TemplateField HeaderStyle-Width="40px" ItemStyle-Width="40px">
                                <EditItemTemplate>
                                    <asp:CheckBox runat="server" ID="CheckBox1"></asp:CheckBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox runat="server" ID="CheckBox2"></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="IdDocumento" HeaderText="IdDocumento" SortExpression="IdDocumento" />
                            <asp:BoundField DataField="Observaciones" HeaderText="Comentario" SortExpression="Observaciones" />
                        </Columns>
                        <PagerStyle BackColor="Gainsboro" ForeColor="#747474" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="Gainsboro" Font-Bold="True" ForeColor="#747474" />
                        <EditRowStyle BackColor="#999999" />
                        <AlternatingRowStyle BackColor="White" />
                    </cc1:ExGridView>
                </anthem:Panel>
            </td>
        </tr>
        <tr>
            <td style="width: 174px; height: 34px; text-align: right">
            </td>
            <td style="width: 100px; height: 34px; text-align: left">
            </td>
            <td style="width: 103px; height: 34px; text-align: center">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 34px; text-align: right" valign="bottom">
                <hr />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <span style="color: #ffffff">
                    <anthem:TextBox ID="txtMessage" AutoUpdateAfterCallBack="true" Visible="false" runat="server"
                        Height="75px" TextMode="MultiLine" Width="297px"></anthem:TextBox>
                    <anthem:Button ID="btnComentario" Visible="False" runat="server" Text="Actualizar comentario"
                    
                        Width="134px" OnClick="btnComentario_Click" />
                    <anthem:Button ID="btnConfirmar" Visible="false" runat="server" Text="Confirmar Devolucion"
                        Width="134px" OnClick="btnConfirmar_Click" />
                    <anthem:Button ID="btnAnular" Visible="false" runat="server" Text="Anular Devolucion"
                        Width="125px" OnClick="btnAnular_Click" /></span>
            </td>
            <td style="width: 103px; height: 34px; text-align: right">
                <anthem:Button ID="btnCerrar" runat="server" Text="Cerrar Préstamo" Width="120px"
                    OnClick="btnCerrar_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 34px; text-align: center">
                <asp:Label ID="Label9" runat="server" ForeColor="Red" Text=" "></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
