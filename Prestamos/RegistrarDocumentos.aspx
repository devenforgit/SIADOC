<%--
================================================================================================
Motivo			Fecha			Nombre		Descripción
================================================================================================
FON_CGC-947		18/08/2017		GMD			Correción de errores
--%>
<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="RegistrarDocumentos_Form, App_Web_rn5pk5zs" title=".: SIADOC - Registrar Documentos :." theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
	<table border="0" cellpadding="0" cellspacing="0" style="width: 85%">        
        <tr>
            <td colspan="2">
                <anthem:Label ID="Label5" runat="server"  Font-Bold="True" Font-Size="Small"
                    Text="Nuevo Documento de Archivo" Width="314px"></anthem:Label>
            </td>
        </tr>       
        <tr>
            <td style="width: 112px; height: 15px; text-align: left">
                </td>
            <td style="width: 100px; height: 15px; text-align: left">
                </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 22px; text-align: left">
                <anthem:Label ID="Label1" runat="server"  Text="Gerencia : "
                    Width="75px"></anthem:Label>
            </td>
            <td style="width: 100px; height: 22px; text-align: left">
                <anthem:DropDownList ID="ddlGerencia"  AutoCallBack="true" AutoUpdateAfterCallBack="true"
                    runat="server"  Width="250px" OnSelectedIndexChanged="ddlGerencia_SelectedIndexChanged">
                </anthem:DropDownList>
				<!-- FON_CGC-947 - INICIO -->
				<%-- 
                <anthem:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="ddlGerencia"
                    Display="None" ErrorMessage="Seleccione Gerencia"></anthem:RequiredFieldValidator>
				--%>
				<!-- FON_CGC-947 - FIN -->
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 22px; text-align: left">
                <anthem:Label ID="Label9" runat="server"  Text="Area : " Width="49px"></anthem:Label>
            </td>
            <td style="width: 100px; height: 22px; text-align: left">
                <anthem:DropDownList ID="ddlArea" runat="server"  Width="250px">
                </anthem:DropDownList>
                <anthem:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="ddlArea"
                    Display="None" ErrorMessage="Seleccione Area"></anthem:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 22px; text-align: left">
                <anthem:Label ID="Label10" runat="server"  Text="Archivo : "
                    Width="71px"></anthem:Label>
            </td>
            <td style="width: 100px; height: 22px; text-align: left">
                <anthem:DropDownList ID="ddlArchivo" AutoUpdateAfterCallBack="true" runat="server"
                     Width="250px">
                </anthem:DropDownList>
                <anthem:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="ddlArchivo"
                    Display="None" ErrorMessage="Seleccione Archivo"></anthem:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 22px; text-align: left">
                <anthem:Label ID="Label11" runat="server"  Text="Tipo de Documento :"
                    Width="137px"></anthem:Label>
            </td>
            <td style="width: 100px; height: 22px; text-align: left">
                <anthem:DropDownList ID="ddlTipoDocumento" runat="server" AutoUpdateAfterCallBack="true"
                     Width="250px">
                </anthem:DropDownList>
                <anthem:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="ddlTipoDocumento"
                    Display="None" ErrorMessage="Seleccione Tipo de Documento"></anthem:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 22px; text-align: left">
                <anthem:Label ID="Label13" runat="server"  Text="Clasificación : "
                    Width="127px"></anthem:Label>
            </td>
            <td style="width: 100px; height: 22px; text-align: left">
                <anthem:DropDownList AutoUpdateAfterCallBack="true" ID="ddlTipoProceso" runat="server"
                     Width="250px">
                </anthem:DropDownList>
                <anthem:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="ddlTipoProceso"
                    Display="None" ErrorMessage="Seleccione Tipo de Proceso"></anthem:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td style="width: 112px; text-align: left">
                <anthem:Label ID="lblcartera" runat="server"  Text="Cartera : "
                    Width="127px" Visible="False"></anthem:Label>
            </td>
            <td style="width: 100px; text-align: left">
                <anthem:DropDownList AutoUpdateAfterCallBack="true" ID="ddlCartera" runat="server"
                     Width="250px" Visible="False">
                </anthem:DropDownList>
                <anthem:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ddlCartera"
                    Display="None" ErrorMessage="Seleccione Cartera"></anthem:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td style="width: 112px; height: 22px; text-align: left">
                <anthem:Label ID="Label8" runat="server"  Text="Ubicación Física : "
                    Width="127px"></anthem:Label>
            </td>
            <td style="width: 100px; height: 22px; text-align: left">
                <anthem:TextBox   ID="txtUbicacion" runat="server"
                     Width="250px">
                </anthem:TextBox>
                <anthem:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtUbicacion"
                    Display="None" ErrorMessage="Ingrese ubicación física"></anthem:RequiredFieldValidator>
            </td>
        </tr>
        
        
        <tr>
            <td style="width: 112px; height: 22px; text-align: left">
                <anthem:Label ID="Label2" runat="server"  Text="Fecha Documento : "
                    Width="131px"></anthem:Label>
            </td>
            <td style="width: 130px; height: 22px; text-align: left">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td>
                            <anthem:TextBox ID="txt_Fecha" AutoUpdateAfterCallBack="true" runat="server" 
                                Width="97px"></anthem:TextBox>
                            <anthem:RequiredFieldValidator ID="rfv6" runat="server" ControlToValidate="txt_Fecha"
                                Display="None" ErrorMessage="Ingrese Fecha"></anthem:RequiredFieldValidator>
                            <anthem:RangeValidator ID="rv1" runat="server" ControlToValidate="txt_Fecha" ErrorMessage="Formato fecha incorrecta"
                                Type="Date" MinimumValue="01/01/1900" MaximumValue="01/01/2099">s</anthem:RangeValidator>
                        </td>
                        <td style="width: 19px; height: 20px">
                            <anthem:ImageButton ID="ImageButton2" runat="server" ImageUrl="../Img/icono.jpg"
                                OnClick="ImageButton2_Click" CausesValidation="false" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <anthem:Calendar DayHeaderStyle-BackColor="#D9D9E6" ID="Calendar1" runat="server"
                                AutoUpdateAfterCallBack="True" OnSelectionChanged="Calendar1_SelectionChanged"
                                Visible="False" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest"
                                Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="120px" UpdateAfterCallBack="True"
                                Width="150px">
                                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                                <SelectorStyle BackColor="#CCCCCC" />
                                <WeekendDayStyle BackColor="#FFFFCC" />
                                <OtherMonthDayStyle ForeColor="#808080" />
                                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                                <NextPrevStyle VerticalAlign="Bottom" />
                                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                            </anthem:Calendar>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 22px; text-align: left">
                <anthem:Label ID="Label3" runat="server"  Text="Id Trámite : "></anthem:Label>
            </td>
            <td style="width: 100px; height: 22px; text-align: left" valign="middle">
                <table border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td style="width: 100px">
                            <anthem:TextBox ID="txtIdTramite" AutoUpdateAfterCallBack="true" runat="server" 
                                Width="97px"></anthem:TextBox>
                        </td>
                        <td style="width: 19px">
                        </td>
                        <td style="width: 100px">
                            <img onclick="javascript:window.open('DocumentoTramite_Form.aspx','popUp','width=450,height=450,resisable=yes,toolbar=no');"
                                src="../Img/zoom_16x16.gif" />
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 22px; text-align: left">
                <anthem:Label ID="Label14" runat="server"  Text="Año : "></anthem:Label>
            </td>
            <td style="width: 100px; height: 22px; text-align: left" valign="middle">
                <anthem:TextBox AutoUpdateAfterCallBack="true" ID="txtAnho" runat="server" 
                    Width="97px"></anthem:TextBox>
                <anthem:RequiredFieldValidator ID="rfv7" runat="server" ControlToValidate="txtAnho"
                    Display="None" ErrorMessage="Ingrese Año"></anthem:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 22px; text-align: left">
                <anthem:Label ID="Label15" runat="server"  Text="Número : "></anthem:Label>
            </td>
            <td style="width: 100px; height: 22px; text-align: left" valign="middle">
                <anthem:TextBox AutoUpdateAfterCallBack="true" ID="txtNumero" runat="server" 
                    Width="97px"></anthem:TextBox>
                <anthem:RequiredFieldValidator ID="rfv8" runat="server" ControlToValidate="txtNumero"
                    Display="None" ErrorMessage="Ingrese numero"></anthem:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 22px; text-align: left">
                <anthem:Label ID="Label16" runat="server"  Text="Cod. Documento : "></anthem:Label>
            </td>
            <td style="width: 100px; height: 22px; text-align: left" valign="middle">
                <anthem:TextBox AutoUpdateAfterCallBack="true" ID="txtCodigoDocumento" runat="server"
                     Width="97px"></anthem:TextBox>
                <anthem:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCodigoDocumento"
                    Display="None" ErrorMessage="Ingrese codigo de documento"></anthem:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 22px; text-align: left">
                <anthem:Label ID="Label4" runat="server"  Text="Descripción : "
                    Width="83px"></anthem:Label>
            </td>
            <td style="width: 100px; height: 22px; text-align: left">
                <anthem:TextBox AutoUpdateAfterCallBack="true" ID="txtDescripcion" runat="server"
                    Height="43px" TextMode="MultiLine" Width="250px" ></anthem:TextBox>
                <anthem:RequiredFieldValidator ID="rfv9" runat="server" ControlToValidate="txtDescripcion"
                    Display="None" ErrorMessage="Ingrese descripción"></anthem:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 22px; text-align: left">
                <anthem:Label ID="Label12" runat="server"  Text="Archivo Adjunto : "
                    Width="121px"></anthem:Label>
            </td>
            <td style="width: 100px; height: 22px; text-align: left">
                <asp:Image ImageUrl="../Img/zoom_16x16.gif" ID="imgAdjuntos" runat="server" />
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 22px; text-align: left">
                <anthem:Label ID="Label6" runat="server"  Text="Estado : " Width="79px"></anthem:Label>
            </td>
            <td style="width: 100px; height: 22px; text-align: left">
                <anthem:DropDownList AutoUpdateAfterCallBack="true" ID="ddlEstadoDocumento" runat="server"
                     Width="250px">
                </anthem:DropDownList>
                <anthem:RequiredFieldValidator ID="rfv10" runat="server" ControlToValidate="ddlEstadoDocumento"
                    Display="None" ErrorMessage="Seleccione Estado"></anthem:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 112px; height: 30px; text-align: right">
                <anthem:HiddenField ID="hdnIdTemporal" runat="server" />
                <anthem:HiddenField ID="txt_Codigo" runat="server" />
            </td>
            <td style="width: 100px; height: 30px; text-align: right">
                <anthem:Button ID="Button1" CausesValidation="true" runat="server" Text="Grabar"
                    OnClick="Button1_Click" EnabledDuringCallBack="False" 
                    TextDuringCallBack="Grabando..." Width="95px" />
                <anthem:Button ID="Button2" Visible="false" CausesValidation="false" runat="server"
                    Text="Regresar" OnClick="Button2_Click" />
            </td>
        </tr>
    </table>
    <anthem:ValidationSummary DisplayMode="List" ShowSummary="false" ID="ValidationSummary1"
        runat="server" ShowMessageBox="True" />
</asp:Content>
