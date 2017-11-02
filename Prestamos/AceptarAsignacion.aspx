<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="AceptarAsignacion_Form, App_Web_rn5pk5zs" title="SIADOC - Confirmar Asignación de Prestamo" theme="Default" %>

<%@ Register Assembly="ControlesWeb" Namespace="ControlesWeb" TagPrefix="cc1" %>
<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">
        <tr>
            <td style="width: 174px; height: 29px; text-align: right">
                <asp:Label ID="Label1" runat="server" Text="Usuario Reasignado : "></asp:Label>
            </td>
            <td style="width: 100px; height: 29px; text-align: left">
                <asp:DropDownList ID="ddlUsuario" runat="server" Width="284px">
                </asp:DropDownList>
            </td>
            <td style="width: 100px; height: 29px; text-align: left">
            </td>
        </tr>
        <tr>
            <td style="width: 166px; height: 29px; text-align: right">
                <asp:Label ID="Label2" runat="server" Text="Documento  : "></asp:Label>
            </td>
            <td style="width: 100px; height: 29px; text-align: left">
                <asp:TextBox runat="server" ID="txtPalabra" Width="250px"></asp:TextBox>
            </td>
            <td align="left">
                <anthem:Button AutoUpdateAfterCallBack="true" ID="btnBuscar" runat="server" Text="Buscar"
                    Width="79px" OnClick="btnBuscar_Click" />
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
                        ForeColor="#8F8F8F" OnRowCreated="gvw_Datos_RowCreated" Width="550px" OnPageIndexChanging="gvw_Datos_PageIndexChanging"
                        AllowPaging="false" PageSize="10" GridHeight="300px">
                        <FooterStyle BackColor="Gainsboro" Font-Bold="True" ForeColor="Window" />
                        <RowStyle ForeColor="#333333" />
                        <Columns>
                            <asp:BoundField DataField="IdAsignacion" HeaderText="Id" SortExpression="IdAsignacion"
                                HeaderStyle-Width="40px" ItemStyle-Width="40px" />
                            <asp:BoundField DataField="IdPrestamo" HeaderText="IdPrestamo" SortExpression="IdPrestamo"
                                HeaderStyle-Width="20px" ItemStyle-Width="20px" />
                            <asp:BoundField DataField="IdUsuarioPrestamo" HeaderText="IdUsuarioPrestamo" SortExpression="IdUsuarioPrestamo" />
                            <asp:BoundField DataField="Usuario" HeaderText="Usuario Origen" SortExpression="Usuario"
                                HeaderStyle-Width="80px" ItemStyle-Width="80px" />
                            <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha Asignaci&#243;n"
                                SortExpression="Fecha" HeaderStyle-Width="70px" ItemStyle-Width="70px" />
                            <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento"
                                HeaderStyle-Width="100px" ItemStyle-Width="100px" />
                            <asp:BoundField DataField="EstadoAsignacion" HeaderText="Estado" SortExpression="EstadoAsignacion"
                                HeaderStyle-Width="70px" ItemStyle-Width="70px" />
                            <asp:BoundField DataField="Comentario" HeaderText="Comentario" SortExpression="Comentario"
                                HeaderStyle-Width="70px" ItemStyle-Width="70px" />    
                            <asp:TemplateField HeaderText="" HeaderStyle-Width="30px" ItemStyle-Width="30px">
                                <EditItemTemplate>
                                    <asp:CheckBox runat="server" ID="CheckBox2"></asp:CheckBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <anthem:CheckBox ID="CheckBox1" AutoCallBack="true" OnCheckedChanged="Check_Clicked"
                                        AutoUpdateAfterCallBack="true" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerStyle BackColor="Gainsboro" ForeColor="#747474" HorizontalAlign="Center" />
                        <SelectedRowStyle Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="Gainsboro" Font-Bold="True" ForeColor="#757575" />
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
            <td style="width: 100px; height: 34px; text-align: center">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 34px; text-align: right" valign="bottom">
                <hr />
            </td>
        </tr>
        <tr>
            <td style="height: 19px">
            </td>
            <td align="right" colspan="2" style="height: 19px">
                <anthem:Button ID="btnConfirmar" runat="server" AutoUpdateAfterCallBack="true" Text="Confirmar"
                    Width="95px" OnClick="btnConfirmar_Click" />
                <anthem:Button ID="btnCancelar" runat="server" AutoUpdateAfterCallBack="true" Text="Rechazar"
                    Width="95px" OnClick="btnCancelar_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 34px; text-align: center">
                <asp:Label ID="Label9" runat="server" ForeColor="Red" Text=" "></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
