<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="ReporteDocumentos_Form, App_Web_hj3yxqmz" title=".: SIADOC - Consultar Documentos :." theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="0" cellpadding="2px" cellspacing="0" style="width: 100%">
        <tr>
            <td style="width: 70px; text-align: left">
            <asp:Label ID="Label5" runat="server" Text="Gerencia : "></asp:Label>
            </td>
            <td style="width: 70px">
                <anthem:DropDownList OnSelectedIndexChanged="ddlGerencia_SelectedIndexChanged" ID="ddlGerencia"
                    AutoCallBack="true" AutoUpdateAfterCallBack="true" runat="server" Width="200px">
                </anthem:DropDownList>
            </td>
            <td>
            </td>
            <td style="width: 99px; text-align: left">
                <asp:Label ID="Label1" runat="server" Text="Area : "></asp:Label>
            </td>
            <td style="width: 70px">
                <anthem:DropDownList ID="ddlArea" AutoUpdateAfterCallBack="true" runat="server" Width="200px">
                </anthem:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 70px; text-align: left">
                <asp:Label ID="Label8" runat="server" Text="Estado : "></asp:Label>
            </td>
            <td style="width: 70px">
                <anthem:DropDownList ID="ddlEstado" runat="server" Width="200px">
                </anthem:DropDownList>
            </td>
            <td>
            </td>
            <td style="width: 99px; text-align: left">
                <asp:Label ID="Label2" runat="server" Text="Archivo : "></asp:Label>
            </td>
            <td style="width: 70px">
                <anthem:DropDownList ID="ddlArchivo" runat="server" Width="200px">
                </anthem:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 70px; text-align: left">
                <asp:Label ID="Label11" runat="server" Text="Tipo Proceso : " Width="93px"></asp:Label>
            </td>
            <td style="width: 70px">
                <anthem:DropDownList ID="ddlTipoProceso" runat="server" Width="200px">
                </anthem:DropDownList>
            </td>
            <td>
            </td>
            <td style="width: 99px; text-align: left">
                <asp:Label ID="Label10" runat="server" Text="Tipo Documento : " Width="104px"></asp:Label>
            </td>
            <td style="width: 70px">
                <anthem:DropDownList ID="ddlTipoDocumento" runat="server" Width="200px">
                </anthem:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 70px; text-align: left">
                <asp:Label ID="Label13" runat="server" Text="Año : "></asp:Label>
            </td>
            <td style="width: 70px">
                <anthem:TextBox ID="txtAnho" AutoUpdateAfterCallBack="true" runat="server" Width="195px"></anthem:TextBox>
            </td>
            <td>
            </td>
            <td style="width: 99px; text-align: left">
                <asp:Label ID="Label14" runat="server" Text="Nro. Doc. : "></asp:Label>
            </td>
            <td style="width: 70px;">
                <anthem:TextBox ID="txtNroDocumento" AutoUpdateAfterCallBack="true" runat="server"
                    Width="195px"></anthem:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 70px; text-align: left">
                <asp:Label ID="Label4" runat="server" Text="Descripción : " Width="83px"></asp:Label>
            </td>
            <td colspan="4" style="text-align: left">
                <anthem:TextBox ID="txtDescripcion" runat="server" AutoUpdateAfterCallBack="true"
                    Width="80%"></anthem:TextBox>
            </td>
        </tr>
        <tr>
            <td style="text-align: left; height: 5px;" colspan="5">
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="5" style="text-align: right;">
                <span style="color: #ffffff">
                    <anthem:Button ID="btnBuscar" runat="server" CausesValidation="false" AutoUpdateAfterCallBack="true"
                        Text="Consultar" Width="83px" OnClick="btnBuscar_Click2" />
                    <anthem:Button ID="btnExportar" runat="server" CausesValidation="false" AutoUpdateAfterCallBack="true"
                        Text="Ver Reporte" Width="95px" OnClick="btnExportar_Click2" /></span>
            </td>
        </tr>
        <tr>
            <td colspan="5" style="height: 8px; text-align: right">
                <hr />
            </td>
        </tr>
        <tr>
            <td colspan="5" style="text-align: center" valign="top">
                <anthem:GridView ID="gvw_Datos" OnSelectedIndexChanged="gvw_Datos_SelectedIndexChanged"
                    runat="server" AutoUpdateAfterCallBack="True" AutoGenerateColumns="False" CellPadding="4"
                    ForeColor="#747474" Width="100%" DataKeyNames="IdDocumento" OnRowCreated="gvw_Datos_RowCreated"
                    OnPageIndexChanging="gvw_Datos_PageIndexChanging" AllowPaging="True" UseAccessibleHeader="False"
                    UpdateAfterCallBack="True">
                    <FooterStyle Font-Bold="True" />
                    <PagerSettings Mode="NumericFirstLast" />
                    <RowStyle ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ButtonType="Image" SelectImageUrl="~/Img/vDoc.gif" ShowSelectButton="True"
                            SelectText="Ver Documento" />
                        <asp:BoundField DataField="IdDocumento" HeaderText="Id" SortExpression="IdDocumento" />
                        <asp:BoundField DataField="Archivo" HeaderText="Archivo" SortExpression="Archivo" />
                        <asp:BoundField DataField="Gerencia" HeaderText="Gerencia" SortExpression="Gerencia" />
                        <asp:BoundField DataField="Area" HeaderText="Area" SortExpression="Area" />
                        <asp:BoundField DataField="Descripcion" HeaderText="Descripcion Documento" SortExpression="Descripcion" />
                        <asp:BoundField DataField="CodigoDocumento" HeaderText="Cod. Documento" SortExpression="CodigoDocumento" />
                        <asp:BoundField DataField="EstadoDocumento" HeaderText="Estado" SortExpression="EstadoDocumento" />
                        <asp:BoundField DataField="TipoDocumento" HeaderText="Tipo Documento" SortExpression="TipoDocumento" />
                        <asp:BoundField DataField="TipoProceso" HeaderText="Tipo Proceso" SortExpression="TipoProceso" />
                        <asp:BoundField DataField="IdDocumentoTemp" HeaderText="temp" SortExpression="IdDocumentoTemp" />
                    </Columns>
                    <PagerStyle BackColor="Gainsboro" ForeColor="#747474" HorizontalAlign="Center" BorderStyle="None"
                        Height="25px" VerticalAlign="Middle" Wrap="True" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="Gainsboro" Font-Bold="True" ForeColor="#747474" Height="35px"
                        HorizontalAlign="Center" VerticalAlign="Middle" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BorderStyle="None" />
                </anthem:GridView>
            </td>
        </tr>
        <tr>
            <td colspan="5" style="text-align: right" valign="bottom">
                <hr />
                <span style="color: #ffffff">
                    <asp:Label ID="Label3" runat="server" Text="Fecha Inicio : " Width="83px" Visible="False"></asp:Label>
                    <anthem:TextBox ID="txtFechaInicio" AutoUpdateAfterCallBack="true" runat="server"
                        Width="97px" Visible="False"></anthem:TextBox>
                </span><span style="color: #ffffff">
                    <asp:Label ID="Label12" runat="server" Text="Fecha Fin : " Width="70px" Visible="False"
                        Height="16px"></asp:Label>
                    <anthem:TextBox ID="txtFechaFin" AutoUpdateAfterCallBack="true" runat="server" Width="97px"
                        Visible="False"></anthem:TextBox>
                </span>
            </td>
        </tr>
    </table>
</asp:Content>
