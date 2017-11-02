<%--
================================================================================================
Motivo			Fecha			Nombre		Descripci�n
================================================================================================
FON_CGC-947		18/08/2017		GMD			Correci�n de errores
--%>
<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="FondoDoc_Form, App_Web_pwkqaq54" title="Fondo Documental" theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
<table width="100%">
<tr><td>
    <anthem:Panel ID="pnl_Grid" runat="server" Width="100%" Height="100%">
        <table style="width: 100%">
            <tr align="left">
                <td align="left">
                    <anthem:Button ID="btn_Nuevo" runat="server" Text="Nuevo" Width="70px" OnClick="btn_Nuevo_Click"
                        CausesValidation="False"  />
                    <anthem:Button ID="btn_Editar" Visible="false" runat="server" Text="Actualizar" Width="70px"
                        CausesValidation="False" EnabledDuringCallBack="False" OnClick="btn_Editar_Click"
                        TextDuringCallBack="Cargando..."  />
                    
                    <anthem:Button  ID="btn_Delete" runat="server" Text="Eliminar"
                        Width="70px" CausesValidation="False" EnabledDuringCallBack="False" OnClick="btn_Delete_Click"
                        TextDuringCallBack="Cargando..." />
                </td>
            </tr>
            <tr>
                <td style="height: 20px">
                </td>
            </tr>
            <tr>
                <td style="width: 100%">
                    <anthem:GridView Width="95%" ID="gvw_Datos" runat="server" ForeColor="#333333" AutoGenerateColumns="False"
                        CellPadding="4" DataKeyNames="IdFondoDoc" EmptyDataText='No se encontraron registros, pulse el boton "Nuevo " para agregar un registro'
                        AllowPaging="True" OnPageIndexChanging="gvw_Datos_PageIndexChanging" OnSelectedIndexChanged="gvw_Datos_SelectedIndexChanged"
                        PageSize="5" >
                        <RowStyle ForeColor="#333333" />
                        <EditRowStyle BackColor="#999999" />
                        <SelectedRowStyle Font-Bold="True" />
                        <PagerStyle BackColor="Gainsboro" ForeColor="#747474" HorizontalAlign="Center" />
                        <HeaderStyle BackColor="Gainsboro" Font-Bold="True" ForeColor="#747474" BorderColor="#747474" />
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ButtonType="Image" HeaderText="Seleccionar" SelectImageUrl="~/Img/Select.gif"
                                ShowSelectButton="True">
                                <ItemStyle Width="60px" />
                            </asp:CommandField>
                            <asp:BoundField DataField="IdFondoDoc" HeaderText="Codigo">
                                <ItemStyle Width="60px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Descripcion" HeaderText="Fondo Documental" />
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <asp:CheckBox runat="server" ID="CheckBox1"></asp:CheckBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:CheckBox runat="server" ID="CheckBox2"></asp:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <PagerSettings PageButtonCount="5" />
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
    <anthem:Panel ID="pnl_EditGrid" runat="server" Visible="False" Width="100%" Height="100%">
        <table style="width: 100%">
            <tr align="left">
                <td align="left">
                    <anthem:Button ID="btn_Aceptar"  runat="server" Text="Aceptar"
                        Width="70px" OnClick="btn_Aceptar_Click" TextDuringCallBack="Cargando..." EnabledDuringCallBack="False" />
                    <anthem:Button  ID="btn_cancelar" runat="server" Text="Cancelar"
                        Width="70px" OnClick="btn_cancelar_Click" CausesValidation="False" />
                    <anthem:Button  ID="btn_Eliminar" runat="server" Text="Eliminar"
                        Width="70px" CausesValidation="False" EnabledDuringCallBack="False" OnClick="btn_Eliminar_Click"
                        PreCallBackFunction="button1_PreCallBack" PostCallBackFunction="button1_PostCallBack"
                        TextDuringCallBack="Cargando..." Visible="False" />
                </td>
            </tr>
            <tr>
                <td style="height: 20px">
                </td>
            </tr>
            <tr>
                <td>
                    <anthem:TextBox ReadOnly="true" ID="txt_Codigo"  runat="server"
                                    Width="180px" MaxLength="49"></anthem:TextBox>
                    <table style="width: 90%">
                        <tr style="height: 25px">
                            <td align="left" class="style17">
                                <anthem:Label ID="Label11" runat="server"  Text="Fondo Documental :"
                                    Width="118px"></anthem:Label>
                            </td>
                            <td align="left">
                                <anthem:TextBox ID="txt_Descripcion" runat="server" Width="180px" OnTextChanged="TextBox6_TextChanged"
                                     MaxLength="49"></anthem:TextBox>
                                <anthem:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txt_Descripcion"
                                    Display="None" ErrorMessage="Ingrese Fondo Documental" ></anthem:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="style18">
                            </td>
                        </tr>
                    </table>
                    <anthem:ValidationSummary DisplayMode="List" ShowSummary="false" ID="ValidationSummary1"
                        runat="server" ShowMessageBox="True"  />
                </td>
            </tr>
        </table>
    </anthem:Panel>
</td></tr>
</table>
</asp:Content>
<%-- FON_CGC-947 - INICIO --%>
<%--
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">

    <style type="text/css">
        .style17
        {
            width: 133px;
        }
        .style18
        {
            height: 20px;
            width: 133px;
        }
    </style>

</asp:Content>
--%>
<%-- FON_CGC-947 - FIN --%>