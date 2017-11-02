<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Reportes_Favoritos_Form, App_Web_55qshmmk" title=".: SIADOC - Favoritos Catalogación :." theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <anthem:Panel ID="pnl_Grid" runat="server" Width="100%" Height="100%">
        <table style="width: 100%">
            <tr align="left">
                <td align="left">
                    <anthem:Button ID="btn_Nuevo" runat="server" Text="Regresar" Width="70px" OnClick="btn_Nuevo_Click"
                        CausesValidation="False" />
                    <anthem:Button ID="btn_Descargar" runat="server" Text="Exportar" Width="70px" TextDuringCallBack="Cargando..."
                        EnabledDuringCallBack="False" OnClick="btn_Descargar_Click" />
                </td>
            </tr>
            <tr>
                <td style="height: 20px">
                </td>
            </tr>
            <tr>
                <td style="width: 100%">
                    <anthem:GridView ID="gvw_Datos" runat="server" AutoGenerateColumns="False" CellPadding="4"
                        DataKeyNames="IdDocumento" Font-Names="Tahoma" Font-Size="8pt" ForeColor="#333333"
                        GridLines="None" Width="100%" EmptyDataText='No se encontraron registros, para esta busqueda'
                        OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                        OnPageIndexChanging="gvw_Datos_PageIndexChanging1">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="Id. Fav" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="IdDocumento" HeaderText="Id. Doc" ReadOnly="True" SortExpression="IdDocumento" />
                            <asp:BoundField DataField="TIPO" HeaderText="Tipo" SortExpression="TIPO" />
                            <asp:BoundField DataField="NUMERO" HeaderText="Numero" SortExpression="NUMERO" />
                            <asp:BoundField DataField="AREA" HeaderText="Area" SortExpression="AREA" />
                            <asp:BoundField DataField="titulo" HeaderText="Titulo - Sumilla" SortExpression="TITULO - SUMILLA" />
                            <asp:BoundField DataField="FECHA" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha"
                                SortExpression="FECHA" />
                            <asp:BoundField DataField="EMISOR" HeaderText="Emisor" SortExpression="EMISOR" />
                            <asp:CommandField ButtonType="Image" DeleteText="Ver detalles" HeaderText="Ver Detalle"
                                DeleteImageUrl="~/Img/zoom_in_16x16.gif" ShowDeleteButton="True" />
                            <asp:CommandField ButtonType="Image" EditImageUrl="~/Img/last_16x16.gif" ShowEditButton="True"
                                HeaderText="Ver Archivos" EditText="Ver archivos" />
                            <asp:CommandField SelectText="Eliminar" ShowSelectButton="True" />
                        </Columns>
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <EditRowStyle BackColor="#999999" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    </anthem:GridView>
                </td>
            </tr>
            <tr>
                <td style="height: 20px">
                </td>
            </tr>
        </table>
    </anthem:Panel>
</asp:Content>
