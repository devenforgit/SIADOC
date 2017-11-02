<%@ page language="C#" autoeventwireup="true" inherits="login, App_Web_dayjhwkx" theme="Default" %>
<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Login</title>
    <link href="Css/sad.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            width: 100px;
            height: 15px;
        }
        .style2
        {
            height: 26px;
        }
        .style3
        {
            height: 99px;
        }
        .style4
        {
            height: 44px;
        }
        .style5
        {
            height: 28px;
        }
        .style6
        {
            height: 22px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 609px">
            <tr>
                <td colspan="1" style="height: 73px; text-align: center;" align="center">
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Img/FonafeLogo.jpg" />
                    &nbsp; 
                    <asp:Label ID="Label1" runat="server" CssClass="smalltextbold" Font-Bold="True" ForeColor="#FF8000"
                        Text="SIADOC"></asp:Label>
                    &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp;&nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="1" class="style5" valign="bottom">
                    <hr />
                </td>
            </tr>
            <tr>
                <td colspan="1" class="style3" valign="bottom">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="1" class="style4">
                    <asp:Label ID="Label7" runat="server" CssClass="smalltext" 
                        Text="Bienvenidos al Sistema de Administracion Documental - SIADOC"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="center" style="height: 114px" valign="middle">
                    &nbsp;<div style="text-align: center">
                        <table border="0" cellpadding="0" cellspacing="0" style="width: 316px; height: 168px;">
                            <tr>
                                <td class="style2" colspan="4" bgcolor="#747474">
                                    <asp:Label ID="Label6" runat="server" CssClass="smalltext" Font-Bold="True" ForeColor="White"
                                        Text="Acceso al Sistema"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td style="background-color: gainsboro;" class="style1">
                                </td>
                                <td style="background-color: gainsboro;" class="style1">
                                </td>
                                <td style="background-color: gainsboro;" class="style1">
                                </td>
                                <td style="background-color: gainsboro;" class="style1">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 24px; background-color: gainsboro;">
                                </td>
                                <td style="width: 100px; height: 24px; background-color: gainsboro;">
                                    <asp:Label ID="Label2" runat="server" CssClass="smalltextgrey" Text="Correo :" 
                                        Width="77px"></asp:Label>
                                </td>
                                <td style="width: 100px; height: 24px; background-color: gainsboro;">
                                    <asp:TextBox ID="TxtUsuario" runat="server" CssClass="smalltext" Width="100px"></asp:TextBox>
                                </td>
                                <td style="width: 100px; height: 24px; background-color: gainsboro;">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUsuario"
                                        CssClass="smalltext" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 27px; background-color: gainsboro;">
                                </td>
                                <td style="width: 100px; height: 27px; background-color: gainsboro;">
                                    <asp:Label ID="Label3" runat="server" CssClass="smalltextgrey" Text="Password :"
                                        Width="77px"></asp:Label>
                                </td>
                                <td style="width: 100px; height: 27px; background-color: gainsboro;">
                                    <asp:TextBox ID="TxtPassword" runat="server" CssClass="smalltext" TextMode="Password"
                                        Width="100px">demo</asp:TextBox>
                                </td>
                                <td style="width: 100px; height: 27px; background-color: gainsboro;">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPassword"
                                        CssClass="smalltext" ErrorMessage="(*)"></asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 10px; background-color: gainsboro;">
                                </td>
                                <td style="height: 10px; text-align: center; background-color: gainsboro;" class="smalltextblue"
                                    colspan="2">
                                    <asp:LinkButton ID="LinkButton1" CausesValidation="false" runat="server" Visible="true">Enviar contraseña al correo</asp:LinkButton>
                                </td>
                                <td style="width: 100px; height: 10px; background-color: gainsboro;">
                                </td>
                            </tr>
                            <tr>
                                <td style="width: 100px; height: 28px; background-color: gainsboro;">
                                </td>
                                <td style="width: 100px; height: 28px; background-color: gainsboro;">
                                </td>
                                <td style="width: 100px; height: 28px; text-align: right; background-color: gainsboro;">
                                    <asp:Button ID="Button1" runat="server" CssClass="smallbutton" Text="Ingresar" 
                                        Width="73px" onclick="Button1_Click" />
                                </td>
                                <td style="width: 100px; height: 28px; background-color: gainsboro;">
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
            <tr>
                <td align="center" style="height: 75px" valign="middle">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td align="center" valign="middle" class="style6">
                    <hr />
                </td>
            </tr>
            <tr>
                <td align="center" style="height: 75px" valign="top">
                    <asp:Label ID="Label8" runat="server" CssClass="smalltext" 
                        Text="Av. Paseo de la Republica No. 3121 San Isidro - Lima  - Telf. (01) 4404222"></asp:Label>
                </td>
            </tr>
            </table>
    </div>
    </form>
</body>
</html>

