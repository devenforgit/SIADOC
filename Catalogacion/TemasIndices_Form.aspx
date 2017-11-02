<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Maestros_TemasIndices_Form, App_Web_i2t0mwo5" title="Temas Indices" theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="smalltextgrey" >
        <asp:Label ID="Label4" runat="server" Text="Temas"></asp:Label>
    </div>   
    <br />
    <anthem:Panel ID="pnl_Grid" runat="server" Width="100%" Height="100%">
        <table style="width: 100%">
            <tr align="left">
                <td align="left">
                    <anthem:Button ID="btn_Nuevo" runat="server" Text="Nuevo" Width="70px" OnClick="btn_Nuevo_Click"
                        CausesValidation="False" />
                    <anthem:Button ID="btn_Editar" runat="server" Text="Regresar" Width="70px" CausesValidation="False"
                        EnabledDuringCallBack="False" OnClick="btn_Editar_Click" TextDuringCallBack="Cargando..." />
                    <anthem:Button ID="btn_Delete" runat="server" Text="Eliminar" Width="70px" CausesValidation="False"
                        EnabledDuringCallBack="False" OnClick="btn_Delete_Click" TextDuringCallBack="Cargando..." />
                </td>
            </tr>
            <tr>
                <td style="height: 20px">
                </td>
            </tr>
            <tr>
                <td style="width: 100%">
                    <anthem:GridView Width="95%" ID="gvw_Datos" OnRowCreated="gvw_Datos_RowCreated" runat="server"
                        ForeColor="#333333" Font-Size="8pt" Font-Names="Tahoma" AutoGenerateColumns="False"
                        CellPadding="4" DataKeyNames="IdDocumento" AllowPaging="True" OnPageIndexChanging="gvw_Datos_PageIndexChanging"
                        OnSelectedIndexChanged="gvw_Datos_SelectedIndexChanged" EmptyDataText='No se encontraron registros, pulse el boton "Nuevo " para agregar un registro'>
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <EditRowStyle BackColor="#999999" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:CommandField ButtonType="Image" HeaderText="Seleccionar" SelectImageUrl="~/Img/Select.gif"
                                ShowSelectButton="True">
                                <ItemStyle Width="60" />
                            </asp:CommandField>
                            <asp:BoundField DataField="Id" HeaderText="Codigo" />
                            <asp:BoundField DataField="IdDocumento" HeaderText="Codigo" />
                            <asp:BoundField DataField="IdTema" HeaderText="Codigo" />
                            <asp:BoundField DataField="Tema" HeaderText="Tema" />
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
                </td>
            </tr>
            <tr>
                <td style="height: 20px">
                </td>
            </tr>
        </table>
    </anthem:Panel>
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
                                <anthem:TextBox ReadOnly="true" ID="txt_Codigo" runat="server" Width="180px" MaxLength="49"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label2" runat="server" Text="Indice" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ReadOnly="true" ID="txt_Indice" runat="server" Width="180px" MaxLength="49"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label3" runat="server" Text="Tema" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:DropDownList ID="ddl_tema" runat="server" >
                                </anthem:DropDownList>
                                <anthem:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="ddl_tema"
                                    Display="None" ErrorMessage="Seleccione tema"></anthem:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr style="height: 25px">
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
</asp:Content>
