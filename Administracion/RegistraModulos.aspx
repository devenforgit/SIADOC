<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="RegistraModulos_Form, App_Web_fpnsx0ay" title="Modulos" theme="Default" %>
    
<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 530px">       
        <tr>
            <td colspan="4" style="height: 20px; text-align: left">
                <input type="hidden" id="hdnId" runat="server" />
                <anthem:Button ID="btnEliminar" CausesValidation="false" runat="server" 
                    Text="Eliminarr Perfil" AutoUpdateAfterCallBack="true" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 20px; width: 100%">
                <anthem:GridView EmptyDataText="No existen registros" ID="gvw_Datos" runat="server"
                    AllowPaging="True" AutoGenerateColumns="False" BorderStyle="Solid" BorderWidth="1px"
                    CaptionAlign="Bottom" CellPadding="4"  DataKeyNames="Id"
                    ForeColor="#8F8F8F" GridLines="Horizontal" PageSize="10" OnRowEditing="gvw_Datos_RowEditing"
                    OnPageIndexChanging="gvw_Datos_PageIndexChanging" OnRowCancelingEdit="gvw_Datos_RowCancelingEdit"
                    OnRowUpdating="gvw_Datos_RowUpdating" AutoUpdateAfterCallBack="True" UpdateAfterCallBack="True"
                    OnRowDeleting="gvw_Datos_RowDeleting" 
                                 Width="450px">
                    <PagerSettings PageButtonCount="5" />
                    <FooterStyle BackColor="#B1B1B1" Font-Bold="True" ForeColor="White" />
                    <RowStyle ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="IdArea" />
                        <asp:TemplateField HeaderText="Descripcion" SortExpression="Descripcion">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" MaxLength="50" Text='<%# Bind("Descripcion") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Descripcion") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" CausesValidation="false" ButtonType="Image"
                            UpdateImageUrl="~/Img/accept.png" CancelImageUrl="~/Img/reasign.gif" EditImageUrl="~/Img/edit.gif">
                        </asp:CommandField>
                        <asp:CommandField ShowDeleteButton="True" ButtonType="Image" DeleteImageUrl="~/Img/delete1.gif">
                        </asp:CommandField>
                    </Columns>
                    <PagerStyle BackColor="Gainsboro" ForeColor="#757575" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="Gainsboro" Font-Bold="True" ForeColor="#757575" Height="20px" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" />
                </anthem:GridView>
                        </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 16px; text-align: right">
                &nbsp;
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 19px; text-align: left">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 390px">
                    <tr>
                        <td style="width: 148px; height: 20px; text-align: right">
                            <anthem:Label ID="Label7" runat="server"  Text="Nuevo Modulo :"
                                Width="89px"></anthem:Label>
                        </td>
                        <td style="width: 21px; height: 20px; text-align: left">
                            &nbsp;</td>
                        <td style="width: 171px; height: 20px; text-align: left">
                            <anthem:TextBox ID="txtArea" MaxLength="50" runat="server"  Width="103px"></anthem:TextBox>
                            <anthem:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtArea"
                                Display="None" ErrorMessage="Ingrese modulo"></anthem:RequiredFieldValidator>
                        </td>
                        <td style="width: 100px; height: 20px">
                            <anthem:Button ID="btnAdicionar" runat="server"  Text="Adicionar Modulo"
                                OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 19px">
                <anthem:ValidationSummary DisplayMode="List" ShowSummary="false" ID="ValidationSummary1"
                    runat="server" ShowMessageBox="True" />
            </td>
        </tr>
    </table>
</asp:Content>
