<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Inventario_NuevoMovimiento, App_Web_c4z4mhwj" theme="Default" %>

<%@MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style3" align="center">
        <tr>
            <td class="style39" align="left" colspan="2">
                <asp:Label ID="Label11" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#006699" 
                    Text="Inventarios -&gt; Registro de Nuevo Movimiento"></asp:Label>
            </td>
            <td class="style39">
            </td>
        </tr>
        <tr>
            <td class="style40" colspan="3">
                <table align="center" cellpadding="0" cellspacing="0" class="style14" 
                style="width: 59%; height: 190px">
                    <tr>
                        <td bgcolor="#006699" class="style26" colspan="2">
                            <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Arial" 
                            Font-Size="Small" ForeColor="White" Text="Datos de Ubicación"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="style28">
                        </td>
                        <td class="style29">
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style19">
                            <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Número UC"></asp:Label>
                        </td>
                        <td align="left" class="style30">
                            <asp:Label ID="lbl_NumeroUC" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#006699"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style19">
                            <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Ubicación Topográfica :"></asp:Label>
                        </td>
                        <td align="left" class="style30">
                            <asp:Label ID="lbl_Ubicacion" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#006699"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style25">
                            <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Nro. Precinto Actual :"></asp:Label>
                        </td>
                        <td align="left" class="style31">
                            <asp:Label ID="lbl_Precinto" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#006699"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style32">
                            <asp:Label ID="Label7" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Tipo Movimiento :"></asp:Label>
                        </td>
                        <td align="left" class="style33">
                            <asp:RadioButtonList ID="rb_tipomov" runat="server" Font-Names="Arial" 
                                Font-Size="Small" ForeColor="Gray" Height="26px" RepeatDirection="Horizontal" 
                                Width="172px" AutoPostBack="True" 
                                onselectedindexchanged="rb_tipomov_SelectedIndexChanged">
                                <asp:ListItem Value="1">Ingreso</asp:ListItem>
                                <asp:ListItem Value="2" Selected="True">Salida</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:RequiredFieldValidator ID="rfv2" runat="server" 
                                ControlToValidate="rb_tipomov" Display="None" 
                                ErrorMessage="Seleccione Tipo de Movimiento"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" class="style19">
                            &nbsp;</td>
                        <td align="left" class="style30">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style28">
                        </td>
                        <td class="style29">
                            <asp:Label ID="Label10" runat="server" Font-Names="Arial" Font-Size="Small" 
                                ForeColor="#006699" Text="CONTENIDO"></asp:Label>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style18" colspan="3">
                <Anthem:GridView ID="gvw_Datos" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" Font-Names="Arial" OnRowCreated="gvw_Datos_RowCreated" 
                Font-Size="X-Small" ForeColor="#333333" GridLines="None" Width="672px" 
                    style="margin-left: 0px" 
                    EmptyDataText="No existe contenido para esta Unidad de Concervación">
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="IdContenido" HeaderText="IdContenido" 
                            SortExpression="IdContenido" />
                        <asp:BoundField DataField="IdUnidad" HeaderText="IdUnidad" 
                        SortExpression="IdUnidad" />
                    <asp:BoundField DataField="Serie" HeaderText="Serie" 
                        SortExpression="Serie" />
                    <asp:BoundField DataField="SubSerie" HeaderText="SubSerie" 
                        SortExpression="SubSerie" />
                    <asp:BoundField DataField="PiezaDoc" HeaderText="Pieza Documental" 
                        SortExpression="PiezaDoc" />
                    <asp:BoundField DataField="NroRegistro" HeaderText="NroRegistro" 
                        SortExpression="NroRegistro" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" 
                        SortExpression="Descripcion" />
                    <asp:BoundField DataField="StrValor" HeaderText="Valor" 
                        SortExpression="StrValor" />
                    <asp:BoundField DataField="StrNivelArchivo" HeaderText="NivelArchivo" 
                        SortExpression="StrNivelArchivo" />
                    <asp:BoundField DataField="NroFolios" HeaderText="NroFolios" 
                        SortExpression="NroFolios" />
                    <asp:BoundField DataField="FechaExtrema_Inicio" HeaderText="Fecha Extrema Inicio" 
                        SortExpression="FechaExtrema_Inicio" />
                        <asp:BoundField DataFormatString="FechaExtrema_Fin" 
                            HeaderText="Fecha Extrema Fin" SortExpression="FechaExtrema_Fin" />
                    <asp:BoundField DataField="PeriodoRetencion" HeaderText="PeriodoRetencion" 
                        SortExpression="PeriodoRetencion" />
                        <asp:BoundField DataField="StrEstado" HeaderText="Estado" ReadOnly="True" 
                            SortExpression="StrEstado" />
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </Anthem:GridView> 
            </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style8" colspan="2">
                <table cellpadding="0" cellspacing="0" style="width: 379px">
                    <tr>
                        <td align="left" class="style36">
                            <asp:Label ID="Label12" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Nuevo Precinto :"></asp:Label>
                        </td>
                        <td class="style38">
                            &nbsp;</td>
                        <td align="left" class="style37">
                            <asp:TextBox ID="txt_newprecinto" runat="server" Width="111px" MaxLength="50"></asp:TextBox>
                        </td>
                        <td class="style36">
                            <asp:RequiredFieldValidator ID="rfv1" runat="server" 
                                ControlToValidate="txt_newprecinto" Display="None" 
                                ErrorMessage="Ingrese Nuevo Precinto."></asp:RequiredFieldValidator>
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td align="left" class="style36">
                            &nbsp;</td>
                        <td class="style38">
                            &nbsp;</td>
                        <td align="left" class="style37">
                            &nbsp;</td>
                        <td class="style36">
                            &nbsp;</td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style8">
                <asp:Button ID="btn_grabar" runat="server" Text="Grabar Movimiento" 
                                Width="124px" onclick="Button4_Click" Visible="False" />
            &nbsp;
                <asp:Button ID="Button5" runat="server" Text="Regresar" 
                                Width="124px" onclick="Button5_Click" 
                    CausesValidation="False" />
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ShowMessageBox="True" ShowSummary="False" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style40">
                &nbsp;</td>
            <td class="style8">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

