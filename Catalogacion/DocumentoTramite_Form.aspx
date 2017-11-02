<%@ page language="C#" autoeventwireup="true" inherits="DocumentoTramite_Form, App_Web_i2t0mwo5" title="Documentos Tramite" theme="Default" %>

<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>.: FONAFE :.</title>
    <link href="../Css/sad.css" rel="stylesheet" type="text/css" />
    <link href="../Css/stylesmenu.css" rel="stylesheet" type="text/css" />
    <link href="../Css/stylesfonafe.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server" method="post" enctype="multipart/form-data">
        <div>
            <table border="0" cellpadding="0" cellspacing="0" style="width: 96%; height: 100%">
                <tr>
                    <td colspan="2" style="height: 100%" valign="top" align="center">
                        <div>
                            <fieldset style="width: 98%; height: 100%">
                                <legend>
                                    <asp:Label ID="Label1" runat="server" CssClass="titleLabel" Text="Documentos Adjuntos"></asp:Label>
                                    <br />
                                </legend>
                                <anthem:Panel ID="pnl_Grid" runat="server" Width="100%" Height="100%">
                                    <table style="width: 100%">
                                        <tr align="left">
                                            <td align="left">
                                                <anthem:Button ID="btn_Nuevo" runat="server" Text="Nuevo" Width="70px" OnClick="btn_Nuevo_Click"
                                                    CausesValidation="False" CssClass="normalButton" />
                                                <anthem:Button ID="btn_Editar" Visible="false" runat="server" Text="Actualizar" Width="70px"
                                                    CausesValidation="False" EnabledDuringCallBack="False" OnClick="btn_Editar_Click"
                                                    TextDuringCallBack="Cargando..." CssClass="normalButton" />
                                                
                                                <anthem:Button CssClass="normalButton" ID="btn_Delete" runat="server" Text="Cerrar"
                                                    Width="70px" CausesValidation="False" EnabledDuringCallBack="False" OnClick="btn_Delete_Click"
                                                    TextDuringCallBack="Cargando..." />
                                                <asp:HiddenField ID="hdnId" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px">
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%">
                                                <anthem:GridView Width="95%" ID="gvw_Datos" runat="server" ForeColor="#333333" Font-Size="8pt"
                                                    Font-Names="Tahoma" AllowPaging="true" PageSize="5" AutoGenerateColumns="False"
                                                    OnRowCreated="gvw_Datos_RowCreated" CellPadding="4" DataKeyNames="IdDocumentoAdjunto"
                                                    EmptyDataText='No se encontraron registros, pulse el boton "Nuevo " para agregar un registro'
                                                    OnPageIndexChanging="gvw_Datos_PageIndexChanging" OnSelectedIndexChanged="gvw_Datos_SelectedIndexChanged">
                                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                                    <EditRowStyle BackColor="#999999" />
                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                                    <Columns>
                                                        <asp:CommandField ButtonType="Image" HeaderText="Seleccionar" SelectImageUrl="~/Img/Select.gif"
                                                            ShowSelectButton="True">
                                                            <itemstyle width="60px" />
                                                        </asp:CommandField>
                                                        <asp:BoundField DataField="IdDocumentoAdjunto" HeaderText="Codigo"></asp:BoundField>
                                                        <asp:BoundField DataField="IdDocumento_Temp" HeaderText="IdDocumento_Temp" />
                                                        <asp:TemplateField HeaderText="Nombre">
                                                            <edititemtemplate>
<asp:TextBox runat="server" Text='<%# Bind("NombreArchivo") %>' id="TextBox1"></asp:TextBox>
</edititemtemplate>
                                                            <itemtemplate>

<asp:HyperLink ID="HyperLink1" Text='<%# Bind("NombreArchivo") %>' NavigateUrl='<%# Bind("Ruta") %>' Target=_blank  runat="server"></asp:HyperLink>
</itemtemplate>
                                                        </asp:TemplateField>
                                                        <asp:TemplateField>
                                                            <edititemtemplate>
<asp:CheckBox runat="server" id="CheckBox1"></asp:CheckBox>
</edititemtemplate>
                                                            <itemtemplate>
<asp:CheckBox runat="server" id="CheckBox2"></asp:CheckBox>
</itemtemplate>
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
                                <anthem:Panel ID="pnl_EditGrid" runat="server" Visible="False" Width="100%" Height="100%">
                                    <table style="width: 100%">
                                        <tr align="left">
                                            <td align="left">
                                                <asp:Button ID="btn_Aceptar" CssClass="normalButton" runat="server" Text="Aceptar"
                                                    Width="70px" OnClick="btn_Aceptar_Click" />
                                                <anthem:Button CssClass="normalButton" ID="btn_cancelar" runat="server" Text="Cancelar"
                                                    Width="70px" OnClick="btn_cancelar_Click" CausesValidation="False" />
                                                <anthem:Button CssClass="normalButton" ID="btn_Eliminar" runat="server" Text="Eliminar"
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
                                                            <anthem:Label ID="Label10" runat="server" CssClass="label" Text="Codigo" Width="72px"></anthem:Label>
                                                        </td>
                                                        <td align="left">
                                                            <anthem:TextBox ReadOnly="true" ID="txt_Codigo" CssClass="textbox" runat="server"
                                                                Width="180px" MaxLength="49"></anthem:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 25px">
                                                        <td align="left">
                                                            <anthem:Label ID="Label3" runat="server" CssClass="label" Text="Archivo" Width="72px"></anthem:Label></td>
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
                                                    runat="server" ShowMessageBox="True" />
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
