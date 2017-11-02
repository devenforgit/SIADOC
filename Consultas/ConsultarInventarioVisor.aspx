<%--
================================================================================================
Motivo			Fecha			Nombre		Descripción
================================================================================================
FON_CGC-947		18/08/2017		GMD			Correción de errores
--%>
<%@ page language="C#" autoeventwireup="true" inherits="Consultas_ConsultaInventarioVisor, App_Web_5aa3b1an" theme="Default" %>
<%-- FON_CGC-947 - INICIO --%>
<%--
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=9.0.0.0, Culture=neutral, PublicKeyToken=B03F5F7F11D50A3A"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
--%>
<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91"
    Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>
<%-- FON_CGC-947 - FIN --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Prestamos</title>
</head>
<body>
    <form id="form1" runat="server">
	<!-- FON_CGC-947 - INICIO -->
	<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
	<!-- FON_CGC-947 - FIN -->
        <div>
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Font-Names="Verdana" Font-Size="8pt" 
                            ForeColor="#666666" Text="Tipo de Reporte:"></asp:Label>
                    </td>
                    <td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" 
                            Font-Names="Verdana" Font-Size="8pt" ForeColor="#666666" 
                            onselectedindexchanged="RadioButtonList1_SelectedIndexChanged" 
                            RepeatDirection="Horizontal" Width="239px">
                            <asp:ListItem Selected="True" Value="0">Sin Contenido</asp:ListItem>
                            <asp:ListItem Value="1">Con Contenido</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>
            </table>
            <br />
            <table width="100%" style="height: 522px">
                <tr align="center">
                    <td>
                        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="8pt"
                            Height="550px" Width="1001px" OnDrillthrough="ReportViewer1_Drillthrough">
                            <LocalReport ReportPath="Consultas\ReporteContenido.rdlc">
                                <DataSources>
                                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" 
                                        Name="INVENTARIODataSet_ReporteConContenido" />
                                </DataSources>
                            </LocalReport>
                        </rsweb:ReportViewer>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
                            SelectMethod="GetData" 
                            TypeName="INVENTARIODataSetTableAdapters.ReporteConContenidoTableAdapter">
                        </asp:ObjectDataSource>
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" 
                            SelectMethod="GetData" 
                            TypeName="INVENTARIODataSetTableAdapters.VistaCabeceraInventarioTableAdapter">
                        </asp:ObjectDataSource>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
