<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="Reportes_Busqueda_Form, App_Web_55qshmmk" title=".: SIADOC - Consultas Catalogación :." theme="Default" %>
<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<%@ Register Assembly="ControlesWeb" Namespace="ControlesWeb" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="height: 10px">
            </td>
        </tr>
    </table>
    <br />
    <div class="smalltextgrey">
        <asp:Label ID="Label16" runat="server" Text="Criterio de Consulta"></asp:Label>
    </div>
    <br />
    <table style="width: 100%">
        <tr align="left">
            <td>
                <anthem:Label ID="Label10" runat="server" Text="Fecha Inicio" Width="119px"></anthem:Label>
            </td>
            <td>
                <anthem:TextBox ID="txt_FecIni" runat="server" Width="72px"></anthem:TextBox>
                <anthem:ImageButton ID="ImageButton2" runat="server" CausesValidation="false" ImageUrl="~/Img/icono.jpg"
                    OnClick="ImageButton2_Click" />
                <anthem:Calendar ID="cal_FecIni" DayHeaderStyle-BackColor="#D9D9E6" runat="server"
                    AutoUpdateAfterCallBack="True" OnSelectionChanged="Calendar1_SelectionChanged"
                    Visible="False">
                </anthem:Calendar>
            </td>
            <td>
            
                <anthem:Label ID="Label15" runat="server" Text="Fecha Fin" Width="72px"></anthem:Label>
            
            </td>
            <td>
            
                <anthem:TextBox ID="txt_FecFin" runat="server" Width="72px"></anthem:TextBox>
                <anthem:ImageButton ID="ImageButton3" runat="server" CausesValidation="false" ImageUrl="~/Img/icono.jpg"
                    OnClick="ImageButton4_Click" Height="16px" />
                <anthem:Calendar DayHeaderStyle-BackColor="#D9D9E6" ID="cal_FecFin" runat="server"
                    AutoUpdateAfterCallBack="True" OnSelectionChanged="Calendar2_SelectionChanged"
                    Visible="False">
                </anthem:Calendar>
            
            </td>
        </tr>
        
        <tr align="left">
            <td>
                <anthem:Label ID="Label17" runat="server" Text="Tipo de Documento"></anthem:Label>
            </td>
            <td>
                <anthem:DropDownList ID="ddl_TipoDocumento" runat="server" Width="200px">
                </anthem:DropDownList>
            </td>
            <td>
            
            </td>
            <td>
            
            </td>
        </tr>
        
        <tr align="left">
            <td>
                <anthem:Label ID="Label18" runat="server" Text="Area del Documento"></anthem:Label>
            </td>
            <td>
                <anthem:DropDownList ID="ddl_Area" runat="server" Width="200px">
                </anthem:DropDownList>
            </td>
            <td>
                <anthem:Label ID="Label2" runat="server" Text="Gerencia"></anthem:Label>
            </td>
            <td>
                <anthem:DropDownList ID="ddlGerencia" runat="server" Width="200px">
                </anthem:DropDownList>
            </td>
        </tr>
        
        
        <tr style="height: 25px;" align="left">
            <td>
                <anthem:Label ID="Label19" runat="server" Text="Tema"></anthem:Label>
            </td>
            <td>
                <anthem:DropDownList ID="ddl_tema" runat="server" Width="200px">
                </anthem:DropDownList>
            </td>
            <td>
                <anthem:Label ID="Label20" runat="server" Text="Numero"></anthem:Label>
            </td>
            <td>
                <anthem:TextBox ID="txt_Numero" runat="server" Width="195px"></anthem:TextBox>
            </td>
        </tr>
        <tr style="height: 25px;" align="left">
            <td>
                <anthem:Label ID="Label21" runat="server" Text="Emisor"></anthem:Label>
            </td>
            <td>
                <anthem:TextBox ID="txt_emisor" runat="server" Width="195px"></anthem:TextBox>
            </td>
            <td>
                <anthem:Label ID="Label22" runat="server" Text="Destinatario"></anthem:Label>
            </td>
            <td>
                <anthem:TextBox ID="txt_destinatario" runat="server" Width="195px"></anthem:TextBox>
            </td>
        </tr>
        <tr style="height: 25px;" align="left">
            <td>
                <anthem:Label ID="Label25" runat="server" Text="Titulo - Sumilla"></anthem:Label>
            </td>
            <td colspan="3" style="width: 80%">
                <anthem:TextBox ID="txt_titulo" runat="server" Width="545px"></anthem:TextBox>
            </td>
        </tr>
        <tr style="height: 25px;" align="left">
            <td>
                <anthem:Label ID="Label23" runat="server" Text="Palabras Clave"></anthem:Label>
            </td>
            <td colspan="3" style="width: 80%">
                <anthem:TextBox ID="txt_palabras" Width="550px" CssClass="multitextbox" runat="server"
                    TextMode="MultiLine"></anthem:TextBox>
            </td>
        </tr>
        <tr style="height: 25px;" align="right">
            <td colspan="4">
                <anthem:Button ID="btn_Buscar" OnClick="btn_Buscar_Click" runat="server" Text="Buscar"
                    Width="70px" TextDuringCallBack="Cargando..." EnabledDuringCallBack="False" />
                <anthem:Button ID="btn_Descargar" runat="server" Text="Exportar" Width="70px" TextDuringCallBack="Cargando..."
                    EnabledDuringCallBack="False" OnClick="btn_Descargar_Click" />&nbsp
                <br />
            </td>
        </tr>
    </table>
    <br />
    <div class="smalltextgrey">
        <asp:Label ID="Label24" runat="server" Text="Resultado"></asp:Label>
    </div>
    <br />
    <anthem:Panel ID="divListadoCuotas" runat="server" AutoUpdateAfterCallBack="true">
        <cc1:ExGridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoUpdateAfterCallBack="true"
            DataKeyNames="IdDocumento" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging"
            OnRowCommand="GridView1_RowCommand" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing"
            OnSelectedIndexChanged="GridView1_SelectedIndexChanged" EmptyDataText="No se encontraron registros, para esta busqueda"
            PagerSettings-Mode="Numeric" Width="760px" GridHeight="500px">
            <Columns>
                <asp:BoundField DataField="IdDocumento" HeaderText="Id. Doc" ReadOnly="True" SortExpression="IdDocumento"
                    HeaderStyle-Width="40px" ItemStyle-Width="40px" >
                <HeaderStyle Width="40px" />
                <ItemStyle Width="40px" />
                </asp:BoundField>
                <asp:BoundField DataField="TIPO" HeaderText="Tipo" SortExpression="TIPO" HeaderStyle-Width="50px"
                    ItemStyle-Width="50px" >
                <HeaderStyle Width="50px" />
                <ItemStyle Width="50px" />
                </asp:BoundField>
                <asp:BoundField DataField="NUMERO" HeaderText="Numero" SortExpression="NUMERO" HeaderStyle-Width="60px"
                    ItemStyle-Width="60px" >
                <HeaderStyle Width="60px" />
                <ItemStyle Width="60px" />
                </asp:BoundField>
                <asp:BoundField DataField="AREA" HeaderText="Area" SortExpression="AREA" HeaderStyle-Width="70px"
                    ItemStyle-Width="70px" >
                    <HeaderStyle Width="70px" />
                <ItemStyle Width="70px" />
                </asp:BoundField>
                    <asp:BoundField DataField="GERENCIA" HeaderText="Gerencia" 
                    SortExpression="GERENCIA" HeaderStyle-Width="70px"
                    ItemStyle-Width="70px" >
                <HeaderStyle Width="70px" />
                <ItemStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="titulo" HeaderText="Titulo - Sumilla" SortExpression="TITULO - SUMILLA"
                    HeaderStyle-Width="120px" ItemStyle-Width="100px" >
                <HeaderStyle Width="120px" />
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:BoundField DataField="FECHA" HtmlEncode="false" DataFormatString="{0:dd/MM/yy}"
                    HeaderText="Fecha" SortExpression="FECHA" HeaderStyle-Width="70px" 
                    ItemStyle-Width="70px" >
                <HeaderStyle Width="70px" />
                <ItemStyle Width="70px" />
                </asp:BoundField>
                <asp:BoundField DataField="EMISOR" HeaderText="Emisor" SortExpression="EMISOR" HeaderStyle-Width="100px"
                    ItemStyle-Width="100px" >
                <HeaderStyle Width="100px" />
                <ItemStyle Width="100px" />
                </asp:BoundField>
                <asp:CommandField ButtonType="Image" DeleteImageUrl="~/Img/zoom_in_16x16.gif" DeleteText="Ver detalles"
                    HeaderText="Ver Detalle" ShowDeleteButton="True" HeaderStyle-Width="30px" 
                    ItemStyle-Width="30px" >
                <HeaderStyle Width="30px" />
                <ItemStyle Width="30px" />
                </asp:CommandField>
                <asp:CommandField ButtonType="Image" EditImageUrl="~/Img/last_16x16.gif" EditText="Ver archivos"
                    HeaderText="Ver Archivos" ShowEditButton="True" HeaderStyle-Width="30px" 
                    ItemStyle-Width="30px" >
                <HeaderStyle Width="30px" />
                <ItemStyle Width="30px" />
                </asp:CommandField>
                <asp:CommandField SelectText="A favoritos" ShowSelectButton="True" HeaderStyle-Width="30px"
                    ItemStyle-Width="30px">
                    <HeaderStyle Width="30px" />
                    <ItemStyle ForeColor="#006699" />
                </asp:CommandField>
            </Columns>
            <HeaderStyle BackColor="Gainsboro" BorderStyle="None" ForeColor="#747474" Font-Bold="True" />
            <PagerSettings Mode="NumericFirstLast" />
        </cc1:ExGridView>
    </anthem:Panel>
</asp:Content>
