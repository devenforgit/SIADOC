<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="RegistraModulosRoles_Form, App_Web_fpnsx0ay" title="Asignacion de Modulos" theme="Default" %>
    
<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 530px">      
        <tr>
            <td colspan="4" style="height: 20px; text-align: left">
                <input type="hidden" id="hdnId" runat="server" />
                <anthem:Button ID="btnEliminar" runat="server"  Text="Eliminarr Perfil"
                    AutoUpdateAfterCallBack="true" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 20px">
                <anthem:GridView EmptyDataText="No existen registros"  ID="gvw_Datos" 
                    runat="server" AllowPaging="True" AutoGenerateColumns="False"
                    BorderStyle="Solid" BorderWidth="1px" CaptionAlign="Bottom" 
                    CellPadding="4" 
                    DataKeyNames="Id" ForeColor="#8F8F8F" GridLines="Horizontal" PageSize="10"
                    OnRowEditing="gvw_Datos_RowEditing" OnPageIndexChanging="gvw_Datos_PageIndexChanging"
                    OnRowCancelingEdit="gvw_Datos_RowCancelingEdit" OnRowUpdating="gvw_Datos_RowUpdating"
                    AutoUpdateAfterCallBack="True" UpdateAfterCallBack="True" 
                    OnRowDeleting="gvw_Datos_RowDeleting" Width="350px">
                    <PagerSettings PageButtonCount="5" />
                    <FooterStyle BackColor="#B1B1B1" Font-Bold="True" ForeColor="White" />
                    <RowStyle ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id" />
                        <asp:TemplateField HeaderText="Rol" SortExpression="Rol">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" MaxLength="50" Text='<%# Bind("Modulo") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("Modulo") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" ButtonType="Image" UpdateImageUrl="~/Img/accept.png"
                            CancelImageUrl="~/Img/reasign.gif" Visible=false EditImageUrl="~/Img/edit.gif"></asp:CommandField>
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
                        </td>
                        <td style="width: 171px; height: 20px; text-align: left">
                            
                              <anthem:DropDownList ID="ddlModulo" runat="server"  DataTextField="Descripcion"
                                DataValueField="Id" Width="256px">
                            </anthem:DropDownList>
                        </td>
                        <td style="width: 100px; height: 20px">
                            <anthem:Button ID="btnAdicionar" runat="server"  Text="Asignar Modulo"
                                OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 19px">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
