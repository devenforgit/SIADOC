<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="ReasignarPrestamo_Form, App_Web_rn5pk5zs" title=".: SIADOC - Reasignar Préstamos :." theme="Default" %>

<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="ControlesWeb" Namespace="ControlesWeb" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 100%">
            <tr>
                <td colspan="3" style="height: 16px">
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Small" Text="Asignar Préstamo a Usuario"
                        Width="314px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="width: 166px; height: 29px; text-align: right">
                    <asp:Label ID="Label1" runat="server" Text="Usuario  : "></asp:Label>
                </td>
                <td style="width: 100px; height: 29px; text-align: left">
                    <asp:DropDownList ID="ddlUsuario" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
                <td style="width: 100px; height: 29px; text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 166px; height: 29px; text-align: right">
                    <asp:Label ID="Label6" runat="server" Text="Archivo  : "></asp:Label>
                </td>
                <td style="width: 100px; height: 29px; text-align: left">
                    <asp:DropDownList ID="ddlArchivo" runat="server" Width="250px">
                    </asp:DropDownList>
                </td>
                <td style="width: 100px; height: 29px; text-align: left">
                </td>
            </tr>
            <tr>
                <td style="width: 166px; height: 29px; text-align: right">
                    <asp:Label ID="Label2" runat="server" Text="Palabra  : "></asp:Label>
                </td>
                <td style="width: 100px; height: 29px; text-align: left">
                    <asp:TextBox runat="server" ID="txtPalabra" Width="250px"></asp:TextBox>
                </td>
                <td style="width: 100px; height: 29px; text-align: left">
                    <anthem:Button ID="Button2" runat="server" Text="Buscar" AutoUpdateAfterCallBack="true"
                        Width="79px" OnClick="Button2_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 8px; text-align: right">
                    <hr />
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 32px; text-align: center">
                    <anthem:Panel ID="divListadoCuotas" runat="server" AutoUpdateAfterCallBack="true">
                        <cc1:ExGridView ID="gvw_Datos" runat="server" AutoGenerateColumns="False" AutoUpdateAfterCallBack="true"
                            ForeColor="#747474" DataKeyNames="IdPrestamo" Width="480px" OnRowCreated="gvw_Datos_RowCreated"
                            OnPageIndexChanging="gvw_Datos_PageIndexChanging" AllowPaging="false" PageSize="5"
                            GridHeight="300px">
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <RowStyle ForeColor="#333333" />
                            <Columns>
                                <asp:BoundField DataField="IdPrestamo" HeaderStyle-Width="40px" ItemStyle-Width="40px"
                                    HeaderText="Id" SortExpression="IdPrestamo" />
                                <asp:BoundField DataField="Archivo" HeaderText="Archivo" SortExpression="Archivo"
                                    HeaderStyle-Width="80px" ItemStyle-Width="80px" />
                                <asp:BoundField DataField="Usuario" HeaderText="Usuario Pr&#233;stamo" SortExpression="Usuario"
                                    HeaderStyle-Width="90px" ItemStyle-Width="120px" />
                                <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha Pr&#233;stamo"
                                    HeaderStyle-Width="70px" ItemStyle-Width="70px" SortExpression="Fecha" />
                                <asp:BoundField DataField="Documento" HeaderText="Documento" SortExpression="Documento"
                                    HeaderStyle-Width="100px" ItemStyle-Width="70px" />
                                <asp:BoundField DataField="EstadoPrestamo" HeaderText="Estado" SortExpression="EstadoPrestamo"
                                    HeaderStyle-Width="70px" ItemStyle-Width="70px" />
                                <asp:CommandField ButtonType="Image" Visible="false" SelectImageUrl="~/Img/reasign.gif"
                                    ShowSelectButton="True" />
                                <asp:BoundField DataField="IdAsignacion" HeaderStyle-Width="0px" ItemStyle-Width="0px"
                                    HeaderText="IdAsignacion" SortExpression="IdAsignacion" />
                                <asp:TemplateField HeaderText="" HeaderStyle-Width="30px" ItemStyle-Width="30px">
                                    <ItemTemplate>
                                        <anthem:CheckBox ID="CheckBox1" AutoCallBack="true" OnCheckedChanged="Check_Clicked"
                                            AutoUpdateAfterCallBack="true" runat="server" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <HeaderStyle BackColor="Gainsboro" Font-Bold="True" ForeColor="#747474" />
                        </cc1:ExGridView>
                    </anthem:Panel>
                </td>
            </tr>
            <tr>
                <td style="width: 166px; height: 34px; text-align: right">
                </td>
                <td style="width: 100px; height: 34px; text-align: left">
                    <asp:Label ID="Label4" runat="server" Height="41px" Text="" Width="210px"></asp:Label>
                </td>
                <td style="width: 100px; height: 34px; text-align: center">
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 34px; text-align: right" valign="bottom">
                    <hr />
                </td>
            </tr>
            <tr>
                <td style="width: 166px; height: 34px; text-align: right">
                    <asp:Label ID="Label3" runat="server" Text="Usuario a reasignar : "></asp:Label>
                </td>
                <td style="width: 100px; height: 34px">
                    <anthem:DropDownList AutoUpdateAfterCallBack=true ID="ddlUsuario2" runat="server" Width="250px">
                    </anthem:DropDownList>
                </td>
                <td style="width: 100px; height: 34px">
                    <anthem:Button ID="Button1" AutoUpdateAfterCallBack="true" runat="server" Text="Confirmar"
                        Width="95px" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td style="width: 166px; height: 34px; text-align: right">
                    <asp:Label ID="Label7" runat="server" Text="Comentario   : "></asp:Label>
                </td>
                <td style="width: 100px; height: 34px">
                    <anthem:TextBox ID="txtComentario" AutoUpdateAfterCallBack="true" runat="server" Height="75px"
                        TextMode="MultiLine" Width="297px"></anthem:TextBox>
                </td>
                <td style="width: 100px; height: 34px">
                </td>
            </tr>
            <tr>
                <td colspan="3" style="height: 34px; text-align: center">
                    <asp:Label ID="Label9" runat="server" ForeColor="Red" Text=" "></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
