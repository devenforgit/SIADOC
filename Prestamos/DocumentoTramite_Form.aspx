<%@ page language="C#" autoeventwireup="true" inherits="DocumentoTramite_Form, App_Web_rn5pk5zs" title="Documentos Tramite" theme="Default" %>

<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>.: FONAFE :.</title>
    <link href="Css/sad.css" rel="stylesheet" type="text/css" />
       
    <link href="../Css/sad.css" rel="stylesheet" type="text/css" />
       
    <style type="text/css">
        .style1
        {
            width: 88px;
        }
        .style2
        {
            width: 120px;
        }
    </style>
       
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
                                    <asp:Label ID="Label1" runat="server"  Text="Documentos Tramite Documentario" 
                                        CssClass="smalltext" Width="213px"></asp:Label>
                                    <br />
                                </legend>
                                <anthem:Panel ID="pnl_Grid" runat="server" Width="100%" Height="100%" 
                                    CssClass="smalltext" ScrollBars="Vertical">
                                    <table style="width: 100%; height: 328px; vertical-align: top;">
                                        <tr align="left">
                                            <td align="left" class="smalltext" valign="top">
                                                <br />
                                                <table style="width: 100%;">
                                                    <tr>
                                                        <td class="style1">
                                                            <asp:Label ID="Label11" runat="server" CssClass="smalltext" 
                                                                Text="Nro de Registro:"></asp:Label>
                                                        </td>
                                                        <td class="style2">
                                                            <anthem:TextBox ID="txt_Codigo" runat="server" CssClass="textbox" 
                                                                MaxLength="49" Width="180px"></anthem:TextBox>
                                                        </td>
                                                        <td>
                                                            <anthem:Button ID="btn_Nuevo" runat="server" CausesValidation="False" 
                                                                EnabledDuringCallBack="False" OnClick="btn_Nuevo_Click" Text="Buscar" 
                                                                TextDuringCallBack="Buscando..." Width="70px" />
                                                        </td>
                                                    </tr>
                                                </table>
                                                <asp:HiddenField ID="hdnId" runat="server" />
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="width: 100%" valign="top" class="smalltext">
                                                <anthem:GridView Width="95%" ID="gvw_Datos" runat="server" ForeColor="#747474" 
                                                    AllowPaging="True" AutoGenerateColumns="False"
                                                    OnRowCreated="gvw_Datos_RowCreated" CellPadding="4" DataKeyNames="IdTransaccion"
                                                    EmptyDataText='No se encontraron registros'
                                                    OnPageIndexChanging="gvw_Datos_PageIndexChanging" 
                                                    OnSelectedIndexChanged="gvw_Datos_SelectedIndexChanged" 
                                                    CssClass="smalltext" PageSize="5" >
                                                    <PagerSettings PageButtonCount="5" />
                                                    <RowStyle ForeColor="#333333" BorderStyle="None" />
                                                    <EditRowStyle BackColor="#999999" />
                                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                                    <PagerStyle BackColor="Gainsboro" ForeColor="#747474" HorizontalAlign="Center" Font-Size="8px"/>
                                                    <HeaderStyle BackColor="Gainsboro" Font-Bold="True" ForeColor="#747474" />
                                                    <AlternatingRowStyle BackColor="White" />
                                                    <Columns>
                                                        <asp:CommandField ButtonType="Image" HeaderText="Seleccionar" SelectImageUrl="~/Img/Select.gif"
                                                            ShowSelectButton="True">
                                                            <itemstyle width="60px" />
                                                        </asp:CommandField>
                                                        <asp:BoundField DataField="IdTransaccion" HeaderText="IdTransaccion"></asp:BoundField>
                                                        <asp:BoundField DataField="CodigoDocumentoInterno" HeaderText="Id Tramite" />
                                                     <asp:BoundField DataField="Descripcion" HeaderText="Sumilla" />
                                                        <asp:TemplateField>
                                                            <edititemtemplate>
<asp:CheckBox runat="server" id="CheckBox1"></asp:CheckBox>
</edititemtemplate>
                                                            <itemtemplate>
<asp:CheckBox runat="server" id="CheckBox2"></asp:CheckBox>
</itemtemplate>
                                                        </asp:TemplateField>
                                                    </Columns>
                                                    <FooterStyle BackColor="Gainsboro" />
                                                </anthem:GridView>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td style="height: 20px; text-align: center;">
                                                <anthem:Button ID="btn_Delete0" runat="server" CausesValidation="False" 
                                                    EnabledDuringCallBack="False" OnClick="btn_Delete_Click" Text="Aceptar" 
                                                    TextDuringCallBack="Cargando..." Width="70px" />
                                                &nbsp;
                                                <anthem:Button ID="btn_Delete1" runat="server" CausesValidation="False" 
                                                    EnabledDuringCallBack="False" Text="Cancelar" 
                                                    TextDuringCallBack="Cancelando..." Width="70px" 
                                                    onclick="btn_Delete1_Click" />
                                            </td>
                                        </tr>
                                    </table>
                                </anthem:Panel>
                                <anthem:Panel ID="pnl_EditGrid" runat="server" Visible="False" Width="100%" Height="100%">
                                    <table style="width: 100%">
                                        <tr align="left">
                                            <td align="left">
                                                <asp:Button ID="btn_Aceptar"  runat="server" Text="Aceptar"
                                                    Width="70px" OnClick="btn_Aceptar_Click" />
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
                                                            
                                                        </td>
                                                    </tr>
                                                    <tr style="height: 25px">
                                                        <td align="left">
                                                            <anthem:Label ID="Label3" runat="server"  Text="Archivo" Width="72px"></anthem:Label></td>
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
