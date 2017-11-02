<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Carteras_Form, App_Web_pwkqaq54" title="Carteras" theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                        CellPadding="4" DataKeyNames="Id" EmptyDataText="No se encontraron registros"
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
                            <asp:BoundField DataField="Id" HeaderText="Codigo">
                                <ItemStyle Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Valor" HeaderText="Valor">
                                <ItemStyle Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" />
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
    
    <anthem:Panel ID="pnl_EditGrid" runat="server" Visible="False"
        Width="100%" Height="100%"  AutoUpdateAfterCallBack="true">
      
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
                                <anthem:Label ID="Label1" runat="server" Text="Valor" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txtValor" runat="server" Width="180px" MaxLength="49"></anthem:TextBox>
                                
                                <asp:RegularExpressionValidator ID="rveValor" runat="server" 
                                    ControlToValidate="txtValor" Display="None" ErrorMessage="Valor Invalido" 
                                    ValidationExpression="\d+"></asp:RegularExpressionValidator>
                                
                            </td>
                        </tr>
                        <tr style="height: 25px">
                            <td align="left">
                                <anthem:Label ID="Label11" runat="server" Text="Descripcion" Width="72px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_Descripcion" runat="server" Width="180px" MaxLength="49"></anthem:TextBox>
                                
                            </td>
                        </tr>
                        <tr>
                            <td style="height: 20px">
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </anthem:Panel>
    <anthem:ValidationSummary DisplayMode="List" ShowSummary="false" ID="ValidationSummary1"
        runat="server" ShowMessageBox="True" />
</asp:Content>
