<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="ReporteSolicitudes_Form, App_Web_hj3yxqmz" title=".: SIADOC - Consultar Solicitudes :." theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td colspan="2">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 618px;">
                    <tr>
                        <td style="width: 106px; height: 22px; text-align: left">
                            <asp:Label ID="Label13" runat="server" Text="Solicitante : " EnableTheming="False"></asp:Label>
                        </td>
                        <td style="width: 139px; height: 22px">
                            <anthem:DropDownList ID="ddlUsuario" runat="server" Width="193px">
                            </anthem:DropDownList>
                        </td>
                        <td style="width: 48px; height: 22px">
                        </td>
                        <td style="width: 85px; height: 22px">
                        </td>
                        <td style="width: 100px">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 106px; height: 22px; text-align: left;">
                            <asp:Label ID="Label8" runat="server" Text="Estado : " EnableTheming="False"></asp:Label>
                        </td>
                        <td style="width: 139px; height: 22px">
                            <anthem:DropDownList ID="ddlEstado" runat="server" Width="193px">
                            </anthem:DropDownList>
                        </td>
                        <td style="width: 48px; height: 22px; text-align: left">
                        </td>
                        <td style="width: 85px; height: 22px; text-align: left;">
                            <asp:Label ID="Label2" runat="server" Text="Archivo : " EnableTheming="False" Width="51px"></asp:Label>
                        </td>
                        <td style="width: 100px; height: 22px">
                            <anthem:DropDownList ID="ddlArchivo" runat="server" Width="220px">
                            </anthem:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 106px; height: 22px; text-align: left">
                            <asp:Label ID="Label3" runat="server" Text="Fecha Inicio : " EnableTheming="False"
                                Width="81px"></asp:Label>
                        </td>
                        <td style="width: 139px; height: 22px; text-align: left">
                            <table border="0" cellpadding="0" cellspacing="2px" style="width: 156px">
                                <tr>
                                    <td style="width: 100px">
                                        <anthem:TextBox ID="txtFechaInicio" AutoUpdateAfterCallBack="true" runat="server"
                                            Width="96px"></anthem:TextBox>
                                    </td>
                                    <td style="width: 55px">
                                        <anthem:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Img/icono.jpg" OnClick="ImageButton1_Click"
                                            CausesValidation="false" />
                                    </td>
                                    <td style="width: 28px">
                                        <anthem:RequiredFieldValidator ID="rfv6" runat="server" ControlToValidate="txtFechaInicio"
                                            Display="None" ErrorMessage="Ingrese Fecha"></anthem:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                        </td>
                        <td style="width: 48px; height: 22px; text-align: left">
                        </td>
                        <td style="width: 85px; height: 22px; text-align: left">
                            <asp:Label ID="Label12" runat="server" Text="Fecha Fin : " EnableTheming="False"
                                Width="67px"></asp:Label>
                        </td>
                        <td style="width: 100px; height: 21px; text-align: left">
                            <table border="0" cellpadding="0" cellspacing="0" style="width: 161px">
                                <tr>
                                    <td style="width: 100px; height: 19px">
                                        <anthem:TextBox ID="txtFechaFin" AutoUpdateAfterCallBack="true" runat="server" Width="97px"></anthem:TextBox>
                                    </td>
                                    <td style="width: 44px; height: 19px">
                                        <anthem:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Img/icono.jpg" OnClick="ImageButton2_Click"
                                            CausesValidation="false" />
                                    </td>
                                    <td style="width: 100px; height: 19px">
                                        <anthem:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtFechaFin"
                                            Display="None" ErrorMessage="Ingrese Fecha"></anthem:RequiredFieldValidator>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td valign="top" colspan="2">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td colspan="2" style="height: 19px">
                                        <anthem:RangeValidator ID="rv1" runat="server" ControlToValidate="txtFechaInicio"
                                            ErrorMessage="Formato fecha incorrecta" Type="Date" MinimumValue="01/01/1900"
                                            MaximumValue="01/01/2099"></anthem:RangeValidator>
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
                        <td style="width: 48px;" valign="top">
                        </td>
                        <td valign="top" colspan="2">
                            <table border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td colspan="2" style="height: 20px">
                                        <anthem:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtFechaFin"
                                            ErrorMessage="Formato fecha incorrecta" Type="Date" MinimumValue="01/01/1900"
                                            MaximumValue="01/01/2099"></anthem:RangeValidator>
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
                    <tr>
                        <td style="text-align: right" colspan="5">
                            <anthem:Button ID="btnBuscar" runat="server" CausesValidation="false" AutoUpdateAfterCallBack="true"
                                Text="Consultar" OnClick="btnBuscar_Click2" />
                            <anthem:Button ID="btnExportar" runat="server" CausesValidation="false" AutoUpdateAfterCallBack="true"
                                Text="Ver Reporte" OnClick="btnExportar_Click2" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 8px; text-align: right">
                <hr />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <anthem:GridView ID="gvw_Datos" OnSelectedIndexChanged="gvw_Datos_SelectedIndexChanged"
                    runat="server" AutoUpdateAfterCallBack="true" AutoGenerateColumns="False" CellPadding="4"
                    ForeColor="#747474"  DataKeyNames="IdSolicitud" OnRowCreated="gvw_Datos_RowCreated"
                    OnPageIndexChanging="gvw_Datos_PageIndexChanging" AllowPaging="true" PageSize="10"
                    BorderStyle="Solid" BorderWidth="1px">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerSettings Mode="NumericFirstLast" />
                    <RowStyle Font-Strikeout="False" Height="15px" />
                    <Columns>
                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/Img/redo2_16x16.gif" ShowSelectButton="True" />
                        <asp:BoundField DataField="IdSolicitud" HeaderText="Id" SortExpression="IdSolicitud" />
                        <asp:BoundField DataField="Nombre" HeaderText="Solicitante" SortExpression="Nombre" />
                        <asp:BoundField DataFormatString="{0:dd/MM/yyyy}" DataField="Fecha" HeaderText="Fecha"
                            SortExpression="Fecha" />
                        <asp:BoundField DataField="IdTramite" HeaderText="Id Tramite" SortExpression="IdTramite" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion Solicitud" SortExpression="Descripcion" />
                        <asp:BoundField DataField="EstadoSolicitud" HeaderText="Estado" SortExpression="EstadoSolicitud" />
                        <asp:BoundField DataField="Numero" HeaderText="Numero" SortExpression="Numero" />
                    </Columns>
                    <PagerStyle BackColor="Gainsboro" ForeColor="#747474" HorizontalAlign="Center" Font-Bold="True" />
                    <SelectedRowStyle Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="Gainsboro" Font-Bold="False" ForeColor="#747474" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BorderColor="Silver" BorderStyle="Solid" BorderWidth="1px" />
                </anthem:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 34px; text-align: right" valign="bottom">
                <hr />
                <br />
            </td>
        </tr>
    </table>
</asp:Content>
