<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Secciones_Form, App_Web_pwkqaq54" title="Secciones" theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<table width="100%">
<tr><td>
    <anthem:Panel AutoUpdateAfterCallBack="true" ID="pnl_Grid" runat="server" Width="100%"
        Height="100%">
        <table style="width: 100%">
            <tr align="left">
                <td align="left">
                    <anthem:Button ID="btn_Nuevo" runat="server" Text="Nuevo" Width="70px" OnClick="btn_Nuevo_Click"
                        CausesValidation="False" />
                    <anthem:Button ID="btn_Delete" runat="server" Text="Eliminar" Width="70px" CausesValidation="False"
                        OnClick="btn_Delete_Click" />
                </td>
            </tr>
            <tr>
                <td style="height: 20px">
                </td>
            </tr>
            <tr>
                <td style="width: 100%">
                    <anthem:GridView Width="95%" ID="gvw_Datos" runat="server" ForeColor="#333333" AutoGenerateColumns="False"
                        CellPadding="4" DataKeyNames="IdSeccion" EmptyDataText="No se encontraron registros"
                        AllowPaging="True" OnPageIndexChanging="gvw_Datos_PageIndexChanging" OnSelectedIndexChanged="gvw_Datos_SelectedIndexChanged"
                        PageSize="5" Font-Overline="False">
                        <RowStyle ForeColor="#333333" />
                        <EditRowStyle BackColor="#999999" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <PagerStyle BackColor="Gainsboro" ForeColor="#747474" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="Gainsboro" Font-Bold="True" ForeColor="#747474" />
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Image" HeaderText="Seleccionar" SelectImageUrl="~/Img/Select.gif"
                                ShowSelectButton="True">
                                <ItemStyle Width="60px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="IdSeccion" HeaderText="Codigo">
                                <ItemStyle Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Descripcion" HeaderText="Sección" />
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:CheckBox runat="server" ID="CheckBox11"></asp:CheckBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox runat="server" ID="CheckBox21"></asp:CheckBox>
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
</td></tr>
<tr><td>
    <anthem:Panel ID="pnl_EditGrid" AutoUpdateAfterCallBack="true" runat="server" Visible="False"
        Width="100%" Height="100%">
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
                    <anthem:TextBox ReadOnly="true" ID="txt_Codigo" runat="server" Width="180px" MaxLength="49"></anthem:TextBox>
                    <table style="width: 90%">
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label11" runat="server" Text="Sección :" 
                                    Width="123px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_Descripcion" runat="server" Width="180px" 
                                    MaxLength="50"></anthem:TextBox>
                                
                                <anthem:RequiredFieldValidator ID="rfv1" runat="server" 
                                    ControlToValidate="txt_Descripcion" Display="None" 
                                    ErrorMessage="Ingrese Sección"></anthem:RequiredFieldValidator>
                                
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 20px">
                                <anthem:ValidationSummary DisplayMode="List" ShowSummary="false" ID="ValidationSummary1"
                                      runat="server" ShowMessageBox="True" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </anthem:Panel>
</td></tr>
</table>
</asp:Content>
