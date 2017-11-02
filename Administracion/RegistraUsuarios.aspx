<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="RegistraUsuarios_Form, App_Web_fpnsx0ay" title="Usuarios" theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 530px">      
        <tr>
            <td style="height: 20px; text-align: left;" colspan="4">
                <input type="hidden" id="hdnId" runat="server" />
                <anthem:Button ID="btnEliminar" CausesValidation="false" runat="server" 
                    Text="Eliminarr Perfil" AutoUpdateAfterCallBack="true" OnClick="Button2_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 15px">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 319px">
                    <tr>
                        <td style="width: 24px; height: 25px; text-align: left;">
                            <anthem:Label ID="Label3" runat="server"  Text="Area :" Width="46px"></anthem:Label>
                        </td>
                        <td colspan="2" style="width: 237px; height: 25px">
                            <anthem:DropDownList ID="ddlAreas" runat="server"  Width="205px">
                            </anthem:DropDownList>
                        </td>
                        <td colspan="1" rowspan="3">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 24px; height: 25px; text-align: left;">
                            <anthem:Label ID="Label9" runat="server"  Text="Rol :" Width="47px"></anthem:Label>
                        </td>
                        <td colspan="2" style="width: 237px; height: 25px">
                            <anthem:DropDownList ID="ddlRoles" runat="server"  Width="205px">
                            </anthem:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 24px; height: 25px; text-align: left;">
                            <anthem:Label ID="Label10" runat="server"  Text="Nombre :" Width="67px"></anthem:Label>
                        </td>
                        <td colspan="2" style="width: 237px; height: 25px; text-align: left;">
                            <asp:TextBox ID="txtnombre" runat="server" Width="200px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="width: 237px; height: 25px; text-align: left">
                            <anthem:CheckBox ID="chkActivo" runat="server"  Text="Mostrar Usuarios Inactivos"
                                Width="196px" />
                        </td>
                        <td colspan="1" style="height: 25px" align="left">
                            <anthem:Button ID="btnConsultar" runat="server"  Text="Consultar"
                                OnClick="Button3_Click" TextDuringCallBack="Cargando..." EnabledDuringCallBack="False"
                                Width="95px" />
                        </td>
                        <td colspan="1" rowspan="1">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 9px">
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 20px">
                <anthem:GridView EmptyDataText="No existen registros" ID="gvw_Datos" runat="server"
                    AutoGenerateColumns="False" CaptionAlign="Bottom" CellPadding="4" 
                    DataKeyNames="IdUsuario" ForeColor="#8F8F8F" GridLines="Horizontal" AllowPaging="True"
                    PageSize="15" BorderStyle="Solid" BorderWidth="1px" OnRowEditing="gvw_Datos_RowEditing"
                    OnRowCancelingEdit="gvw_Datos_RowCancelingEdit" OnRowUpdating="gvw_Datos_RowUpdating"
                    AutoUpdateAfterCallBack="True" UpdateAfterCallBack="True" OnPageIndexChanging="gvw_Datos_PageIndexChanging"
                    OnRowDeleting="gvw_Datos_RowDeleting" OnRowCreated="gvw_Datos_RowCreated" Width="162px">
                    <FooterStyle BackColor="#B1B1B1" Font-Bold="True" ForeColor="White" />
                    <RowStyle ForeColor="#333333" />
                    <Columns>
                        <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" SortExpression="IdUsuario" />
                        <asp:BoundField DataField="Usuario" HeaderText="User" SortExpression="User" />
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:CheckBoxField DataField="Externo" HeaderText="Externo" SortExpression="Externo"
                            Visible="False" />
                        <asp:CheckBoxField DataField="Activo" HeaderText="Activo" SortExpression="Activo" />
                        <asp:CommandField ShowEditButton="True" ButtonType="Image" CausesValidation="false"
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
                    <PagerSettings PageButtonCount="15" />
                </anthem:GridView>
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 16px">
            </td>
            <td colspan="2" style="height: 16px; width: 109px;">
            </td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="height: 16px; text-align: right;" colspan="4">
                <asp:Button ID="btnAdicionar" OnClick="Button1_Click" runat="server" 
                    Text="Nuevo Usuario" />&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 19px">
            </td>
            <td colspan="2" style="height: 19px; width: 109px;">
            </td>
            <td style="width: 100px; height: 19px">
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 19px">
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
