<%@ page language="C#" autoeventwireup="true" inherits="Maestros_PopUp, App_Web_i2t0mwo5" theme="Default" %>

<%@ Register Assembly="Anthem" Namespace="Anthem" TagPrefix="anthem" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Archivos</title>
    <link href="../Css/stylesfonafe.css" rel="stylesheet" type="text/css" />

    <script language="javascript" type="text/javascript">
        function onClose() {
            window.close();
        }
    </script>

</head>
<body>
    <form id="form1" runat="server">
    <div style="background: #5D7B9D">
        <anthem:Panel ID="pnl_Archivo" runat="server" BackColor="#5D7B9D" Width="413px">
            <asp:Button ID="btn_Aceptar" runat="server" Text="Aceptar" Width="70px" />
            <asp:Button ID="btn_Cancelar" runat="server" Text="Cancelar" Width="70px" />
            <br />
            <br />
            <table style="width: 100%">
                <tr>
                    <td colspan="2">
                    </td>
                </tr>
                <tr>
                    <td style="font-weight: bold; font-size: x-small; width: 96px; color: white; font-family: Arial;
                        height: 15px; background-color: cadetblue" align="left" colspan="2">
                        <anthem:Label ID="Label13" runat="server" Width="128px" Text="ARCHIVOS"></anthem:Label>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: x-small; color: white; font-family: Arial; width: 169px;" align="left">
                        <anthem:Label ID="Label14" runat="server" Width="95px" Text="Codigo :" ForeColor="White"></anthem:Label>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TextBox1" runat="server" Width="225px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: x-small; color: white; font-family: Arial; height: 23px; width: 169px;"
                        align="left">
                        <anthem:Label ID="Label15" runat="server" Width="95px" Text="Descripcion :" ForeColor="White"></anthem:Label>
                    </td>
                    <td align="left">
                        <asp:TextBox ID="TextBox2" runat="server" Width="225px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: x-small; color: white; font-family: Arial; height: 23px; width: 169px;"
                        align="left">
                        <anthem:Label ID="Label18" runat="server" Width="95px" Text="Ruta :" ForeColor="White"></anthem:Label>
                    </td>
                    <td align="left">
                        <input id="File1" style="width: 226px" type="file" />
                    </td>
                </tr>
                <tr>
                    <td style="font-size: x-small; color: white; font-family: Arial; height: 23px; width: 169px;"
                        align="left">
                        <anthem:Label ID="Label17" runat="server" Width="95px" Text="Nombre Archivo :" ForeColor="White"></anthem:Label>
                    </td>
                    <td align="left" style="height: 23px">
                        <asp:TextBox ID="TextBox4" runat="server" Width="225px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 169px">
                    </td>
                </tr>
            </table>
        </anthem:Panel>
    </div>
    </form>
</body>
</html>
