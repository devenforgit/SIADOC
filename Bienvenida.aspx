<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Bienvenida, App_Web_dayjhwkx" title=".: SIADOC - Sistema de Administracion Documental :." theme="Default" %>

<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <span style="color: #ffffff">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 530px">
            <tr>
                <td colspan="3" style="text-align: center;">
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/Img/BienvenidaSIADOC.jpg" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 16px; text-align: center;">
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 19px; text-align: center;" align="left">
                    <asp:Label ID="Label5" runat="server" CssClass="smalltext" Text=".: Ultimas Solicitudes Realizadas :."
                        ForeColor="#CC3300"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="height: 19px" colspan="3" align="center">
                    <span style="color: #ffffff">
                        <anthem:GridView EmptyDataText="No existen registros" ID="gvw_Datos" runat="server"
                            AutoGenerateColumns="False" CaptionAlign="Bottom" CellPadding="4" CssClass="smalltext"
                            DataKeyNames="IdSolicitud" ForeColor="#8F8F8F" GridLines="Horizontal" 
                        AllowPaging="True" BorderStyle="Solid" BorderWidth="1px" OnRowEditing="gvw_Datos_RowEditing"
                            OnRowCancelingEdit="gvw_Datos_RowCancelingEdit" OnRowUpdating="gvw_Datos_RowUpdating"
                            AutoUpdateAfterCallBack="True" OnRowCommand="gvw_Datos_RowCommand" UpdateAfterCallBack="True"
                            OnPageIndexChanging="gvw_Datos_PageIndexChanging" OnRowDeleting="gvw_Datos_RowDeleting"
                            OnRowCreated="gvw_Datos_RowCreated" EnableModelValidation="True"
                            OnRowDataBound="gvw_Datos_RowDataBound">
                            <FooterStyle BackColor="#B1B1B1" Font-Bold="True" ForeColor="White" />
                            <RowStyle ForeColor="#333333" />
                            <Columns>
                                <asp:BoundField DataField="IdSolicitud" HeaderText="Cod. Solicitud" ReadOnly="True"
                                    SortExpression="IdSolicitud" />
                                <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha"
                                    SortExpression="FechaRegistro" HtmlEncode="False" />
                                <asp:BoundField DataField="Usuario" HeaderText="Usuario Sol." SortExpression="Usuario" />
                                <asp:BoundField DataField="CodigoDocumento" HtmlEncode="false" HeaderText="Codigo Documento" />
                                <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                                <asp:BoundField DataField="IdTramite" HeaderText="IdTramite" SortExpression="IdTramite" />
                                <asp:BoundField DataField="DescEstado" HeaderText="Estado" SortExpression="DescEstado" />
                            </Columns>
                            <PagerStyle BackColor="Gainsboro" ForeColor="#757575" HorizontalAlign="Center" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <HeaderStyle BackColor="Gainsboro" Font-Bold="True" ForeColor="#757575" Height="20px" />
                            <EditRowStyle BackColor="#999999" />
                            <AlternatingRowStyle BackColor="White" />
                        </anthem:GridView>
                    </span>
                </td>
            </tr>
            <tr>
                <td style="width: 72px;">
                </td>
                <td style="width: 109px;">
                    <span style="color: #ffffff"></span>
                </td>
                <td>
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 19px">
                    &nbsp;
                </td>
            </tr>
        </table>
    </span>
</asp:Content>
