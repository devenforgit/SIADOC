<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Maestros_Archivos_Form, App_Web_i2t0mwo5" title="Archivos" theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <anthem:Panel ID="pnl_Grid" runat="server" Width="98%" Height="59%">
        <table style="width: 95%">
            <tr align="left">
                <td>
                    <anthem:Button ID="btn_Nuevo" runat="server" Text="Nuevo" Width="70px" OnClick="btn_Nuevo_Click"
                        CausesValidation="False" />
                    <anthem:Button ID="btn_Editar" runat="server" CausesValidation="False" EnabledDuringCallBack="False"
                        OnClick="btn_Editar_Click" Text="Regresar" TextDuringCallBack="Cargando..." Width="70px" />
                    <anthem:Button ID="btn_Delete" runat="server" CausesValidation="False" EnabledDuringCallBack="False"
                        OnClick="btn_Delete_Click" Text="Eliminar" TextDuringCallBack="Cargando..." Width="70px" />
                </td>
            </tr>
        </table>
    </anthem:Panel>
    <br />
    <anthem:GridView Width="50%" ID="gvw_Datos" OnRowCreated="gvw_Datos_RowCreated" runat="server"
        ForeColor="#333333" Font-Size="8pt" Font-Names="Tahoma" AutoGenerateColumns="False"
        CellPadding="4" DataKeyNames="IdDocumento" AllowPaging="True" OnPageIndexChanging="gvw_Datos_PageIndexChanging"
        OnSelectedIndexChanged="gvw_Datos_SelectedIndexChanged" EmptyDataText='No se encontraron registros, pulse el boton "Nuevo " para agregar un registro'
        OnRowCommand="gvw_Datos_RowCommand" OnRowDeleting="gvw_Datos_RowDeleting">
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <EditRowStyle BackColor="#999999" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="False" ForeColor="#333333" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:CommandField ButtonType="Image" HeaderText="Sel.   " SelectImageUrl="~/Img/Select.gif"
                ShowSelectButton="True">
                <ItemStyle Width="50px" />
            </asp:CommandField>
            <asp:BoundField DataField="Id" HeaderText="Codigo" />
            <asp:BoundField DataField="IdDocumento" HeaderText="Indice" />
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion"></asp:BoundField>
            <asp:BoundField DataField="Ruta" HeaderText="Ruta"></asp:BoundField>
            <asp:BoundField DataField="NombreArchivo" HeaderText="Nombre Archivo" />
            <asp:TemplateField HeaderText="">
                <EditItemTemplate>
                    <asp:TextBox runat="server" Text='<%# Bind("NombreArchivo") %>' ID="TextBox1"></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:HyperLink ImageUrl="~/Img/last_16x16.gif" ID="HyperLink11" Text='<%# Bind("NombreArchivo") %>'
                        NavigateUrl='<%# Bind("Ruta") %>' Target="_blank" runat="server"></asp:HyperLink>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField>
                <EditItemTemplate>
                    <asp:CheckBox runat="server" ID="CheckBox1"></asp:CheckBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:CheckBox runat="server" ID="CheckBox2"></asp:CheckBox>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </anthem:GridView>
    <anthem:Panel ID="pnl_EditGrid" runat="server" Visible="False" Width="100%" Height="100%">
        <table style="width: 100%">
            <tr align="left">
                <td align="left">
                    <anthem:Button ID="btn_Aceptar" runat="server" Text="Aceptar" Width="70px" OnClick="btn_Aceptar_Click"
                        TextDuringCallBack="Cargando..." EnabledDuringCallBack="False" />
                    <anthem:Button ID="btn_cancelar" runat="server" Text="Cancelar" Width="70px" OnClick="btn_cancelar_Click"
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
                    <table style="width: 90%">
                        <tr>
                            <td align="left">
                                <anthem:Label ID="Label10" runat="server" Text="Codigo" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ReadOnly="true" CssClass="textbox" ID="txt_Codigo" runat="server"
                                    Width="180px" MaxLength="49"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label2" runat="server" Text="Indice" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ReadOnly="true" CssClass="textbox" ID="txt_Indice" runat="server"
                                    Width="180px" MaxLength="49"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label11" runat="server" Text="Descripcion" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox CssClass="textbox" ID="txt_Descripcion" runat="server" Width="180px"
                                    OnTextChanged="TextBox6_TextChanged" MaxLength="49"></anthem:TextBox>
                                <anthem:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txt_Descripcion"
                                    Display="None" ErrorMessage="Ingrese descripcion de Area"></anthem:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="height: 25px; display: none">
                            <td align="left">
                                <anthem:Label ID="Label3" runat="server" Text="Nombre de Archivo" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox CssClass="textbox" ID="txt_NombreArchivo" runat="server" Width="180px"
                                    OnTextChanged="TextBox6_TextChanged" MaxLength="49"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label4" runat="server" Text="Ruta" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_ruta" CssClass="textbox" runat="server" Width="0px" OnTextChanged="TextBox6_TextChanged"
                                    MaxLength="49">
                                </anthem:TextBox>
                                <input id="File1" runat="server" onchange="change(this,'txt_ruta');" type="file" />
                                <anthem:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txt_ruta"
                                    Display="None" ErrorMessage="Ingrese ruta"></anthem:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                            </td>
                        </tr>
                    </table>
                    <anthem:ValidationSummary DisplayMode="List" ShowSummary="false" ID="ValidationSummary1"
                        runat="server" ShowMessageBox="True" />
                </td>
            </tr>
        </table>
    </anthem:Panel>

    <script language="javascript" type="text/javascript">
        function File1_onclick() {
        }
    </script>

</asp:Content>
