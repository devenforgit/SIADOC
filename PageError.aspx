<%@ page language="C#" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="true" inherits="PageError, App_Web_dayjhwkx" title="Untitled Page" theme="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Names="red" ForeColor="Red" Text="Ud. no tiene permiso para acceder a la pagina solicitada <br> Contacte  al administrador del sistema o vuelva a ingresar"></asp:Label>
    <br />
    <asp:LinkButton ID="lbtn_CerrarSesion" OnClick="lbtn_CerrarSesion_Click" runat="server">Ingresar al sistema</asp:LinkButton>
</asp:Content>
