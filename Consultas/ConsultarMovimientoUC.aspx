<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Consulta_ConsultaMovimientoUC, App_Web_5aa3b1an" theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style3">
        <tr>
            <td class="style41" align="left" colspan="3">
                <table align="center" cellpadding="0" cellspacing="0" class="style36">
                    <tr>
                        <td class="style43">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Numero UC :" Width="98px"></asp:Label>
                        </td>
                        <td class="style42">
                            <asp:TextBox ID="txtNumeroUC" runat="server" Width="90px"></asp:TextBox>
                        </td>
                        <td class="style42">
                            </td>
                    </tr>
                    <tr>
                        <td class="style44">
                        <asp:Label ID="Label19" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Tipo Movimiento :" Width="112px"></asp:Label>
                        </td>
                        <td class="style39" colspan="2">
                            <asp:RadioButtonList ID="rb_tipomov" runat="server" Font-Names="Arial" 
                                Font-Size="Small" ForeColor="Gray" Height="26px" RepeatDirection="Horizontal" 
                                Width="172px" >
                                <asp:ListItem Value="1">Ingreso</asp:ListItem>
                                <asp:ListItem Value="2">Salida</asp:ListItem>
                                <asp:ListItem Selected="True" Value="0">Todos</asp:ListItem>
                            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="style44">
                            <asp:Label ID="Label17" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Fecha Desde:" Width="94px"></asp:Label>
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
                        <td class="style44">
                            <asp:Label ID="Label18" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Fecha Hasta:" Width="85px"></asp:Label>
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
                        &nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                    <tr>
                        <td class="style44">
                            &nbsp;</td>
                        <td class="style39">
                                    &nbsp;</td>
                        <td class="style39">
                            <asp:Button ID="Button1" runat="server" Text="Buscar" onclick="Button1_Click" />
                        &nbsp;
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
                OnPageIndexChanging="gvw_Datos_PageIndexChanging"
                Font-Size="X-Small" ForeColor="#333333" GridLines="None" Width="627px" 
                    AllowPaging="True" >
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="TipoMovimiento" HeaderText="Tipo Movimiento" 
                            SortExpression="TipoMovimiento" />
                        <asp:BoundField DataField="FechaRegistro" HeaderText="Fecha Registro" 
                            SortExpression="FechaRegistro" />
                        <asp:BoundField DataField="numerouc" HeaderText="Numero UC" 
                            SortExpression="numerouc" />
                        <asp:BoundField DataField="PrecintoAnterior" HeaderText="Precinto Anterior" 
                            SortExpression="PrecintoAnterior" />
                        <asp:BoundField DataField="PrecintoActual" HeaderText="Precinto Actual" 
                            SortExpression="PrecintoActual" />
                        <asp:BoundField DataField="Serie" HeaderText="Serie" SortExpression="Serie" />
                        <asp:BoundField DataField="SubSerie" HeaderText="SubSerie" 
                            SortExpression="SubSerie" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" 
                            SortExpression="Descripcion" />
                        <asp:BoundField DataField="Valor" HeaderText="Valor" SortExpression="Valor" />
                        <asp:BoundField DataField="NroRegistro" HeaderText="Nro Registro" 
                            SortExpression="NroRegistro" />
                        <asp:BoundField DataField="NroFolios" HeaderText="Nro Folios" 
                            SortExpression="NroFolios" />
                        <asp:BoundField DataField="PeriodoRetencion" HeaderText="Periodo Retencion" 
                            SortExpression="PeriodoRetencion" />
                        <asp:BoundField DataField="NivelArchivo" HeaderText="Nivel Archivo" 
                            SortExpression="NivelArchivo" />
                        <asp:BoundField DataField="EstadoActual" HeaderText="Estado Actual" 
                            SortExpression="EstadoActual" />
                        <asp:CommandField ButtonType="Image" EditImageUrl="~/Img/printer.png" 
                            EditText="Imprimir" ShowEditButton="True" Visible="False" />
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

