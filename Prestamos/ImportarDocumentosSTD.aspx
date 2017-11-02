<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" validaterequest="false" inherits="ImportarDocumentosSTD_Form, App_Web_rn5pk5zs" title=" .: SIADOC - Importar Documentos del STD :." theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td colspan="2">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" Text=" "
                        Width="314px"></asp:Label>
                </td>
            </tr>
           
            <tr style="background: #E2DED6; height: 20px">
                <td colspan="2">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Small" Text="Importar Registros del STD"
                        Width="314px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label3" runat="server" Text="Area : "></asp:Label>
                    <anthem:DropDownList ID="ddlAreaSTD" runat="server" Width="245px">
                    </anthem:DropDownList>
                </td>
                <td style="width: 100px; height: 29px; text-align: left;">
                    <asp:Label ID="Label4" runat="server" Text="Usuario : "></asp:Label>
                    <anthem:DropDownList ID="ddlUsuarioSTD" runat="server" Width="245px">
                    </anthem:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label8" runat="server" Text="Proceso : "></asp:Label>
                    <anthem:DropDownList AutoCallBack="true" ID="ddlProcesoSTD" runat="server" Width="400px"
                        OnSelectedIndexChanged="ddlProcesoSTD_SelectedIndexChanged">
                    </anthem:DropDownList>
                </td>
                <td style="width: 100px; height: 29px; text-align: left;">
                    <asp:Label ID="Label22" runat="server" Text="Prioridad : "></asp:Label>
                    <anthem:DropDownList ID="ddlPrioridadSTD" runat="server" Width="245px">
                    </anthem:DropDownList>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 29px; text-align: left;">
                    <asp:Label ID="Label9" runat="server" Text="Empresa : "></asp:Label>
                    <anthem:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/Img/search_again_16x16.gif"
                        CausesValidation="false" OnClick="ImageButton3_Click" />
                    <anthem:Label ID="lblEmpresa" AutoUpdateAfterCallBack="true" runat="server" Text=""></anthem:Label>
                    <br />
                    <anthem:Panel Width="98%" ID="pnlEmpresa" BorderStyle="Groove" runat="server" Visible="false">
                        <table border="0" width="100%" cellpadding="0" cellspacing="0">
                            <tr>
                                <td>
                                    <asp:Label ID="Label18" runat="server" Text="Tipo Empresa : "></asp:Label>
                                </td>
                                <td>
                                    <anthem:DropDownList ID="ddltipoEmpresa" AutoCallBack="true" runat="server" Width="245px"
                                        OnSelectedIndexChanged="ddltipoEmpresa_SelectedIndexChanged">
                                    </anthem:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label19" runat="server" Text="Tipo Busqueda : "></asp:Label>
                                </td>
                                <td>
                                    <anthem:DropDownList ID="ddlTipoBusqueda" AutoCallBack="true" runat="server" Width="245px"
                                        OnSelectedIndexChanged="ddlTipoBusqueda_SelectedIndexChanged">
                                    </anthem:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label20" runat="server" Text="Descripcion : "></asp:Label>
                                </td>
                                <td>
                                    <anthem:TextBox ID="txtDescripcionEmpresa" AutoUpdateAfterCallBack="true" runat="server"
                                        Width="242px"></anthem:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Label ID="Label21" runat="server" Text="Estado : "></asp:Label>
                                </td>
                                <td>
                                    <anthem:DropDownList ID="ddlEstadoEmpresaSTD" AutoCallBack="true" runat="server"
                                        Width="245px">
                                    </anthem:DropDownList>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                </td>
                                <td>
                                    <anthem:Button ID="btnBuscarEmpresa" CausesValidation="false" Text="Buscar" AutoUpdateAfterCallBack="true"
                                        runat="server" OnClick="btnBuscarEmpresa_Click"></anthem:Button>
                                    &nbsp;<anthem:Button ID="btnCancelar" runat="server" CausesValidation="false" AutoUpdateAfterCallBack="true"
                                        Text="Aceptar" OnClick="btnCancelar_Click" />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <anthem:GridView EmptyDataText="No existen registros" ID="gvw_Empresas" runat="server"
                                        AutoGenerateColumns="False" CaptionAlign="Bottom" CellPadding="4" CssClass="smalltext"
                                        ForeColor="#8F8F8F" GridLines="Horizontal" AllowPaging="True" PageSize="15" BorderStyle="Solid"
                                        BorderWidth="1px" AutoUpdateAfterCallBack="True" UpdateAfterCallBack="True" EnableModelValidation="True"
                                        OnPageIndexChanging="gvw_Empresas_PageIndexChanging">
                                        <FooterStyle BackColor="#B1B1B1" Font-Bold="True" ForeColor="White" />
                                        <RowStyle ForeColor="#333333" />
                                        <Columns>
                                            <asp:BoundField DataField="IDEMPRESA" HeaderText="Cod. Empresa" SortExpression="IDEMPRESA" />
                                            <asp:BoundField DataField="DESCRIPCION" HeaderText="Razon Social/Nombres Apellidos"
                                                SortExpression="DESCRIPCION" />
                                            <asp:BoundField DataField="CODIGO" HeaderText="RUC/DNI" SortExpression="CODIGO" />
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate>
                                                    <anthem:CheckBox ID="CheckBox1" AutoCallBack="true" OnCheckedChanged="Check_ClickedEmpresa"
                                                        AutoUpdateAfterCallBack="true" runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                        <PagerStyle BackColor="Gainsboro" ForeColor="#757575" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                        <HeaderStyle BackColor="Gainsboro" Font-Bold="True" ForeColor="#757575" Height="20px" />
                                        <EditRowStyle BackColor="#999999" />
                                        <AlternatingRowStyle BackColor="White" />
                                        <PagerSettings PageButtonCount="15" />
                                    </anthem:GridView>
                                </td>
                            </tr>
                        </table>
                    </anthem:Panel>
                </td>
            </tr>
            <tr>
                <td style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label10" runat="server" Text="Fecha Desde : "></asp:Label>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <anthem:TextBox ID="txt_FechaDesde" AutoUpdateAfterCallBack="true" runat="server"
                                    Width="97px"></anthem:TextBox>
                                <anthem:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/Img/calendario.jpg"
                                    OnClick="ImageButton1_Click" CausesValidation="false" />
                                <anthem:RequiredFieldValidator ID="rfv21" Enabled="false" runat="server" ControlToValidate="txt_FechaDesde"
                                    Display="None" ErrorMessage="Ingrese Fecha"></anthem:RequiredFieldValidator>
                                <anthem:RangeValidator ID="rv1" runat="server" ControlToValidate="txt_FechaDesde"
                                    ErrorMessage="Formato fecha incorrecta" Display="None" Type="Date" MinimumValue="01/01/1900"
                                    MaximumValue="01/01/2099"></anthem:RangeValidator>
                            </td>
                            <td style="width: 19px; height: 20px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <anthem:Calendar CssClass="smalltext" DayHeaderStyle-BackColor="#D9D9E6" ID="Calendar1"
                                    runat="server" AutoUpdateAfterCallBack="True" OnSelectionChanged="Calendar1_SelectionChanged"
                                    Visible="False">
                                </anthem:Calendar>
                            </td>
                        </tr>
                    </table>
                </td>
                <td style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label11" runat="server" Text="Fecha Hasta : "></asp:Label>
                    <table border="0" cellpadding="0" cellspacing="0">
                        <tr>
                            <td>
                                <anthem:TextBox ID="txt_FechaHasta" AutoUpdateAfterCallBack="true" runat="server"
                                    CssClass="smalltext" Width="97px"></anthem:TextBox>
                                <anthem:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Img/calendario.jpg"
                                    OnClick="ImageButton2_Click" CausesValidation="false" />
                                <anthem:RequiredFieldValidator ID="rfv2" Enabled="false" runat="server" ControlToValidate="txt_FechaHasta"
                                    Display="None" ErrorMessage="Ingrese Fecha"></anthem:RequiredFieldValidator>
                                <anthem:RangeValidator ID="rgv2" runat="server" ControlToValidate="txt_FechaHasta"
                                    ErrorMessage="Formato fecha incorrecta" Display="None" Type="Date" MinimumValue="01/01/1900"
                                    MaximumValue="01/01/2099"></anthem:RangeValidator>
                            </td>
                            <td style="width: 19px; height: 20px">
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <anthem:Calendar CssClass="smalltext" DayHeaderStyle-BackColor="#D9D9E6" ID="Calendar2"
                                    runat="server" AutoUpdateAfterCallBack="True" OnSelectionChanged="Calendar2_SelectionChanged"
                                    Visible="False">
                                </anthem:Calendar>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label12" runat="server" Text="Nro. Registro : "></asp:Label>
                    <anthem:TextBox ID="txtNroRegistro" AutoUpdateAfterCallBack="true" runat="server"
                        Width="245" CssClass="smalltext"></anthem:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label14" runat="server" Text="Nro. Documento Interno:"></asp:Label>
                    <anthem:TextBox ID="txtNroDocInterno" AutoUpdateAfterCallBack="true" runat="server"
                        Width="245" CssClass="smalltext"></anthem:TextBox>
                </td>
                <td style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label15" runat="server" Text="Nro. Documento Externo:"></asp:Label>
                    <anthem:TextBox ID="txtNroDocExterno" AutoUpdateAfterCallBack="true" runat="server"
                        Width="245" CssClass="smalltext"></anthem:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label13" runat="server" Text="Asunto Sumilla : "></asp:Label>
                    <anthem:TextBox ID="txtAsuntoSumilla" AutoUpdateAfterCallBack="true" runat="server"
                        Width="400px" CssClass="smalltext"></anthem:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label16" runat="server" Text="Código Barras : "></asp:Label>
                    <anthem:TextBox ID="txtCodigoBarras" AutoUpdateAfterCallBack="true" runat="server"
                        Width="245" CssClass="smalltext"></anthem:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="width: 155px; height: 29px; text-align: left;">
                    <asp:Label ID="Label17" runat="server" Text="Estado del Documento : "></asp:Label>
                    <anthem:DropDownList ID="ddlEstadoDocumentoSTD" runat="server" Width="245px">
                    </anthem:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 155px; height: 1px; text-align: right">
                </td>
                <td style="height: 1px">
                    <anthem:Button ID="btnBuscar" runat="server" Text="Buscar" CausesValidation="false"
                        OnClick="Button1_Click" />
                &nbsp;
                <anthem:CheckBox runat=server ID=chkSelTodosPagina Text = "Seleccionar todos"  AutoCallBack=true
                        oncheckedchanged="chkSelTodosPagina_CheckedChanged" />
                </td>
            </tr>
            <tr>
                <td style="width: 155px; height: 29px; text-align: right">
                </td>
                <td style="width: 100px; height: 29px" align="right">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2" style="height: 29px; text-align: center">
                    <anthem:GridView Width="95%" ID="gvw_Datos" runat="server" ForeColor="#333333" AutoGenerateColumns="False"
                        OnRowCreated="gvw_Datos_RowCreated" CellPadding="4" DataKeyNames="IdTransaccion"
                        EmptyDataText='No se encontraron registros' OnPageIndexChanging="gvw_Datos_PageIndexChanging"
                        OnRowCommand="gvw_Datos_RowCommand" AllowPaging="false">
                        <EditRowStyle BackColor="#999999" />
                        <SelectedRowStyle Font-Bold="True" />
                        <PagerStyle BackColor="Gainsboro" ForeColor="#747474" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="Gainsboro" Font-Bold="True" HorizontalAlign="Center" ForeColor="#747474" />
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="CodigoDocumentoInterno" HeaderText="Id Trámite"></asp:BoundField>
                            <asp:BoundField DataField="FECHAINGRESO" HeaderText="Fecha Ingreso"></asp:BoundField>
                            <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="EMPRESA" HeaderText="Empresa">
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="ACTIVIDADORIGEN" HeaderText="Actividad Origen">
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="LOGINDESTINO" HeaderText="Usuario Actual">
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="Asunto" HeaderText="Asunto">
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                            <asp:BoundField ItemStyle-HorizontalAlign="Left" DataField="DocumentoExterno" HeaderText="DocumentoExterno">
                                <ItemStyle HorizontalAlign="Left"></ItemStyle>
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="">
                                <ItemTemplate>
                                    <anthem:CheckBox ID="CheckBox1" AutoCallBack="true" OnCheckedChanged="Check_Clicked"
                                        AutoUpdateAfterCallBack="true" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </anthem:GridView>
                    <anthem:Button ID="btnPrevio" runat="server" CausesValidation="false" Text="<" CommandName="Previous"
                        runat="server" OnCommand="ChangePage" />
                    &nbsp;<anthem:Button ID="btnSiguiente" runat="server" Text=">" CausesValidation="false"
                        CommandName="Next" OnCommand="ChangePage" />
                    <br>
                    <anthem:Label ID="Label23" runat="server" Font-Bold="True" Font-Size="Small" Text="Pagina: "></anthem:Label>
                    <anthem:Label ID="lblCurrentPage" AutoUpdateAfterCallBack="true" runat="server" Font-Bold="True"
                        Font-Size="Small" Text="0"></anthem:Label>&nbsp;
                    <anthem:Label ID="Label24" runat="server" Font-Bold="True" Font-Size="Small" Text="  de "></anthem:Label>&nbsp;
                    <anthem:Label ID="lblTotalPaginas" AutoUpdateAfterCallBack="true" runat="server"
                        Font-Bold="True" Font-Size="Small" Text="0"></anthem:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 155px; height: 1px; text-align: right">
                </td>
                <td style="width: 100px; height: 1px">
                    <anthem:Button ID="btnRegistrar" runat="server" Text="Importar" OnClick="btnRegistrar_Click" />
                </td>
            </tr>
        </table>
        <anthem:ValidationSummary DisplayMode="List" ShowSummary="false" ID="ValidationSummary1"
            runat="server" ShowMessageBox="True" />
    </div>
</asp:Content>
