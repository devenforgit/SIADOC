<%@ page language="VB" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="false" inherits="ConsultaPrestamos, App_Web_djs4y20j" title=".: SIADOC - Consulta Movimientos Préstamo :." theme="Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 72%">
        <tr>
            <td colspan="2">
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></td>
            <td colspan="1" style="width: 103px">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 16px">
                <asp:Label ID="Label5" runat="server"  Font-Bold="True" Font-Size="Small"
                    Text="Consulta Movimiento de Préstamos " Width="314px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 174px; height: 19px">
            </td>
            <td style="width: 100px; height: 19px">
            </td>
            <td style="width: 103px; height: 19px">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 19px">
                <asp:Label ID="Label6" runat="server"  Text="Area : "></asp:Label><asp:DropDownList
                    ID="DropDownList3" runat="server"  Width="193px">
                    <asp:ListItem>Seleccione</asp:ListItem>
                    <asp:ListItem>Contabilidad</asp:ListItem>
                    <asp:ListItem>Logistica</asp:ListItem>
                    <asp:ListItem>Planeamiento</asp:ListItem>
                    <asp:ListItem>Tesoreria</asp:ListItem>
                </asp:DropDownList>
                 
                <asp:Label ID="Label1" runat="server"  Text="Usuario : "></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server"  Width="220px">
                    <asp:ListItem>Seleccione</asp:ListItem>
                    <asp:ListItem>Juan Perez</asp:ListItem>
                    <asp:ListItem>Boris Chincha</asp:ListItem>
                    <asp:ListItem>Aimee Valenzuela</asp:ListItem>
                </asp:DropDownList></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 6px; text-align: center">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 471px">
                    <tr>
                        <td style="width: 89px; height: 28px">
                            <asp:Label ID="Label2" runat="server"  Text="Fecha Desde : "></asp:Label></td>
                        <td style="width: 49px; height: 28px; text-align: left">
                            <asp:TextBox ID="TextBox1" runat="server" Width="73px"></asp:TextBox></td>
                        <td style="width: 12px; height: 28px; text-align: left">
                            <img src="../Img/icono.jpg" /></td>
                        <td style="width: 285px; height: 28px; text-align: right" colspan="3">
                <asp:Label ID="Label8" runat="server"  Text="Estado : "></asp:Label><asp:DropDownList
                    ID="DropDownList2" runat="server"  Width="188px">
                    <asp:ListItem>Seleccione</asp:ListItem>
                    <asp:ListItem>Activo</asp:ListItem>
                    <asp:ListItem>Asignado Pendiente</asp:ListItem>
                    <asp:ListItem>Asignado Confirmado</asp:ListItem>
                    <asp:ListItem>Cerrado</asp:ListItem>
                    <asp:ListItem>Anulado</asp:ListItem>
                </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td style="width: 89px; height: 30px">
                            <asp:Label ID="Label3" runat="server"  Text="Fecha Hasta : "></asp:Label></td>
                        <td style="width: 49px; height: 30px; text-align: left">
                            <asp:TextBox ID="TextBox2" runat="server" Width="73px"></asp:TextBox></td>
                        <td style="width: 12px; height: 30px; text-align: left">
                            <img src="../Img/icono.jpg" /></td>
                        <td colspan="3" style="height: 30px; text-align: right; width: 285px;">
                </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 29px; text-align: left">
                </td>
            <td style="width: 103px; height: 29px; text-align: right">
                <asp:Button ID="Button2" runat="server" Text="Consultar" Width="79px" /></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 3px; text-align: right">
                <hr />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 32px; text-align: center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                     DataSourceID="Solicitudes" ForeColor="#333333" GridLines="None"
                    Width="558px">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                        <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                        <asp:BoundField DataField="Solicitante" HeaderText="Solicitante" SortExpression="Solicitante" />
                        <asp:BoundField DataField="IdTramite" HeaderText="IdTramite" SortExpression="IdTramite" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/Img/search_again_16x16.gif" ShowSelectButton="True" />
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="Solicitudes" runat="server" ConnectionString="<%$ ConnectionStrings:SGCPD_DBConnectionString %>"
                    SelectCommand="SELECT [Id], [Fecha], [Solicitante], [IdTramite], [Descripcion] FROM [Solicitudes]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td style="width: 174px; height: 34px; text-align: right">
            </td>
            <td style="width: 100px; height: 34px; text-align: left">
                <asp:Label ID="Label4" runat="server" Height="22px" Text="Label" Width="210px"></asp:Label></td>
            <td style="width: 103px; height: 34px; text-align: center">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 34px; text-align: right" valign="bottom">
                <hr />
                </td>
        </tr>
        <tr>
            <td style="width: 174px; height: 34px; text-align: right">
            </td>
            <td style="width: 100px; height: 34px">
            </td>
            <td style="width: 103px; height: 34px; text-align: right">
                <asp:Button ID="Button1" runat="server" Text="Imprimir" Width="114px" /></td>
        </tr>
        <tr>
            <td colspan="3" style="height: 34px; text-align: center">
                <asp:Label ID="Label9" runat="server"  ForeColor="Red" Text=" "></asp:Label></td>
        </tr>
    </table>
</asp:Content>

