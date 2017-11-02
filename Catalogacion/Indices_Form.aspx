<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Maestros_Indices_Form, App_Web_i2t0mwo5" title=".: SIADOC - Gestion de Indices :." theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<%@ Register Assembly="Enlasys.WebControls" Namespace="Enlasys.Web.UI.WebControls"
    TagPrefix="Enlasys" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="Label16" runat="server" Text=""></asp:Label>
    <br />
    <anthem:Panel ID="pnl_Grid" runat="server" Width="100%">
        <table style="width: 100%">
            <tr>
                <td align="left" valign="top">
                    <table style="width:60%;">
                        <tr>
                            <td style="width: 89px">
                                <asp:Label ID="Label23" runat="server" ForeColor="#747474" Text="Código:"></asp:Label>
                            </td>
                            <td>
                                <anthem:TextBox ID="txt_IndiceCod" runat="server" MaxLength="50" Width="110px"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td style="width: 89px">
                                &nbsp;</td>
                            <td>
                                <anthem:Button ID="btn_Editar" runat="server" CausesValidation="False" 
                                    EnabledDuringCallBack="False" OnClick="btn_Editar_Click" Text="Buscar" 
                                    TextDuringCallBack="Cargando..." Width="70px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td style="height: 10px">
                    <anthem:GridView ID="gvw_Datos" runat="server" AllowPaging="True" 
                        AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdArea" 
                        EmptyDataText="No se encontraron registros, pulse el boton &quot;Nuevo &quot; para agregar un registro" 
                        Font-Italic="False" ForeColor="#747474" GridLines="Horizontal" 
                        OnPageIndexChanging="gvw_Datos_PageIndexChanging" 
                        OnRowCreated="gvw_Datos_RowCreated" 
                        OnSelectedIndexChanged="gvw_Datos_SelectedIndexChanged" PageSize="15" 
                        Width="100%">
                        <EditRowStyle BackColor="#999999" />
                        <SelectedRowStyle Font-Bold="false" ForeColor="#333333" />
                        <PagerStyle BackColor="Gainsboro" ForeColor="#747474" 
                            HorizontalAlign="Center" />
                        <HeaderStyle BackColor="Gainsboro" />
                        <Columns>
                            <asp:TemplateField HeaderText="" ShowHeader="False">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" 
                                        CommandName="Select" ImageUrl="~/Img/Select.gif" Text="Select" 
                                        ToolTip="Editar" />
                                </ItemTemplate>
                                <ItemStyle Width="20px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="IdDocumento" HeaderText="Codigo" />
                            <asp:BoundField DataField="IdTipo" HeaderText="IdTipo" />
                            <asp:BoundField DataField="Tipo" HeaderText="Tipo" />
                            <asp:BoundField DataField="IdArea" HeaderText="IdArea" />
                            <asp:BoundField DataField="Area" HeaderText="Area" />
                            <asp:BoundField DataField="Titulo" HeaderText="Titulo">
                                <ItemStyle Width="300px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yy}" 
                                HeaderText="Fecha" />
                            <asp:BoundField DataField="PalabrasClave" HeaderText="PalabrasClave" />
                            <asp:BoundField DataField="Destinatario" HeaderText="Destinatario" />
                            <asp:BoundField DataField="Emisor" HeaderText="Emisor" />
                            <asp:BoundField DataField="Numero" HeaderText="Numero" />
                            <asp:HyperLinkField DataNavigateUrlFields="IdDocumento" 
                                DataNavigateUrlFormatString="Archivos_Form.aspx?idDoc={0}" 
                                HeaderText="Archivos" Text="Asociar archivo">
                                <ControlStyle Width="70" />
                                <ItemStyle Width="70" />
                            </asp:HyperLinkField>
                            <asp:HyperLinkField DataNavigateUrlFields="IdDocumento" 
                                DataNavigateUrlFormatString="TemasIndices_Form.aspx?idDoc={0}" 
                                HeaderText="Temas" Text="Asociar tema">
                                <ControlStyle Width="70" />
                                <ItemStyle Width="70" />
                            </asp:HyperLinkField>
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox2" runat="server" />
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerSettings Mode="NumericFirstLast" />
                    </anthem:GridView>
                </td>
            </tr>
            <tr>
                <td style="width: 98%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 20px">
                    <anthem:Button ID="btn_Nuevo" runat="server" CausesValidation="False" 
                        OnClick="btn_Nuevo_Click" Text="Nuevo" Width="70px" />
                    &nbsp;
                    <anthem:Button ID="btn_Delete" runat="server" CausesValidation="False" 
                        EnabledDuringCallBack="False" OnClick="btn_Delete_Click" Text="Eliminar" 
                        TextDuringCallBack="Cargando..." Width="70px" />
                </td>
            </tr>
        </table>
    </anthem:Panel>
    <anthem:Panel ID="pnl_EditGrid" runat="server" Visible="False" Width="100%" Height="100%">
        <table style="width: 100%">
            <tr align="left">
                <td align="left">
                    <anthem:Button ID="btn_Aceptar" runat="server" Text="Grabar" Width="70px" OnClick="btn_Aceptar_Click"
                        TextDuringCallBack="Cargando..." EnabledDuringCallBack="False" />
                    <anthem:Button ID="btn_cancelar" runat="server" Text="Regresar" Width="70px" OnClick="btn_cancelar_Click"
                        CausesValidation="False" />
                    <anthem:Button ID="btn_Eliminar" runat="server" Text="Eliminar" Width="70px" CausesValidation="False"
                        EnabledDuringCallBack="False" OnClick="btn_Eliminar_Click" PreCallBackFunction="button1_PreCallBack"
                        PostCallBackFunction="button1_PostCallBack" TextDuringCallBack="Cargando..."
                        Visible="False" />
                </td>
            </tr>
            <tr>
                <td style="height: 20px">
                </td>
            </tr>
            <tr>
                <td>
                    <table style="width: 90%; height: 100%">
                        <tr>
                            <td align="left">
                                <anthem:Label ID="Label10" runat="server" Text="Codigo:" Width="72px" 
                                    Visible="False"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_Codigo" runat="server" ReadOnly="true" Width="180px" MaxLength="49"
                                    Visible="False"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label11" runat="server" Text="Tipo Doccumento:" Width="131px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:DropDownList ID="ddl_TipoDoc" runat="server" Height="23px" Width="183px">
                                </anthem:DropDownList>
                                <anthem:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="ddl_TipoDoc"
                                    Display="None" ErrorMessage="Seleccione Tipo de Documento"></anthem:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label4" runat="server" Text="Area:" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:DropDownList ID="ddl_Area" runat="server" Height="21px" Width="180px">
                                </anthem:DropDownList>
                                <anthem:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="ddl_Area"
                                    Display="None" ErrorMessage="Seleccione Area">
                                </anthem:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label2" runat="server" Text="Titulo:" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_Titulo" runat="server" MaxLength="1000" TextMode="MultiLine"
                                    Width="180px" Height="51px"></anthem:TextBox>
                                <anthem:Label ID="Label8" runat="server" ForeColor="red" Text="Max. 50 caracteres">
                                </anthem:Label>
                                <anthem:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="txt_Titulo"
                                    Display="None" ErrorMessage="Ingrese Titulo"></anthem:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label3" runat="server" Text="Fecha Documento:" Width="125px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_Fecha" runat="server" Width="72px" />
                                <anthem:RequiredFieldValidator ID="rfv10" runat="server" ControlToValidate="txt_Fecha"
                                    Display="None" ErrorMessage="Ingrese Fecha"></anthem:RequiredFieldValidator>
                                <anthem:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/Img/icono.jpg"
                                    OnClick="ImageButton2_Click" CausesValidation="false" />
                                <anthem:Calendar DayHeaderStyle-BackColor="#D9D9E6" ID="Calendar1" runat="server"
                                    AutoUpdateAfterCallBack="True" OnSelectionChanged="Calendar1_SelectionChanged"
                                    Visible="False">
                                </anthem:Calendar>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label5" runat="server" Text="Palabras Clave:"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_PalabrasClave" runat="server" MaxLength="1000" TextMode="MultiLine"
                                    Width="180px" Height="52px"></anthem:TextBox><anthem:RequiredFieldValidator ID="rfv6"
                                        runat="server" ControlToValidate="txt_PalabrasClave" Display="None" ErrorMessage="Ingrese Palabras Clave"></anthem:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label6" runat="server" Text="Destinatario:" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_Destinatario" runat="server" MaxLength="50" Width="180px"></anthem:TextBox><anthem:RequiredFieldValidator
                                    ID="rfv7" runat="server" ControlToValidate="txt_Destinatario" Display="None"
                                    ErrorMessage="Ingrese Destinatario">
                                </anthem:RequiredFieldValidator>
                                <anthem:Label ID="Label20" runat="server" ForeColor="red" Text="Max. 50 caracteres">
                                </anthem:Label>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label7" runat="server" Text="Emisor:" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_Emisor" runat="server" MaxLength="49" Width="180px"></anthem:TextBox><anthem:RequiredFieldValidator
                                    ID="rfv8" runat="server" ControlToValidate="txt_Emisor" Display="None" ErrorMessage="Ingrese Emisor">
                                </anthem:RequiredFieldValidator>
                                <anthem:Label ID="Label21" runat="server" ForeColor="red" Text="Max. 50 caracteres">
                                </anthem:Label>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label9" runat="server" Text="Numero:" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_Numero" runat="server" MaxLength="49" Width="180px"></anthem:TextBox><anthem:RequiredFieldValidator
                                    ID="rfv9" runat="server" ControlToValidate="txt_Numero" Display="None" ErrorMessage="Ingrese Numero">
                                </anthem:RequiredFieldValidator>
                                <anthem:Label ID="Label22" runat="server" ForeColor="red" Text="Max. 50 caracteres">
                                </anthem:Label>
                            </td>
                        </tr>
                        <tr style="height: 25%">
                            <td align="left" valign="top">
                                <anthem:Label ID="Label12" runat="server" Text="Archivos Adjuntos ::" 
                                    Visible="False"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:ListBox ID="lbx_Archivos" runat="server" Width="321px" Visible="False">
                                </anthem:ListBox>
                                <br />
                                <br />
                                <anthem:Button ID="Button4" runat="server" Text="Asociar archivos" Width="119px"
                                    OnClick="Button4_Click" CausesValidation="False" Visible="False" />
                            </td>
                        </tr>
                        <tr style="height: 25%">
                            <td></td>
                            <td align="left" valign="top">
                                <asp:Panel ID="pArchivos" runat="server" Visible="false">
                                    <table style="width: 90%">
                                        <tr>
                                            <td align="left" colspan="2" bgcolor="Silver" 
                                                style="text-align: center; height: 30px">
                                                <asp:Label ID="Label29" runat="server" Font-Bold="True" 
                                                    Text="Archivos Adjuntos"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left" style="width: 122px">
                                                <anthem:Label ID="Label24" runat="server" Text="Codigo" Width="72px" 
                                                    Visible="False"></anthem:Label>
                                            </td>
                                            <td align="left">
                                                <anthem:TextBox ID="txt_CodArchivo" runat="server" CssClass="textbox" 
                                                    MaxLength="49" ReadOnly="true" Width="180px" Visible="False"></anthem:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td align="left" style="width: 122px">
                                                <anthem:Label ID="Label26" runat="server" Text="Descripcion" Width="72px"></anthem:Label>
                                            </td>
                                            <td align="left">
                                                <anthem:TextBox ID="txt_DesArchivo" runat="server" CssClass="textbox" 
                                                    MaxLength="49" Width="180px"></anthem:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px; display: none">
                                            <td align="left" style="width: 122px">
                                                <anthem:Label ID="Label27" runat="server" Text="Nombre de Archivo" 
                                                    Width="140px"></anthem:Label>
                                            </td>
                                            <td align="left">
                                                <anthem:TextBox ID="txt_NombreArchivo" runat="server" CssClass="textbox" 
                                                    MaxLength="49" OnTextChanged="TextBox6_TextChanged" Width="180px"></anthem:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td align="left" style="width: 122px">
                                                <anthem:Label ID="Label28" runat="server" Text="Ruta" Width="72px"></anthem:Label>
                                            </td>
                                            <td align="left">
                                                <anthem:TextBox ID="txt_rutaarchivo" runat="server" CssClass="textbox" 
                                                    Width="180px" ></anthem:TextBox>
                                                <input ID="File1" runat="server" onchange="change(this,'txt_rutaarchivo');" 
                                                    type="file" style="width: 0px" /></td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td align="left" colspan="2" style="text-align: center">
                                                &nbsp;&nbsp;
                                                <anthem:Button ID="btn_Aceptararchivo" runat="server" 
                                                    EnabledDuringCallBack="False" onclick="btn_Aceptararchivo_Click" Text="Grabar" 
                                                    TextDuringCallBack="Cargando..." Width="70px" />
                                                &nbsp;
                                                <anthem:Button ID="btn_nuevoarchivo" runat="server" CausesValidation="False" 
                                                    onclick="btn_cancelararchivo_Click" Text="Nuevo" Width="70px" />
                                                &nbsp;
                                                <anthem:Button ID="btn_Deletearchivo" runat="server" CausesValidation="False" 
                                                    EnabledDuringCallBack="False" onclick="btn_Deletearchivo_Click" Text="Eliminar" 
                                                    TextDuringCallBack="Cargando..." Width="70px" />
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td align="left" colspan="2" style="text-align: center">
                                                <anthem:GridView ID="gvw_adjuntos" runat="server" AllowPaging="True" 
                                                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdDocumento" 
                                                    EmptyDataText="No se encontraron registros, pulse el boton &quot;Nuevo &quot; para agregar un registro" 
                                                    Font-Names="Tahoma" Font-Size="8pt" ForeColor="#333333" Width="50%" 
                                                    OnPageIndexChanging="gvw_adjuntos_PageIndexChanging"
                                                    onselectedindexchanged="gvw_adjuntos_SelectedIndexChanged" PageSize="5">
                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                    <EditRowStyle BackColor="#999999" />
                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="False" ForeColor="#333333" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                    <Columns>
                                                        <asp:CommandField ButtonType="Image" HeaderText="Sel.   " 
                                                            SelectImageUrl="~/Img/Select.gif" ShowSelectButton="True">
                                                            <ItemStyle Width="50px" />
                                                        </asp:CommandField>
                                                        <asp:BoundField DataField="Id" HeaderText="Codigo" />
                                                        <asp:BoundField DataField="IdDocumento" HeaderText="Indice" Visible="False" />
                                                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
                                                        <asp:BoundField DataField="Ruta" HeaderText="Ruta" />
                                                        <asp:BoundField DataField="NombreArchivo" HeaderText="Nombre Archivo" 
                                                            Visible="False" />
                                                        <asp:TemplateField HeaderText="">
                                                            <EditItemTemplate>
                                                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("NombreArchivo") %>'></asp:TextBox>
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:HyperLink ID="HyperLink11" runat="server" ImageUrl="~/Img/last_16x16.gif" 
                                                                    NavigateUrl='<%# Bind("Ruta") %>' Target="_blank" 
                                                                    Text='<%# Bind("NombreArchivo") %>'></asp:HyperLink>
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField>
                                                            <EditItemTemplate>
                                                                <asp:CheckBox ID="CheckBox3" runat="server" />
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="CheckBox4" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </anthem:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td align="left" style="text-align: center;" colspan="2">
                                                &nbsp;
                                                </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                        <tr style="height: 25%">
                            <td></td>
                            <td align="left" colspan="2" valign="top">
                                <asp:Panel ID="pTemas" runat="server">
                                    <table style="width: 90%">
                                        <tr>
                                            <td align="left" bgcolor="Silver" colspan="2" 
                                                style="text-align: center; height: 30px">
                                                <asp:Label ID="Label30" runat="server" Font-Bold="True" 
                                                    Text="Temas"></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="left">
                                                <anthem:Label ID="Label31" runat="server" Text="Codigo" Visible="False" 
                                                    Width="72px"></anthem:Label>
                                            </td>
                                            <td align="left">
                                                <asp:TextBox ID="txt_CodTema" runat="server" Visible="False"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td align="left">
                                                <anthem:Label ID="Label32" runat="server" Text="Descripcion" Width="72px"></anthem:Label>
                                            </td>
                                            <td align="left">
                                                <anthem:DropDownList ID="ddl_tema" runat="server">
                                                </anthem:DropDownList>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td align="left" colspan="2" style="text-align: center">
                                                &nbsp;&nbsp;
                                                <anthem:Button ID="btn_Aceptartema" runat="server" 
                                                    EnabledDuringCallBack="False" Text="Grabar" 
                                                    TextDuringCallBack="Cargando..." Width="70px" 
                                                    onclick="btn_Aceptartema_Click" />
                                                &nbsp;
                                                <anthem:Button ID="btn_nuevotema" runat="server" CausesValidation="False"  
                                                    Text="Nuevo" Width="70px" onclick="btn_nuevotema_Click" />
                                                &nbsp;
                                                <anthem:Button ID="btn_Deletetema" runat="server" CausesValidation="False" 
                                                    EnabledDuringCallBack="False" Text="Eliminar" 
                                                    TextDuringCallBack="Cargando..." Width="70px" 
                                                    onclick="btn_Deletetema_Click" />
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td align="left" colspan="2" style="text-align: center">
                                                <anthem:GridView ID="gvw_Temas" runat="server" AllowPaging="True" 
                                                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="IdDocumento" 
                                                    EmptyDataText="No se encontraron registros, pulse el boton &quot;Nuevo &quot; para agregar un registro" 
                                                    Font-Names="Tahoma" Font-Size="8pt" ForeColor="#333333" 
                                                    OnRowCreated="gvw_Temas_RowCreated" OnPageIndexChanging="gvw_Temas_PageIndexChanging"
                                                    onselectedindexchanged="gvw_Temas_SelectedIndexChanged" PageSize="5" 
                                                    Width="95%">
                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                    <EditRowStyle BackColor="#999999" />
                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                    <Columns>
                                                        <asp:CommandField ButtonType="Image" HeaderText="Seleccionar" 
                                                            SelectImageUrl="~/Img/Select.gif" ShowSelectButton="True">
                                                            <ItemStyle Width="60" />
                                                        </asp:CommandField>
                                                        <asp:BoundField DataField="Id" HeaderText="Codigo" />
                                                        <asp:BoundField DataField="IdDocumento" HeaderText="Codigo" />
                                                        <asp:BoundField DataField="IdTema" HeaderText="Codigo" />
                                                        <asp:BoundField DataField="Tema" HeaderText="Tema" />
                                                        <asp:TemplateField>
                                                            <EditItemTemplate>
                                                                <asp:CheckBox ID="CheckBox7" runat="server" />
                                                            </EditItemTemplate>
                                                            <ItemTemplate>
                                                                <asp:CheckBox ID="CheckBox8" runat="server" />
                                                            </ItemTemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                </anthem:GridView>
                                            </td>
                                        </tr>
                                        <tr style="height: 25px">
                                            <td align="left" colspan="2" style="text-align: center;">
                                                &nbsp;
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </td>
                        </tr>
                    </table>
                    <anthem:ValidationSummary DisplayMode="List" ShowSummary="false" ID="ValidationSummary1"
                        runat="server" ShowMessageBox="True" />
                </td>
            </tr>
        </table>
    </anthem:Panel>
    <br />
</asp:Content>
