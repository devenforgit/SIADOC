<%@ page language="C#" autoeventwireup="true" inherits="DocumentoSTD_Form, App_Web_rn5pk5zs" title="Documentos Adjuntos" theme="Default" %>

<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>.: FONAFE :.</title>
        
    <link href="../Css/sad.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            height: 20px;
        }
    </style>
        
</head>
<body>
    <form id="form1" runat="server" method="post" enctype="multipart/form-data">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" 
            style="width: 96%; height: 100%" class="smalltext">
            <tr>
                <td colspan="2" style="height: 100%" valign="top" align="center">
                    <div>
                        <fieldset style="width: 98%; height: 100%">
                            <legend>
                                <asp:Label ID="Label1" runat="server"  Text="Documentos Tramites Documentario" 
                                    CssClass="smalltext" Font-Names="Arial" Font-Size="X-Small" Width="227px"></asp:Label>
                                <br />
                            </legend>
                            <anthem:Panel ID="pnl_Grid" runat="server" Width="100%" Height="100%" 
                                CssClass="smalltext">
                                <table style="width: 100%; vertical-align: top;">
                                    <tr align="left">
                                        <td align="left">
                                            <anthem:Button ID="btn_Delete" runat="server" Text="Cerrar" Width="70px" CausesValidation="False"
                                                EnabledDuringCallBack="False" OnClick="btn_Delete_Click" TextDuringCallBack="Cargando..."
                                                 />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="height: 20px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 100%" valign="top">
                                            <anthem:GridView Width="95%" ID="gvw_Datos" runat="server" ForeColor="#333333" 
                                                AllowPaging="true" PageSize="5" AutoGenerateColumns="False"
                                                OnRowCreated="gvw_Datos_RowCreated" CellPadding="4" DataKeyNames="IdTransaccion"
                                                EmptyDataText='No se encontraron registros'
                                                OnPageIndexChanging="gvw_Datos_PageIndexChanging" CssClass="smalltext"  
                                                >
                                                <EditRowStyle BackColor="#999999" />
                                                <SelectedRowStyle Font-Bold="True" />
                                                <PagerStyle BackColor="Gainsboro" ForeColor="#747474" HorizontalAlign="Center" 
                                                    Font-Italic="True" Font-Size="X-Small" />
                                                <HeaderStyle BackColor="Gainsboro" Font-Bold="True" ForeColor="#747474" />
                                                <AlternatingRowStyle BackColor="White" />
                                                <Columns>
                                                    <asp:CommandField ButtonType="Image" HeaderText="Seleccionar" SelectImageUrl="~/Img/Select.gif"
                                                        ShowSelectButton="True">
                                                        <ItemStyle Width="60px" />
                                                    </asp:CommandField>
                                                    <asp:BoundField DataField="IdTransaccion" HeaderText="IdTransaccion"></asp:BoundField>
                                                    <asp:BoundField DataField="codigobarra" HeaderText="codigo barra" />
                                                    <asp:BoundField DataField="descripcionlogica" HeaderText="Descripcion" />
                                                    <asp:BoundField DataField="fechacreacion" HeaderText="Fecha Creacion" />
                                                      <asp:TemplateField HeaderText="Nombre">
                                                        <EditItemTemplate>
                                                            <asp:TextBox runat="server" Text='<%# Bind("Ruta") %>' ID="TextBox1"></asp:TextBox>
                                                        
</EditItemTemplate>
                                                        <ItemTemplate>
                                                            <asp:HyperLink ID="HyperLink1" Text='<%# Bind("Url") %>' NavigateUrl='<%# Bind("Ruta") %>'
                                                                Target="_blank" runat="server"></asp:HyperLink>
                                                        
</ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                            </anthem:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="style1">
                                        </td>
                                    </tr>
                                </table>
                            </anthem:Panel>
                            <anthem:Panel ID="pnl_EditGrid" runat="server" Visible="False" Width="100%" Height="100%">
                                <table style="width: 100%">
                                    <tr align="left">
                                        <td align="left">
                                            <asp:Button ID="btn_Aceptar"  runat="server" Text="Aceptar"
                                                Width="70px" />
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
                                            <table style="width: 90%">
                                                <tr>
                                                    <td align="left">
                                                        <anthem:Label ID="Label10" runat="server"  Text="Codigo" Width="72px"></anthem:Label>
                                                    </td>
                                                    <td align="left">
                                                        <anthem:TextBox ReadOnly="true" ID="txt_Codigo"  runat="server"
                                                            Width="180px" MaxLength="49"></anthem:TextBox>
                                                    </td>
                                                </tr>
                                                <tr style="height: 25px">
                                                    <td align="left">
                                                        <anthem:Label ID="Label3" runat="server"  Text="Archivo" Width="72px"></anthem:Label>
                                                    </td>
                                                    <td align="left">
                                                        <input type="file" runat="server" id="file2" />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 20px">
                                                    </td>
                                                </tr>
                                            </table>
                                            <anthem:ValidationSummary DisplayMode="List" ShowSummary="false" ID="ValidationSummary1"
                                                runat="server" ShowMessageBox="True"  />
                                        </td>
                                    </tr>
                                </table>
                            </anthem:Panel>
                            <br />
                        </fieldset>
                    </div>
                </td>
            </tr>
        </table>
        <br />
    </div>
    </form>
</body>
</html>
