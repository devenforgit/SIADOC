<%@ page language="C#" autoeventwireup="true" inherits="Inventario_RegistroInventario, App_Web_c4z4mhwj" theme="Default" %>

<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>DETALLE DEL INVENTARIO</title>
    <link href="../Css/sad.css" rel="stylesheet" type="text/css">
    <script language="javascript" type="text/jscript">
        function selArea(dest, source) {
            document.getElementById(dest).value = source.options[source.selectedIndex].value;
            window.alert(source.options[source.selectedIndex].value);
        }

        function openAdjuntos(IdTemp, type) {
            window.open('../Catalogacion/DocumentoAdjunto_Temp_Form.aspx?IdTemp=' + IdTemp + '&type=' + type, 'popUp', 'width=300,height=450,resisable=yes,toolbar=no');
        }

        function openDocumentos(IdTramite) {
            window.open('DocumentoSTD_Form.aspx?IdTransaccion=' + IdTramite, 'popUp1', ' width=950,height=700,resizable=yes,toolbar=no');
        }
        function abrirVisor(ventana) {
            temp = window.open(ventana, "rep", "top=0,left=0,menubar=yes, resizable=yes")
        }
        function abrirPopUp(ventana) {
            temp = window.open(ventana, "rep", "top=0,left=0,menubar=no, resizable=no, width=750,height=700")
        }
        function confirmDelete(toDel) {

            var res = window.confirm('Realmente desea eliminar este registro?');
            if (res) {
                //si encuentra el boton eliminar lo llama ahi esta la logica para eliminar registros y en un hidden se pone el codigo del q se elimina
                var hdn = document.getElementById('ctl00_ContentPlaceHolder1_hdnId');
                var btn = document.getElementById('ctl00_ContentPlaceHolder1_btnEliminar');                
                if (hdn != null && btn != null) {
                    hdn.value = toDel;
                    btn.click();
                }
            }
        }

    </script>
    <style type="text/css">
        .smalltext
        {
            text-align: left;
        }
        .style2
        {
            height: 21px;
        }
        .style3
        {
            height: 17px;
            width: 766px;
        }
        .style18
        {
            text-align: center;
        }
        #form1
        {
            width: 956px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <input type="hidden" id="hdnId" runat="server" />
    <table cellpadding="0" cellspacing="0" class="style3" align="left"
            style="width: 910px;">
    <tr>
        <td align="center" colspan="3">
            <table cellpadding="0" cellspacing="0" 
                style="width: 49%;">
                <tr>
                    <td bgcolor="#006699" class="style2" colspan="2">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Names="Arial" 
                            Font-Size="X-Small" ForeColor="White" 
                            Text="Datos de la Unidad de Conservacion"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="style43">
                    </td>
                    <td class="style20">
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style19">
                        <asp:Label ID="Label1" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Nro. UC :"></asp:Label>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txt_numerouc" runat="server" Width="100px" Enabled="False" 
                            Height="20px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style19">
                        <asp:Label ID="Label21" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Archivo :"></asp:Label>
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="ddl_archivo" runat="server" Font-Size="X-Small" 
                            Height="20px" Width="200px" Enabled="False">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style19">
                        <asp:Label ID="Label2" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Ubicación Topográfica :"></asp:Label>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="txt_ubicacion" runat="server" Width="200px" Enabled="False" 
                            Height="20px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style25">
                        <asp:Label ID="Label3" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Nro. Precinto :"></asp:Label>
                    </td>
                    <td align="left" class="style26">
                        <asp:TextBox ID="txt_nroprecinto" runat="server" Width="200px" Enabled="False" 
                            Height="20px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style19">
                        <asp:Label ID="Label4" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Fondo Documental :"></asp:Label>
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="ddl_fondodoc" runat="server" Font-Size="X-Small" 
                            Height="20px" Width="200px" Enabled="False">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td align="left" class="style19">
                        <asp:Label ID="Label5" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Sección Documental :"></asp:Label>
                    </td>
                    <td align="left">
                        <asp:DropDownList ID="ddl_seccion" runat="server" Font-Size="X-Small" 
                            Height="20px" Width="200px" Enabled="False">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="style43" align="left">
                        <asp:Label ID="Label19" runat="server" Font-Names="Arial" Font-Size="Small" 
                            ForeColor="#666666" Text="Nro. Paquetes / Expedientes :"></asp:Label>
                    </td>
                    <td class="style21" align="left">
                        <asp:TextBox ID="txt_nropaquetes" runat="server" Width="100px" Enabled="False" 
                            Height="20px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style45" align="left">
                    </td>
                    <td class="style41" align="left">
                    </td>
                </tr>
                    </table>
            
        </td>
    </tr>
    <tr>
        <td class="style18" colspan="3">
            <anthem:GridView ID="gvw_Datos" runat="server" AutoGenerateColumns="False" 
                CellPadding="4" Font-Names="Arial" OnPageIndexChanging="gvw_Datos_PageIndexChanging"
                Font-Size="X-Small" ForeColor="#333333" GridLines="None" Width="627px" 
                EmptyDataText="No se ha agregado ningun contenido.">
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <Columns>
                    <asp:BoundField DataField="Serie" HeaderText="Serie" 
                        SortExpression="Serie" />
                    <asp:BoundField DataField="SubSerie" HeaderText="SubSerie" 
                        SortExpression="SubSerie" />
                    <asp:BoundField DataField="PiezaDoc" HeaderText="Pieza Documental" 
                        SortExpression="PiezaDoc" />
                    <asp:BoundField DataField="NroRegistro" HeaderText="Nro Registro" 
                        SortExpression="NroRegistro" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" 
                        SortExpression="Descripcion" />
                    <asp:BoundField DataField="StrValor" HeaderText="Valor" 
                        SortExpression="StrValor" />
                    <asp:BoundField DataField="StrNivelArchivo" HeaderText="Nivel Archivo" 
                        SortExpression="StrNivelArchivo" />
                    <asp:BoundField DataField="NroFolios" HeaderText="Nro Folios" 
                        SortExpression="NroFolios" />
                    <asp:BoundField DataField="FechaExtrema_Inicio" HeaderText="Fecha Extrema Inicio" 
                        SortExpression="FechaExtrema_Inicio" />
                    <asp:BoundField DataField="FechaExtrema_Fin" HeaderText="Fecha Extrema Fin" 
                        SortExpression="FechaExtrema_Fin" />
                    <asp:BoundField DataField="PeriodoRetencion" HeaderText="Periodo Retencion" 
                        SortExpression="PeriodoRetencion" />
                    <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" 
                        SortExpression="Observaciones" />
                     <asp:BoundField DataField="StrEstado" HeaderText="Estado" ReadOnly="True" 
                            SortExpression="StrEstado" />
                </Columns>
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#999999" />
                <EmptyDataRowStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
            </anthem:GridView>
        </td>
    </tr>
    <tr>
        <td class="style33" colspan="3">
                        &nbsp;</td>
    </tr>
    <tr>
        <td class="style33" colspan="3">
                        <asp:Label ID="lbl_idunidad" runat="server"></asp:Label>
                        &nbsp;
                        </td>
    </tr>
    <tr>
        <td class="style33">
            &nbsp;</td>
        <td class="style8">
            <asp:LinkButton ID="lbt_cerrar" runat="server" onclick="lbt_cerrar_Click">Cerrar</asp:LinkButton>
        </td>
        <td style="text-align: right">
            &nbsp;</td>
    </tr>
</table>

</form></body></html>


