<%@ page language="C#" masterpagefile="~/MasterPages/logon.master" autoeventwireup="true" inherits="NuevoUsuario_Form, App_Web_fpnsx0ay" title="Nuevo Usuario" theme="Default" %>
    
<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 530px">        
        <tr>
            <td style="width: 95px; height: 16px">
            </td>
            <td colspan="2" style="height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 16px">
            </td>
            <td style="width: 132px; height: 16px">
            </td>
            <td style="width: 132px; height: 16px">
            </td>
            <td style="width: 100px; height: 16px">
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 28px">
            </td>
            <td class="smalltextgrey" colspan="2" style="height: 28px; background-color: gainsboro;
                text-align: center">
                <strong>Detalle del Usuario</strong>
            </td>
            <td style="width: 100px; height: 28px">
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 10px">
            </td>
            <td style="width: 132px; height: 16px; text-align: right">
            </td>
            <td style="width: 132px; height: 16px; text-align: right">
            </td>
            <td style="width: 100px; height: 10px">
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 24px">
            </td>
            <td style="width: 132px; height: 16px; text-align: left">
                <anthem:Label ID="Label5" runat="server"  Text="Usuario :" Width="66px"></anthem:Label>
            </td>
            <td style="width: 132px; height: 16px; text-align: left">
                <anthem:TextBox ID="txtUsuario" runat="server" ></anthem:TextBox>
                <anthem:RequiredFieldValidator ID="rfv1" runat="server" ControlToValidate="txtUsuario"
                    Display="None" ErrorMessage="Ingrese Usuario"></anthem:RequiredFieldValidator>
            </td>
            <td style="width: 100px; height: 24px">
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 24px">
            </td>
            <td style="width: 132px; height: 16px; text-align: left">
                <anthem:Label ID="Label6" runat="server"  Text="Nombre Completo :"
                    Width="121px"></anthem:Label>
            </td>
            <td style="width: 132px; height: 16px; text-align: left">
                <anthem:TextBox ID="txtNombreCompleto" runat="server"  Width="178px"></anthem:TextBox>
                <anthem:RequiredFieldValidator ID="rfv2" runat="server" ControlToValidate="txtNombreCompleto"
                    Display="None" ErrorMessage="Ingrese Nombre Completo"></anthem:RequiredFieldValidator>
            </td>
            <td style="width: 100px; height: 24px">
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 24px">
            </td>
            <td style="width: 132px; height: 16px; text-align: left">
                <anthem:Label ID="Label1" runat="server"  Text="Password :" Width="88px"></anthem:Label>
            </td>
            <td style="width: 132px; height: 16px; text-align: left">
                <anthem:TextBox ID="txtPassword" runat="server"  Width="115px"></anthem:TextBox>
                <anthem:RequiredFieldValidator ID="rfv3" runat="server" ControlToValidate="txtPassword"
                    Display="None" ErrorMessage="Ingrese password"></anthem:RequiredFieldValidator>
            </td>
            <td style="width: 100px; height: 24px">
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 24px">
            </td>
            <td style="width: 132px; height: 16px; text-align: left">
                <anthem:Label ID="Label7" runat="server"  Text="Perfil :" Width="58px"></anthem:Label>
            </td>
            <td style="width: 132px; height: 16px; text-align: left">
                <anthem:DropDownList ID="ddlRol" runat="server" AutoCallBack=true  
                    Width="182px" onselectedindexchanged="ddlRol_SelectedIndexChanged">
                </anthem:DropDownList>
                <anthem:RequiredFieldValidator ID="rfv4" runat="server" ControlToValidate="ddlRol"
                    Display="None" ErrorMessage="Seleccione perfil"></anthem:RequiredFieldValidator>
            </td>
            <td style="width: 100px; height: 24px">
            </td>
        </tr>
        
        
        <tr>
            <td style="width: 95px; height: 24px">
            </td>
            <td style="width: 132px; height: 16px; text-align: left">
                <anthem:Label ID="Label3" runat="server"  Text="Archivo :" Width="58px"></anthem:Label>
            </td>
            <td style="width: 132px; height: 16px; text-align: left">
                <anthem:DropDownList ID="ddlArchivo" runat="server"  Width="182px">
                </anthem:DropDownList>
                <anthem:RequiredFieldValidator ID="rfvArchivo" runat="server" ControlToValidate="ddlArchivo"
                    Display="None" ErrorMessage="Seleccione archivo"></anthem:RequiredFieldValidator>
            </td>
            <td style="width: 100px; height: 24px">
            </td>
        </tr>
        
        
        <tr>
            <td style="width: 95px; height: 25px">
            </td>
            <td style="width: 132px; height: 25px; text-align: left">
                <anthem:Label ID="Label8" runat="server"  Text="Area :" Width="54px"></anthem:Label>
            </td>
            <td style="width: 132px; height: 25px; text-align: left">
                <anthem:DropDownList ID="ddlArea" runat="server"  Width="182px">
                </anthem:DropDownList>
                <anthem:RequiredFieldValidator ID="rfv5" runat="server" ControlToValidate="ddlArea"
                    Display="None" ErrorMessage="Seleccione area"></anthem:RequiredFieldValidator>
            </td>
            <td style="width: 100px; height: 25px">
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 25px">
            </td>
            <td style="width: 132px; height: 25px; text-align: left">
                <anthem:Label ID="Label2" runat="server"  Text="Email :" Width="59px"></anthem:Label>
            </td>
            <td style="width: 132px; height: 25px; text-align: left">
                <anthem:TextBox ID="txtMail" runat="server"  Width="178px"></anthem:TextBox>
                <anthem:RequiredFieldValidator ID="rfv6" runat="server" ControlToValidate="txtMail"
                    Display="None" ErrorMessage="Ingrese e-mail"></anthem:RequiredFieldValidator>
            </td>
            <td style="width: 100px; height: 25px">
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 25px">
            </td>
            <td style="width: 132px; height: 25px; text-align: left">
                <anthem:Label ID="Label9" runat="server"  Text="Active Directory :"
                    Width="110px"></anthem:Label>
            </td>
            <td style="width: 132px; height: 25px; text-align: left">
                <anthem:TextBox ID="txtActiveDirectory" runat="server"  Width="178px"></anthem:TextBox>
                <anthem:RequiredFieldValidator ID="rfv9" runat="server" ControlToValidate="txtActiveDirectory"
                    Display="None" ErrorMessage="Ingrese active directory"></anthem:RequiredFieldValidator>
            </td>
            <td style="width: 100px; height: 25px">
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 19px">
            </td>
            <td style="width: 132px; height: 16px; text-align: left">
                <anthem:Label ID="Label10" runat="server"  Text="Activo :" Width="55px"></anthem:Label>
            </td>
            <td style="width: 132px; height: 16px; text-align: left" align="right">
                <anthem:RadioButtonList ID="rbtlActivo" runat="server"  RepeatDirection="Horizontal">
                    <asp:ListItem Selected="True">Si</asp:ListItem>
                    <asp:ListItem>No</asp:ListItem>
                </anthem:RadioButtonList>
            </td>
            <td style="width: 100px; height: 19px">
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 19px">
            </td>
            <td colspan="2" style="height: 19px">
                &nbsp;
                <anthem:Button ID="Button4" runat="server"  Text="Actualizar Datos"
                    Width="113px" OnClick="Button4_Click" />
                <anthem:Button ID="Button2" runat="server"  CausesValidation="false"
                    Text="Regresar" Width="119px" OnClick="Button2_Click" />
            </td>
            <td style="width: 100px; height: 19px">
            </td>
        </tr>
        <tr>
            <td style="width: 95px; height: 19px">
            </td>
            <td colspan="2" style="height: 19px">
            </td>
            <td style="width: 100px; height: 19px">
            </td>
        </tr>
        <tr>
            <td colspan="4" style="height: 19px">
                &nbsp;
                <anthem:ValidationSummary DisplayMode="List" ShowSummary="false" ID="ValidationSummary1"
                    runat="server" ShowMessageBox="True" />
            </td>
        </tr>
    </table>
</asp:Content>
