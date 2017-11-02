<%--
================================================================================================
Motivo			Fecha			Nombre		Descripción
================================================================================================
FON_CGC-947		18/08/2017		GMD			Correción de errores
--%>
<%-- FON_CGC-947 - INICIO --%>
<%-- <%@ Page Language="C#" MasterPageFile="~/MasterPages/Logon.master" AutoEventWireup="true" CodeFile="RegistroInventario.aspx.cs" Inherits="Inventario_RegistroInventario" %> --%>
<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Inventario_RegistroInventario, App_Web_sdv2cw23" enableeventvalidation="false" theme="Default" %>
<%-- FON_CGC-947 - FIN --%>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<table cellpadding="0" cellspacing="0" class="style3">
    <tr>
        <td class="style38" align="left" colspan="2">
        <input type="hidden" id="hdnId" runat="server" />
                <anthem:Button ID="btnEliminar" CausesValidation="false" runat="server" 
                    Text="Eliminarr Perfil" AutoUpdateAfterCallBack="true" 
                    onclick="btnEliminar_Click"/></td>
        <td class="style38">
        </td>
    </tr>
    <tr>
        <td align="left" colspan="2">
            </td>
        <td>
            </td>
    </tr>
    <tr>
        <td align="center" colspan="3">
            <table cellpadding="0" cellspacing="0" 
                style="width: 600px;">
                <tr>
                    <td bgcolor="#006699" class="style26" colspan="2">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Arial" 
                            Font-Size="X-Small" ForeColor="White" 
                            Text="Datos de la Unidad de Conservacion"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style43">
                    </td>
                    <td class="style20">
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style46">
                        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Número UC :"></asp:Label>
                    </td>
                    <td align="left" class="style47">
                        <asp:TextBox ID="txt_numerouc" runat="server" Width="100px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv1" runat="server" 
                            ControlToValidate="txt_numerouc" Display="None" 
                            ErrorMessage="Ingrese Numero UC"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style46">
                        <asp:Label ID="Label21" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Archivo :"></asp:Label>
                    </td>
                    <td align="left" class="style47">
                        <asp:DropDownList ID="ddl_archivo" runat="server" Font-Size="X-Small" 
                            Height="27px" Width="195px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfv2" runat="server" 
                            ControlToValidate="ddl_archivo" Display="None" 
                            ErrorMessage="Seleccione Archivo"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style46">
                        <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Ubicación Topográfica :"></asp:Label>
                    </td>
                    <td align="left" class="style47">
                        <asp:TextBox ID="txt_ubicacion" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv3" runat="server" 
                            ControlToValidate="txt_ubicacion" Display="None" 
                            ErrorMessage="Ingrese Ubicación Topográfica"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style46">
                        <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Nro. Precinto :"></asp:Label>
                    </td>
                    <td align="left" class="style47">
                        <asp:TextBox ID="txt_nroprecinto" runat="server" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv4" runat="server" 
                            ControlToValidate="txt_nroprecinto" Display="None" 
                            ErrorMessage="Ingrese Nro de Precinto"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style46">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Fondo Documental :"></asp:Label>
                    </td>
                    <td align="left" class="style47">
                        <asp:DropDownList ID="ddl_fondodoc" runat="server" Font-Size="X-Small" 
                            Height="27px" Width="195px">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfv5" runat="server" 
                            ControlToValidate="ddl_fondodoc" Display="None" 
                            ErrorMessage="Seleccione Fondo Documental"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style46">
                        <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Sección Documental :"></asp:Label>
                    </td>
                    <td align="left" class="style47">
                        <asp:DropDownList ID="ddl_seccion" runat="server" Font-Size="X-Small" 
                            Height="26px" Width="195px" AutoPostBack="True" 
                            onselectedindexchanged="ddl_seccion_SelectedIndexChanged">
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="rfv6" runat="server" 
                            ControlToValidate="ddl_seccion" Display="None" 
                            ErrorMessage="Seleccione Sección Documental"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style46">
                        <asp:Label ID="Label25" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Sub Sección Documental :"></asp:Label>
                    </td>
                    <td align="left" class="style47">
                        <asp:DropDownList ID="ddl_subseccion" runat="server" Font-Size="X-Small" 
                            Height="26px" Width="195px">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style46" align="left">
                        <asp:Label ID="Label19" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Nro. Paquetes / Expedientes :"></asp:Label>
                    </td>
                    <td class="style47" align="left">
                        <asp:TextBox ID="txt_nropaquetes" runat="server" Width="100px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv7" runat="server" 
                            ControlToValidate="txt_nropaquetes" Display="None" 
                            ErrorMessage="Ingrese Nro de Paquetes"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="style45" align="left">
                    </td>
                    <td class="style41" align="left">
                    </td>
                </tr>
                <tr>
                    <td valign="bottom" align="center" colspan="2">
                        &nbsp;<asp:Button ID="btn_additems" runat="server" Text="Adicionar Contenido" 
                                Width="142px" onclick="btn_additems_Click" Enabled="False" />
                        <asp:Label ID="lbl_idcontenido" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <anthem:Panel runat="server" ID="pItems">
                        <table style="width:90%;">
                            <tr>
                                <td bgcolor="#006699" class="style27" colspan="2">
                                    <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Names="Arial" 
                                        Font-Size="X-Small" ForeColor="White" Text="Datos del Contenido"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style28">
                                    &nbsp;</td>
                                <td align="left" class="style21">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="left" class="style28" style="height: 27px">
                                    <asp:Label ID="Label8" runat="server" Font-Names="Arial" Font-Size="Small" 
                                        ForeColor="#666666" Text="Serie :"></asp:Label>
                                </td>
                                <td align="left" class="style21" style="height: 27px">
                                    <asp:DropDownList ID="ddl_serie" runat="server" Font-Size="X-Small" 
                                        Height="27px" Width="245px" AutoPostBack="true" 
                                        onselectedindexchanged="ddl_serie_SelectedIndexChanged">
                                    </asp:DropDownList>
									<%-- FON_CGC-947 - INICIO --%>
									<%-- 
                                    <asp:RequiredFieldValidator ID="rfv8" runat="server" 
                                        ControlToValidate="ddl_serie" Display="None" ErrorMessage="Seleccione Serie"></asp:RequiredFieldValidator>
									--%>
									<%-- FON_CGC-947 - FIN --%>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style36">
                                    <asp:Label ID="Label9" runat="server" Font-Names="Arial" Font-Size="Small" 
                                        ForeColor="#666666" Text="Sub Serie:"></asp:Label>
                                </td>
                                <td align="left" class="style30">
                                    <asp:DropDownList ID="ddl_subserie" runat="server" Font-Size="X-Small" 
                                        Height="28px" Width="245px">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style36" style="height: 26px">
                                    <asp:Label ID="Label15" runat="server" Font-Names="Arial" Font-Size="Small" 
                                        ForeColor="#666666" Text="Nro. Registro:"></asp:Label>
                                </td>
                                <td align="left" class="style30" style="height: 26px">
                                    <asp:TextBox ID="txt_nroregistro" runat="server" Width="100px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style36">
                                    <asp:Label ID="Label22" runat="server" Font-Names="Arial" Font-Size="Small" 
                                        ForeColor="#666666" Text="Pieza Documental:"></asp:Label>
                                </td>
                                <td align="left" class="style30">
                                    <asp:TextBox ID="txt_piezadoc" runat="server" Height="61px" 
                                        TextMode="MultiLine" Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style36">
                                    <asp:Label ID="Label17" runat="server" Font-Names="Arial" Font-Size="Small" 
                                        ForeColor="#666666" Text="Valor :"></asp:Label>
                                </td>
                                <td align="left" class="style30">
                                    <asp:RadioButtonList ID="rb_valor" runat="server" Font-Names="Arial" 
                                        Font-Size="Small" ForeColor="#666666" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1">Temporal</asp:ListItem>
                                        <asp:ListItem Value="2">Permanente</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style28">
                                    <asp:Label ID="Label10" runat="server" Font-Names="Arial" Font-Size="Small" 
                                        ForeColor="#666666" Text="Descripción Documental:"></asp:Label>
                                </td>
                                <td align="left" class="style21">
                                    <asp:TextBox ID="txt_descripcion" runat="server" Height="61px" TextMode="MultiLine" 
                                        Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style41">
                                    <asp:Label ID="Label18" runat="server" Font-Names="Arial" Font-Size="Small" 
                                        ForeColor="#666666" Text="Nivel de Archivo:"></asp:Label>
                                </td>
                                <td align="left" class="style41">
                                    <asp:RadioButtonList ID="rb_nivel_archivo" runat="server" Font-Names="Arial" 
                                        Font-Size="Small" ForeColor="#666666" RepeatDirection="Horizontal" 
                                        Height="19px">
                                        <asp:ListItem Value="1">Gestión</asp:ListItem>
                                        <asp:ListItem Value="2">Periferico</asp:ListItem>
                                        <asp:ListItem Value="3">Central</asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style38">
                                    <asp:Label ID="Label11" runat="server" Font-Names="Arial" Font-Size="Small" 
                                        ForeColor="#666666" Text="Nro. Folios:"></asp:Label>
                                </td>
                                <td align="left" class="style38">
                                    <asp:TextBox ID="txt_nrofolios" runat="server" Width="100px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style38">
                                    <asp:Label ID="Label12" runat="server" Font-Names="Arial" Font-Size="Small" 
                                        ForeColor="#666666" Text="Fecha Extrema:"></asp:Label>
                                </td>
                                <td align="left" class="style38">
                                    <asp:Label ID="Label23" runat="server" Font-Names="Arial" Font-Size="Small" 
                                        ForeColor="#666666" Text="del"></asp:Label>
                                    <anthem:TextBox ID="txt_fextrema_ini" runat="server" Width="64px"></anthem:TextBox>
                                    <asp:Label ID="Label24" runat="server" Font-Names="Arial" Font-Size="Small" 
                                        ForeColor="#666666" Text="al"></asp:Label>
                                    <anthem:TextBox ID="txt_fextrema_fin" runat="server" Width="64px"></anthem:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style42">
                                    <asp:Label ID="Label13" runat="server" Font-Names="Arial" Font-Size="Small" 
                                        ForeColor="#666666" Text="Período Retención:"></asp:Label>
                                </td>
                                <td align="left" class="style42">
                                    <asp:TextBox ID="txt_periodo_retencion" runat="server" Width="100px"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="style37">
                                    <asp:Label ID="Label20" runat="server" Font-Names="Arial" Font-Size="Small" 
                                        ForeColor="#666666" Text="Observaciones :"></asp:Label>
                                </td>
                                <td align="left" class="style35">
                                    <asp:TextBox ID="txt_observaciones" runat="server" Height="61px" TextMode="MultiLine" 
                                        Width="250px"></asp:TextBox>
                                </td>
                            </tr>
                                    <tr>
                                        <td align="left" class="style37">
                                            &nbsp;</td>
                                        <td align="left" class="style35">
                                            <asp:Button ID="Button3" runat="server" Text="Aceptar" Width="83px" 
                                                onclick="Button3_Click" />
                                            &nbsp;&nbsp;
                                            <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                                                Text="Cancelar" Width="83px" CausesValidation="False" />
                                        </td>
                            </tr>
                                    </table>
                                    </anthem:Panel>
                        </td>
                    </tr>
                    </table>
            
        </td>
    </tr>
    <tr>
        <td class="style18" colspan="3">
            <anthem:GridView ID="gvw_Datos" OnRowCreated="gvw_Datos_RowCreated" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" Font-Names="Arial" OnRowEditing="gvw_Datos_RowEditing"
                OnRowDeleting="gvw_Datos_RowDeleting"  OnPageIndexChanging="gvw_Datos_PageIndexChanging"
                OnSelectedIndexChanged="gvw_Datos_SelectedIndexChanged"
                Font-Size="X-Small" ForeColor="#333333" GridLines="None" Width="627px" 
                EmptyDataText="No se ha agregado ningun contenido.">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="IdContenido" HeaderText="IdContenido" 
                        SortExpression="IdContenido" />
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
                        SortExpression="FechaExtrema_Inicio" DataFormatString="{0:d}" />
                    <asp:BoundField DataField="FechaExtrema_Fin" HeaderText="Fecha Extrema Fin" 
                        SortExpression="FechaExtrema_Fin" />
                    <asp:BoundField DataField="PeriodoRetencion" HeaderText="PeriodoRetencion" 
                        SortExpression="PeriodoRetencion" />
                    <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" 
                        SortExpression="Observaciones" />
                    <asp:CommandField ButtonType="Image" EditImageUrl="~/Img/edit.gif" 
                        EditText="Editar" ShowEditButton="True" />
                    <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Img/delete1.gif" 
                        DeleteText="Eliminar" ShowDeleteButton="True" />
                    <asp:CommandField ButtonType="Image" SelectImageUrl="~/Img/Select.gif" 
                        SelectText="Copiar" ShowSelectButton="True" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
				<EditRowStyle BackColor="#999999" />
                <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </anthem:GridView>
        </td>
    </tr>
    <tr>
        <td class="style33" colspan="3">
                        &nbsp;</td>
    </tr>
    <tr>
        <td class="style33" colspan="3">
                        <asp:Label ID="lbl_idunidad" runat="server"></asp:Label>
                        <asp:Button ID="Button2" runat="server" Text="Grabar U.C." 
                            Width="142px" onclick="Button2_Click1" />
                        &nbsp;
                        <asp:Button ID="Button4" runat="server" Text="Regresar" 
                            Width="142px" onclick="Button4_Click" CausesValidation="False" />
                    </td>
    </tr>
    <tr>
        <td class="style33">
            &nbsp;</td>
        <td class="style8">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                ShowMessageBox="True" ShowSummary="False" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
