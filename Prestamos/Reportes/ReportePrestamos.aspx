<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="ReportePrestamos_Form, App_Web_hj3yxqmz" title=".: SIADOC - Consultar Prestamos :." theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">      
        <tr>
            <td colspan="3">
                <table cellpadding="0" cellspacing="0" style="width: 97%">
                    <tr>
                        <td align="left" style="width: 100px; height: 22px">
                            <asp:Label ID="Label6" runat="server" Text="Gerencia : "></asp:Label>
                        </td>
                        <td style="text-align: left; height: 22px; width: 250px;">
                            <anthem:DropDownList OnSelectedIndexChanged="ddlGerencia_SelectedIndexChanged" ID="ddlGerencia"
                                AutoCallBack="true" AutoUpdateAfterCallBack="true" runat="server" Width="200px">
                            </anthem:DropDownList>
                        </td>
                        <td align="left" style="width: 75px; height: 22px">
                            <asp:Label ID="Label1" runat="server" Text="Area : "></asp:Label>
                        </td>
                        <td style="text-align: left; height: 22px">
                            <anthem:DropDownList ID="ddlArea" AutoUpdateAfterCallBack="true" runat="server" Width="200px">
                            </anthem:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 94px; height: 22px">
                            <asp:Label ID="Label8" runat="server" Text="Estado : "></asp:Label>
                        </td>
                        <td style="text-align: left; height: 22px; width: 250px;">
                            <anthem:DropDownList ID="ddlEstado" runat="server" Width="200px">
                            </anthem:DropDownList>
                        </td>
                        <td align="left" style="width: 75px; height: 22px">
                            <asp:Label ID="Label2" runat="server" Text="Usuario : "></asp:Label>
                        </td>
                        <td style="text-align: left; height: 22px">
                            <anthem:DropDownList ID="ddlUsuario" runat="server" Width="200px">
                            </anthem:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 94px; height: 22px">
                            <asp:Label ID="Label13" runat="server" Text="Nro. Doc. : "></asp:Label>
                        </td>
                        <td style="text-align: left; width: 250px;">
                            <anthem:TextBox ID="txtNroDocumento" AutoUpdateAfterCallBack="true" runat="server"
                                Width="195px">
                            </anthem:TextBox>
                        </td>
                        <td align="left" style="width: 75px; height: 22px">
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 94px; height: 22px">
                            <asp:Label ID="Label14" runat="server" Text="Documento. : "></asp:Label>
                        </td>
                        <td style="text-align: left; width: 250px;">
                            <anthem:TextBox ID="txtDocumento" AutoUpdateAfterCallBack="true" runat="server"
                                Width="195px"></anthem:TextBox>
                        </td>
                        <td align="left" style="width: 75px; height: 22px">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 94px; height: 22px">
                            <asp:Label ID="Label3" runat="server" Text="Fecha Inicio : "></asp:Label>
                        </td>
                        <td style="text-align: left; height: 22px; width: 250px;">
                            <anthem:TextBox ID="txtFechaInicio" AutoUpdateAfterCallBack="true" runat="server"
                                Width="97px"></anthem:TextBox>
                            <anthem:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Img/icono.jpg" OnClick="ImageButton1_Click"
                                CausesValidation="false" />
                            <anthem:RequiredFieldValidator ID="rfv6" runat="server" ControlToValidate="txtFechaInicio"
                                Display="None" ErrorMessage="Ingrese Fecha"></anthem:RequiredFieldValidator>
                        </td>
                        <td align="left" style="width: 75px; height: 22px">
                            <asp:Label ID="Label12" runat="server" Text="Fecha Fin : "></asp:Label>
                        </td>
                        <td style="text-align: left; height: 22px">
                            <anthem:TextBox ID="txtFechaFin" AutoUpdateAfterCallBack="true" runat="server" Width="97px"></anthem:TextBox>
                            <anthem:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Img/icono.jpg" OnClick="ImageButton2_Click"
                                CausesValidation="false" />
                            <anthem:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtFechaFin"
                                Display="None" ErrorMessage="Ingrese Fecha"></anthem:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" style="width: 94px">
                        </td>
                        <td align="left" style="width: 250px">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <anthem:RangeValidator ID="rv1" runat="server" ControlToValidate="txtFechaInicio"
                                            ErrorMessage="Formato fecha incorrecta" Type="Date" MinimumValue="01/01/1900"
                                            MaximumValue="01/01/2099"></anthem:RangeValidator>
                                    </td>
                                    <td style="width: 19px">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <anthem:Calendar DayHeaderStyle-BackColor="#D9D9E6" ID="Calendar1" runat="server"
                                            AutoUpdateAfterCallBack="True" OnSelectionChanged="Calendar1_SelectionChanged"
                                            Visible="False" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest"
                                            Font-Names="Verdana" Font-Size="6pt" ForeColor="Black" Height="80px" UpdateAfterCallBack="True"
                                            Width="140px">
                                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                            <SelectorStyle BackColor="#CCCCCC" />
                                            <WeekendDayStyle BackColor="#FFFFCC" />
                                            <OtherMonthDayStyle ForeColor="#808080" />
                                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                            <NextPrevStyle VerticalAlign="Bottom" />
                                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                        </anthem:Calendar>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td align="left" style="width: 75px">
                        </td>
                        <td align="left">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td>
                                        <anthem:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtFechaFin"
                                            ErrorMessage="Formato fecha incorrecta" Type="Date" MinimumValue="01/01/1900"
                                            MaximumValue="01/01/2099"></anthem:RangeValidator>
                                    </td>
                                    <td style="width: 19px;">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <anthem:Calendar DayHeaderStyle-BackColor="#D9D9E6" ID="Calendar2" runat="server"
                                            AutoUpdateAfterCallBack="True" OnSelectionChanged="Calendar2_SelectionChanged"
                                            Visible="False" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest"
                                            Font-Names="Verdana" Font-Size="6pt" ForeColor="Black" Height="80px" UpdateAfterCallBack="True"
                                            Width="140px">
                                            <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                            <SelectorStyle BackColor="#CCCCCC" />
                                            <WeekendDayStyle BackColor="#FFFFCC" />
                                            <OtherMonthDayStyle ForeColor="#808080" />
                                            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                            <NextPrevStyle VerticalAlign="Bottom" />
                                            <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                            <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                        </anthem:Calendar>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 29px; text-align: right">
                <anthem:Button ID="btnBuscar" runat="server" CausesValidation="false" AutoUpdateAfterCallBack="true"
                    Text="Consultar" OnClick="btnBuscar_Click2" />
                <anthem:Button ID="btnExportar" runat="server" CausesValidation="false" AutoUpdateAfterCallBack="true"
                    Text="Ver Reporte"  OnClick="btnExportar_Click2" />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 8px; text-align: right">
                <hr />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 32px; text-align: center">
                <anthem:GridView ID="gvw_Datos" OnSelectedIndexChanged="gvw_Datos_SelectedIndexChanged"
                    runat="server" AutoUpdateAfterCallBack="True" AutoGenerateColumns="False" CellPadding="4"
                    ForeColor="#333333" Width="558px" DataKeyNames="IdPrestamo" OnRowCreated="gvw_Datos_RowCreated"
                    OnPageIndexChanging="gvw_Datos_PageIndexChanging" AllowPaging="True" 
                    UpdateAfterCallBack="True">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerSettings Mode="NumericFirstLast" />
                    <RowStyle ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/Img/redo2_16x16.gif" ShowSelectButton="True" />
                        <asp:BoundField DataField="IdPrestamo" HeaderText="Id" SortExpression="IdPrestamo" />
                        <asp:BoundField DataField="FechaPrestamo" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha"
                            SortExpression="FechaPrestamo" />
                        <asp:BoundField DataField="Documento" HeaderText="Documento" 
                            SortExpression="Documento" HtmlEncode="False" />
                        <asp:BoundField DataField="CodigoDocumento" HeaderText="Cod. Doc." SortExpression="CodigoDocumento" />
                        <asp:BoundField DataField="EstadoPrestamo" HeaderText="Estado" SortExpression="EstadoPrestamo" />
                        <asp:BoundField DataField="UsuarioPrestamo" HeaderText="Usuario Prestamo" SortExpression="UsuarioPrestamo" />
                        <asp:BoundField DataField="IdDocumento" HeaderText="IdDocumento" SortExpression="IdDocumento" />
                        <asp:BoundField DataField="IdSOlicitud" HeaderText="IdSOlicitud" SortExpression="IdSOlicitud" />
                        <asp:TemplateField HeaderText="Asignaciones">
                            <EditItemTemplate>
                                <input type="image" src="../../Img/zoom_16x16.gif" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <input type="image" src="../../Img/zoom_16x16.gif" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <PagerStyle BackColor="Gainsboro" ForeColor="#757575" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="Gainsboro" Font-Bold="True" ForeColor="#757575" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BorderStyle="None" />
                </anthem:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 34px; text-align: right" valign="bottom">
                <hr />
            </td>
        </tr>
    </table>
</asp:Content>
