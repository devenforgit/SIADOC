<%--
================================================================================================
Motivo			Fecha			Nombre		Descripción
================================================================================================
FON_CGC-947		18/08/2017		GMD			Correción de errores
--%>
<%-- FON_CGC-947 - INICIO --%>
<%-- <%@ Page Language="C#" MasterPageFile="~/MasterPages/Logon.master" AutoEventWireup="true" CodeFile="ConsultarMovimientoPrecinto.aspx.cs" Inherits="Inventario_ConsultaInventario" %> --%>
<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Inventario_ConsultaInventario, App_Web_2kouhew1" enableeventvalidation="false" theme="Default" %>
<%-- FON_CGC-947 - FIN --%>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style3">
        <tr>
            <td class="style41" align="left" colspan="3">
                <table align="center" cellpadding="0" cellspacing="0" class="style36">
                    <tr>
                        <td class="style39">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Numero UC :" Width="84px"></asp:Label>
                        </td>
                        <td class="style39" colspan="2">
                            <asp:TextBox ID="txt_numeroUC" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style39">
                            <asp:Label ID="Label17" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Fecha Desde:" Width="90px"></asp:Label>
                        </td>
                        <td class="style39">
                            <anthem:TextBox ID="txtFechaInicio" runat="server" Width="90px"></anthem:TextBox>
                                    <span style="color: #ffffff" __designer:mapid="345">
                                    <asp:ImageButton ID="Image2" runat="Server" 
                                        AlternateText="Click para mostrar calendario" CausesValidation="false" 
                                        ImageUrl="~/Img/calendario.jpg" onclick="Image2_Click" />
                                    </span>
                                    
                                    <anthem:Calendar ID="Calendar2" runat="server" BackColor="White" 
                                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                                        FirstDayOfWeek="Sunday" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" 
                                        Height="90px" Visible="False" 
                                        Width="92px" onselectionchanged="Calendar2_SelectionChanged">
                                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                        <SelectorStyle BackColor="#CCCCCC" />
                                        <WeekendDayStyle BackColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <OtherMonthDayStyle ForeColor="#808080" />
                                        <NextPrevStyle VerticalAlign="Bottom" />
                                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                    </anthem:Calendar>
                        </td>
                        <td class="style39">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style39">
                            <asp:Label ID="Label18" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Fecha Hasta:" Width="90px" Height="16px"></asp:Label>
                        </td>
                        <td class="style39">
                            <anthem:TextBox ID="txtFechaFin" runat="server" Width="90px"></anthem:TextBox>
                                    <span style="color: #ffffff" __designer:mapid="345">
                                    <asp:ImageButton ID="Image1" runat="Server" 
                                        AlternateText="Click para mostrar calendario" CausesValidation="false" 
                                        ImageUrl="~/Img/calendario.jpg" onclick="Image1_Click" />
                                    </span>
                                    
                                    <anthem:Calendar ID="Calendar1" runat="server" BackColor="White" 
                                        BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" 
                                        FirstDayOfWeek="Sunday" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" 
                                        Height="90px" Visible="False" 
                                        Width="92px" onselectionchanged="Calendar1_SelectionChanged">
                                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                        <SelectorStyle BackColor="#CCCCCC" />
                                        <WeekendDayStyle BackColor="#FFFFCC" />
                                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                        <OtherMonthDayStyle ForeColor="#808080" />
                                        <NextPrevStyle VerticalAlign="Bottom" />
                                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                                    </anthem:Calendar>
                        </td>
                        <td class="style39">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style39">
                            &nbsp;</td>
                        <td class="style39">
                            &nbsp;</td>
                        <td class="style39">
                            <asp:Button ID="Button1" runat="server" Text="Buscar" onclick="Button1_Click" />
                        &nbsp;&nbsp;
                            <asp:Button ID="Button2" runat="server" Text="Imprimir" 
                                onclick="Button2_Click" />
                            </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td class="style32" align="center" colspan="3">
            </td>
        </tr>
        <tr>
            <td class="style18" colspan="3">
                <anthem:GridView ID="gvw_Datos" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" Font-Names="Arial" OnRowEditing="gvw_Datos_RowEditing"
                OnRowCreated="gvw_Datos_RowCreated" 
                OnPageIndexChanging="gvw_Datos_PageIndexChanging"
                Font-Size="X-Small" ForeColor="#333333" GridLines="None" Width="627px" 
                    AllowPaging="True" >
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="IdUnidad" HeaderText="IdUnidad" SortExpression="IdUnidad" ReadOnly="True" />
                        <asp:BoundField DataField="IdMov" HeaderText="IdMov" SortExpression="IdMov" />
                        <asp:BoundField DataField="numerouc" HeaderText="Numero UC" 
                            SortExpression="numerouc" />
                        <asp:BoundField DataField="FechaRegistro" HeaderText="Fecha Registro" 
                            SortExpression="FechaRegistro" />
                        <asp:BoundField DataField="PrecintoAnterior" HeaderText="Precinto Anterior" 
                            SortExpression="PrecintoAnterior" />
                        <asp:BoundField DataField="PrecintoActual" HeaderText="Precinto Actual" 
                            SortExpression="PrecintoActual" />
                        <asp:CommandField ButtonType="Image" EditImageUrl="~/Img/printer.png" 
                            EditText="Imprimir" ShowEditButton="True" />
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </anthem:GridView>
            </td>
        </tr>
        <tr>
            <td class="style37" align="right">
                &nbsp;</td>
            <td class="style38">
                &nbsp;</td>
            <td class="style38">
            </td>
        </tr>
        <tr>
            <td class="style33">
            &nbsp;</td>
            <td class="style8">
            &nbsp;</td>
            <td>
            &nbsp;</td>
        </tr>
    </table>
</asp:Content>

