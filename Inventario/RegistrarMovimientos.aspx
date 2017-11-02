<%--
================================================================================================
Motivo			Fecha			Nombre		Descripción
================================================================================================
FON_CGC-947		18/08/2017		GMD			Correción de errores
--%>
<%-- FON_CGC-947 - INICIO --%>
<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Inventario_RegistrarMovimientos, App_Web_c4z4mhwj" enableeventvalidation="false" theme="Default" %>
<%-- <%@ Page Language="C#" MasterPageFile="~/MasterPages/Logon.master" AutoEventWireup="true" CodeFile="RegistrarMovimientos.aspx.cs" Inherits="Inventario_RegistrarMovimientos"%> --%>
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
                            <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Numero de UC:" Width="91px"></asp:Label>
                        </td>
                        <td class="style39">
                            <asp:TextBox ID="txt_numerouc" runat="server" style="margin-left: 0px" 
                                Width="195px"></asp:TextBox>
                        </td>
                        <td class="style39">
                            </td>
                    </tr>
                    <tr>
                        <td class="style39">
                            <asp:Label ID="Label22" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Codigo de Barras:" Width="109px"></asp:Label>
                        </td>
                        <td class="style39">
                            <asp:TextBox ID="txt_codigobarras" runat="server" style="margin-left: 0px" 
                                Width="195px"></asp:TextBox>
                        </td>
                        <td class="style39">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style39">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Fondo Documental :" Width="120px" Visible="False"></asp:Label>
                        </td>
                        <td class="style39">
                        <asp:DropDownList ID="ddl_fondodoc" runat="server" Font-Size="X-Small" 
                            Height="17px" Width="200px" Visible="False">
                        </asp:DropDownList>
                        </td>
                        <td class="style39">
                            </td>
                    </tr>
                    <tr>
                        <td class="style43">
                            <asp:Label ID="Label17" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Seccion Documental:" Width="126px"></asp:Label>
                        </td>
                        <td class="style43">
                        <asp:DropDownList ID="ddl_seccion" runat="server" Font-Size="X-Small" 
                            Height="17px" Width="200px">
                        </asp:DropDownList>
                        </td>
                        <td class="style43">
                            </td>
                    </tr>
                    <tr>
                        <td class="style39">
                            <asp:Label ID="Label18" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Serie:" Width="42px"></asp:Label>
                        </td>
                        <td class="style39">
                        <asp:DropDownList ID="ddl_serie" runat="server" Font-Size="X-Small" 
                            Height="17px" Width="200px" AutoPostBack="True" 
                                onselectedindexchanged="ddl_serie_SelectedIndexChanged">
                        </asp:DropDownList>
                        </td>
                        <td class="style39">
                            </td>
                    </tr>
                    <tr>
                        <td class="style40">
                            <asp:Label ID="Label19" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Sub Serie:" Height="16px" Width="85px"></asp:Label>
                        </td>
                        <td class="style40">
                        <asp:DropDownList ID="ddl_subserie" runat="server" Font-Size="X-Small" 
                            Height="17px" Width="200px">
                        </asp:DropDownList>
                        </td>
                        <td class="style40" style="text-align: center">
                            &nbsp;</td>
                    </tr>
                     <tr>
                        <td class="style40">
                            <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Archivo:" Height="16px" Width="85px"></asp:Label>
                        </td>
                        <td class="style40">
                        <asp:DropDownList ID="ddl_Archivo" runat="server" Font-Size="X-Small" 
                            Height="17px" Width="200px">
                        </asp:DropDownList>
                        </td>
                        <td class="style40" style="text-align: center">
                            &nbsp;</td>
                    </tr>
                    <tr>
                        <td class="style39">
                            <asp:Label ID="Label20" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Pieza Documental:" Width="112px"></asp:Label>
                        </td>
                        <td class="style39">
                            <asp:TextBox ID="txt_piezadoc" runat="server" style="margin-left: 0px" 
                                Width="195px"></asp:TextBox>
                        </td>
                        <td class="style39" style="text-align: center">
                        </td>
                    </tr>
                    <tr>
                        <td class="style40">
                            <asp:Label ID="Label21" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Nro de Registro:" Width="104px"></asp:Label>
                        </td>
                        <td class="style40">
                            <asp:TextBox ID="txt_nroregistro" runat="server" style="margin-left: 0px" 
                                Width="195px"></asp:TextBox>
                        </td>
                        <td class="style40" style="text-align: center">
                            <asp:Button ID="Button1" runat="server" Text="Buscar" onclick="Button1_Click" />
                        </td>
                    </tr>
                    </table>
            </td>
        </tr>
        <tr>
            <td class="style32" align="center" colspan="3">
            <input type="hidden" id="hdnId" runat="server" />
                <anthem:Button ID="btnEliminar" CausesValidation="false" runat="server" 
                    Text="Eliminarr Perfil" AutoUpdateAfterCallBack="true" 
                    onclick="btnEliminar_Click"/>
                    </td>
        </tr>
        <tr>
            <td class="style18" colspan="3">
                <anthem:GridView ID="gvw_Datos" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" Font-Names="Arial" OnRowEditing="gvw_Datos_RowEditing"
                OnRowDeleting="gvw_Datos_RowDeleting"  OnPageIndexChanging="gvw_Datos_PageIndexChanging"
                OnRowCreated="gvw_Datos_RowCreated" 
                Font-Size="X-Small" ForeColor="#333333" GridLines="None" Width="627px" 
                    AllowPaging="True" EnableModelValidation="True" >
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="IdUnidad" HeaderText="Unidad" 
                            SortExpression="IdUnidad" ReadOnly="True" />
                        <asp:BoundField DataField="NumeroUC" HeaderText="Numero UC" 
                            SortExpression="NumeroUC" />
                        <asp:BoundField DataField="Ubicacion" HeaderText="Ubicacion" SortExpression="Ubicacion" />
                        <asp:BoundField DataField="PrecintoActual" HeaderText="Precinto Actual" 
                            SortExpression="PrecintoActual" />
                        <asp:BoundField DataField="FondoDoc" HeaderText="Fondo Documental" SortExpression="FondoDoc" />
                        <asp:BoundField DataField="Seccion" HeaderText="Seccion" SortExpression="Seccion" />
                        <asp:BoundField DataField="SubSeccion" HeaderText="Sub Seccion" 
                            SortExpression="SubSeccion" />
                        <asp:BoundField DataField="Archivo" HeaderText="Archivo" />
                        <asp:BoundField DataField="NumeroPaquetes" HeaderText="Nro. Paquetes" 
                            SortExpression="NumeroPaquetes" />
                        <asp:CommandField ButtonType="Image" EditImageUrl="~/Img/zoom_in_16x16.gif" 
                            EditText="Ver Contenido" ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" ButtonType="Image" 
                            DeleteImageUrl="~/Img/new.png" DeleteText="Crear Movimiento" >
                        </asp:CommandField>
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

