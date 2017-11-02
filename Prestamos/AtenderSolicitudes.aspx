<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="AtenderSolicitudes_Form, App_Web_rn5pk5zs" title=".: SIADOC - Atender Solicitudes de Préstamos :." theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<%@ Register Assembly="ControlesWeb" Namespace="ControlesWeb" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 95%">
        <tr>
            <td colspan="3" style="height: 19px">
                <asp:Label ID="Label6" runat="server" Text="Area : "></asp:Label><asp:DropDownList
                    ID="ddlArea" runat="server" Width="193px" AutoPostBack="True" OnSelectedIndexChanged="ddlArea_SelectedIndexChanged">
                </asp:DropDownList>
                <asp:Label ID="Label1" runat="server" Text="Usuario : "></asp:Label>
                <asp:DropDownList ID="ddUsuario" runat="server" Width="220px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 19px">
                <asp:Label ID="Label11" runat="server" Text="Archivo : "></asp:Label><asp:DropDownList
                    ID="ddlArchivo" runat="server" Width="193px" OnSelectedIndexChanged="ddlArchivo_SelectedIndexChanged">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 9px; text-align: center">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 471px">
                    <tr>
                        <td style="width: 89px; height: 40px">
                            <asp:Label ID="Label2" runat="server" Text="Fecha Desde : " Visible="False"></asp:Label>
                        </td>
                        <td style="width: 49px; height: 40px; text-align: left">
                            <asp:TextBox ID="TextBox1" runat="server" Width="73px" Visible="False"></asp:TextBox>
                        </td>
                        <td style="width: 12px; height: 40px; text-align: left">
                        </td>
                        <td style="width: 106px; height: 40px; text-align: right">
                            <asp:Label ID="Label3" runat="server" Text="Fecha Hasta : " Visible="False"></asp:Label>
                        </td>
                        <td style="width: 74px; height: 40px; text-align: left">
                            <asp:TextBox ID="TextBox2" runat="server" Width="73px" Visible="False"></asp:TextBox>
                        </td>
                        <td style="width: 20px; height: 40px; text-align: left">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 174px; height: 29px; text-align: right">
            </td>
            <td style="width: 100px; height: 29px; text-align: left">
                <anthem:Button AutoUpdateAfterCallBack="true" ID="Button2" runat="server" Text="Buscar"
                    Width="83px" OnClick="Button2_Click" />
            </td>
            <td style="width: 103px; height: 29px; text-align: left">
                &nbsp;<asp:Button ID="Button5" runat="server" Text="Imprimir" Width="83px" OnClick="Button5_Click" />
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
                    <cc1:ExGridView ID="gvw_Datos" runat="server" AutoUpdateAfterCallBack="True" AutoGenerateColumns="False"
                        CellPadding="4" ForeColor="#747474" Width="800px" OnRowCreated="gvw_Datos_RowCreated"
                        OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
                        OnPageIndexChanging="gvw_Datos_PageIndexChanging" UseAccessibleHeader="False"
                        GridHeight="" OnSelectedIndexChanged="gvw_Datos_SelectedIndexChanged" UpdateAfterCallBack="True">
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <Columns>
                            <asp:BoundField DataField="IdSolicitud" HeaderText="Id" SortExpression="IdSolicitud"
                                HeaderStyle-Width="40px" ItemStyle-Width="40px">
                                
                            </asp:BoundField>
                            <asp:BoundField DataField="Fecha" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Fecha"
                                HeaderStyle-Width="120px" ItemStyle-Width="120px" SortExpression="Fecha">
                                
                            </asp:BoundField>
                            <asp:BoundField DataField="Usuario" HeaderText="Solicitante" SortExpression="Usuario"
                                HeaderStyle-Width="120px" ItemStyle-Width="120px">
                                
                            </asp:BoundField>
                            <asp:BoundField DataField="IdTramite" HeaderText="IdTram." SortExpression="IdTramite"
                                HeaderStyle-Width="40px" ItemStyle-Width="40px">
                            </asp:BoundField>
                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion"
                                HeaderStyle-Width="160px" ItemStyle-Width="160px" HtmlEncode="False">
                            
                            </asp:BoundField>
                            <asp:BoundField DataField="ArchivoAdjunto" HeaderText="ArchivoAdjunto" SortExpression="ArchivoAdjunto"
                                HeaderStyle-Width="100px" ItemStyle-Width="100px">
                                
                            </asp:BoundField>
                            <asp:BoundField DataField="CodigoDocumento" HtmlEncode="false" HeaderText="Codigo Documento"
                                HeaderStyle-Width="70px" ItemStyle-Width="70px">
                                
                            </asp:BoundField>
                            <asp:BoundField DataField="UbicacionFisica" HtmlEncode="false" HeaderText="Ubicacion Fisica"
                                HeaderStyle-Width="70px" ItemStyle-Width="70px">
                            </asp:BoundField>
                            <asp:BoundField DataField="Cartera" HtmlEncode="false" HeaderText="Cartera"
                                HeaderStyle-Width="70px" ItemStyle-Width="70px">
                            </asp:BoundField>
                            <asp:BoundField DataField="Disponible" HtmlEncode="false" HeaderText="Disponible"
                                HeaderStyle-Width="40px" ItemStyle-Width="40px">
                            </asp:BoundField>
                            <asp:CommandField ButtonType="Image" EditText="Ver archivos adjuntos" EditImageUrl="~/Img/search_again_16x16.gif"
                                ShowEditButton="True"  Visible="False" HeaderStyle-Width="30px" ItemStyle-Width="30px"/>
                            <asp:CommandField ButtonType="Image" SelectText="Ver Documentos del STD" SelectImageUrl="~/Img/VerDown.gif"
                                ShowSelectButton="True" HeaderStyle-Width="30px" ItemStyle-Width="30px"/>
                            <asp:CommandField ButtonType="Image" DeleteText="Denegar" DeleteImageUrl="~/Img/delete_16x16.gif"
                                ShowDeleteButton="True" HeaderStyle-Width="30px" ItemStyle-Width="30px"/>
                            
                            <asp:TemplateField>
                                <EditItemTemplate>
                                    <anthem:CheckBox runat="server" AutoCallBack="true" OnCheckedChanged="Check_Clicked"
                                        ID="CheckBox1"></anthem:CheckBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <anthem:CheckBox runat="server" AutoCallBack="true" OnCheckedChanged="Check_Clicked"
                                        ID="CheckBox2"></anthem:CheckBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="IDUsuario" SortExpression="IdUsuario" ItemStyle-ForeColor="White"
                                >
                                
                            </asp:BoundField>
                            
                            
                        </Columns>
                        <PagerStyle BackColor="#E2DED6" ForeColor="#747474" HorizontalAlign="Center" Font-Bold="True" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#747474" Height="25px" />
                        <EditRowStyle BackColor="#999999" />
                    </cc1:ExGridView>
                </anthem:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 34px; text-align: center" valign="top">
                <anthem:Panel ID="pnlDenegar" runat="server" Visible="false">
                    <table>
                        <tr>
                            <td colspan="2">
                                <anthem:HiddenField ID="values" runat="server" />
                            </td>
                        </tr>
                        <tr>
                            <td valign="top">
                                <anthem:Label ID="Label4" runat="server" Text="Motivo del Rechazo de Solicitud : "></anthem:Label>
                                <br />
                                <anthem:Label ID="lblNroSol" runat="server" Text=""></anthem:Label>
                            </td>
                            <td>
                                <anthem:TextBox ID="txtMessage" AutoUpdateAfterCallBack="true" runat="server" Height="75px"
                                    TextMode="MultiLine" Width="297px"></anthem:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <anthem:Button AutoUpdateAfterCallBack="true" ID="Button3" runat="server" Text="Enviar"
                                    Width="78px" OnClick="Button3_Click" />
                                <anthem:Button AutoUpdateAfterCallBack="true" ID="Button4" runat="server" Text="Cancelar"
                                    Width="78px" OnClick="Button4_Click" />
                            </td>
                        </tr>
                    </table>
                </anthem:Panel>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 34px; text-align: right" valign="bottom">
                <hr />
            </td>
        </tr>
        <tr>
            <td style="width: 174px; height: 34px; text-align: right">
                <asp:Label ID="Label8" runat="server" Text="Usuario Recoge : "></asp:Label>
            </td>
            <td style="width: 100px; height: 34px">
                <anthem:DropDownList ID="ddlUsuario2" runat="server" Width="284px">
                </anthem:DropDownList>
            </td>
            <td style="width: 103px; height: 34px">
                <anthem:Button ID="Button1" runat="server" Text="Atender" Width="95px" AutoUpdateAfterCallBack="true"
                    OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 174px; height: 34px; text-align: right">
                <asp:Label ID="Label10" runat="server" Text="Codigo Documento : "></asp:Label>
            </td>
            <td style="width: 100px; height: 34px">
                <anthem:TextBox ID="txtNroDocumento" runat="server" Width="73px" AutoUpdateAfterCallBack="true"></anthem:TextBox>
            </td>
            <td style="width: 103px; height: 34px">
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 34px; text-align: center">
                <asp:Label ID="Label9" runat="server" ForeColor="Red" Text=" "></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
