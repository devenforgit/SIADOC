<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="ConsultaDocumentos_Form, App_Web_rn5pk5zs" title=".: SIADOC - Consultar Solicitudes :." theme="Default" %>
    
<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" width="100%">      
        <tr>
            <td colspan="3">
                <table style="width: 100%" cellpadding="0" cellspacing="2PX">
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label2" runat="server"  Text="Archivo : "></asp:Label>
                        </td>
                        <td>
                            <anthem:DropDownList ID="ddlArchivo" runat="server"  Width="200px">
                            </anthem:DropDownList>
                        </td>
                        <td align="left">
                            <asp:Label ID="Label8" runat="server"  Text="Estado : " Width="50px"></asp:Label>
                        </td>
                        <td style="width: 242px">
                            <anthem:DropDownList ID="ddlEstado" runat="server"  Width="200px">
                            </anthem:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label6" runat="server"  Text="Gerencia : "></asp:Label>
                        </td>
                        <td>
                            <anthem:DropDownList OnSelectedIndexChanged="ddlGerencia_SelectedIndexChanged" ID="ddlGerencia"
                                AutoCallBack="true" AutoUpdateAfterCallBack="true" runat="server" 
                                Width="200px">
                            </anthem:DropDownList>
                        </td>
                        <td align="left">
                            <asp:Label ID="Label1" runat="server"  Text="Area : "></asp:Label>
                        </td>
                        <td style="width: 242px">
                            <anthem:DropDownList ID="ddlArea" AutoUpdateAfterCallBack="true" runat="server" 
                                Width="200px">
                            </anthem:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label10" runat="server"  Text="Tipo Documento : "></asp:Label>
                        </td>
                        <td>
                            <anthem:DropDownList ID="ddlTipoDocumento" runat="server"  Width="200px">
                            </anthem:DropDownList>
                        </td>
                        <td align="left">
                            <asp:Label ID="Label11" runat="server"  Text="Clasificación : "></asp:Label>
                        </td>
                        <td style="width: 242px">
                            <anthem:DropDownList ID="ddlTipoProceso" runat="server"  Width="200px">
                            </anthem:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td align="left">
                            <asp:Label ID="Label12" runat="server"  Text="Descripción : "></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtdescripcion" runat="server" Width="195px"></asp:TextBox>
                        </td>
                        <td align="left">
                            <asp:Label ID="Label13" runat="server"  Text="Cod. Documento : "></asp:Label>
                        </td>
                        <td style="width: 242px">
                            <asp:TextBox ID="txtcoddocumento" runat="server" Width="195px"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td align="left" colspan="4" style="text-align: center; height: 39px">
                <anthem:Button ID="btnBuscar" runat="server" Text="Consultar" Width="101px" 
                                OnClick="btnBuscar_Click2" EnabledDuringCallBack="False" 
                                TextDuringCallBack="Consultando..."  />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 8px; text-align: right">
                <hr />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 32px; text-align: center">
                <anthem:GridView ID="gvw_Datos" OnSelectedIndexChanged="gvw_Datos_SelectedIndexChanged"
                    runat="server" AutoUpdateAfterCallBack="True" AutoGenerateColumns="False" 
                    DataKeyNames="IdDocumento" PagerSettings-Mode="Numeric" OnRowCreated="gvw_Datos_RowCreated"
                    UpdateAfterCallBack="True" OnPageIndexChanging="gvw_Datos_PageIndexChanging"
                     AllowPaging="True" 
                    >
                    <Columns>
                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/Img/zoom_16x16.gif" ShowSelectButton="True"  />
                        <asp:BoundField DataField="IdDocumento" HeaderText="Id" SortExpression="IdDocumento" />
                        <asp:BoundField DataField="Archivo" HeaderText="Archivo" SortExpression="Archivo" />
                        <asp:BoundField DataField="Gerencia" HeaderText="Gerencia" SortExpression="Gerencia" />
                        <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion Documento" SortExpression="Descripcion" />
                        <asp:BoundField DataField="CodigoDocumento" HeaderText="Cod.  Documento" 
                            SortExpression="CodigoDocumento" />
                        <asp:BoundField DataField="EstadoDocumento" HeaderText="Estado" SortExpression="EstadoDocumento" />
                        <asp:BoundField DataField="TipoDocumento" HeaderText="Tipo Documento" SortExpression="TipoDocumento" />
                        <asp:BoundField DataField="TipoProceso" HeaderText="Clasificación" 
                            SortExpression="TipoProceso" />
                        <asp:BoundField DataField="IdDocumento_Temp" HeaderText="temp" SortExpression="IdDocumento_Temp"
                            />
                    </Columns>
                    <PagerStyle BackColor="Gainsboro" />
                    <HeaderStyle BackColor="Gainsboro" />
                    <PagerSettings Mode="NumericFirstLast" />
                </anthem:GridView>
                
            </td>
        </tr>
        <tr>
            <td style="width: 174px; height: 34px; text-align: right">
            </td>
            <td style="width: 100px; height: 34px; text-align: left">
                
            </td>
            <td style="width: 103px; height: 34px; text-align: center">
                <anthem:Button ID="btnNuevo" runat="server" Text="Nuevo" Width="79px" OnClick="btnNuevo_Click"  />
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 34px; text-align: right" valign="bottom">
                <hr />
                
            </td>
        </tr>
        <tr>
            <td colspan="3" style="height: 34px; text-align: center">
                <asp:Label ID="Label9" runat="server"  ForeColor="Red" Text=" "></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>
