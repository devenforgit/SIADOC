<%@ page language="VB" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="false" inherits="GestionaIndices, App_Web_bee0nnud" title="Untitled Page" theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 100%">
        <tr>
            <td>
                <table style="width: 488px">
                    <tr>
                        <td style="font-size: small; width: 447px; font-family: Verdana; height: 38px; background-color: #5d7b9d;
                            text-align: right">
                            <span style="font-size: 9pt; color: #ffffff">
                                <asp:Label ID="Label10" runat="server" ForeColor="White" Text="Título o Sumilla: "
                                    Width="128px"></asp:Label></span>
                        </td>
                        <td style="width: 1741px; height: 38px; background-color: #ffffff; text-align: left">
                        </td>
                        <td style="width: 1741px; height: 38px; background-color: #ffffff; text-align: left">
                            <asp:TextBox ID="Nombretextbox" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                                ForeColor="Black" Height="40px" Text="" TextMode="MultiLine" Width="216px"></asp:TextBox>
                        </td>
                        <td style="width: 4247px; height: 38px; background-color: #ffffff; text-align: left">
                        </td>
                    </tr>
                    <tr style="font-size: 9pt; color: #ffffff">
                        <td style="font-size: small; width: 447px; font-family: Verdana; height: 18px; background-color: #5d7b9d;
                            text-align: right">
                            <span style="font-size: 12pt; color: #ffffff">
                                <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Numero :" Width="72px"></asp:Label></span>
                        </td>
                        <td style="font-size: 12pt; width: 1741px; height: 18px; background-color: #ffffff;
                            text-align: left">
                        </td>
                        <td style="font-size: 12pt; width: 1741px; height: 18px; background-color: #ffffff;
                            text-align: left">
                            <asp:TextBox ID="usuariotextbox" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                                ForeColor="#000000" Height="18px" Text="" Width="152px"></asp:TextBox><span style="font-size: 9pt">
                                </span>
                        </td>
                        <td style="font-size: 12pt; width: 4247px; height: 18px; background-color: #ffffff;
                            text-align: left">
                            <img src="../Img/card_file.gif" />
                        </td>
                    </tr>
                    <tr style="color: #ffffff">
                        <td style="font-size: small; width: 447px; font-family: Verdana; height: 23px; background-color: #5d7b9d;
                            text-align: right">
                            <span style="font-size: 9pt; color: #ffffff">
                                <asp:Label ID="Label3" runat="server" ForeColor="White" Text="Destinatario :" Width="72px"></asp:Label></span>
                        </td>
                        <td style="width: 1741px; height: 23px; background-color: #ffffff; text-align: left">
                        </td>
                        <td style="width: 1741px; height: 23px; background-color: #ffffff; text-align: left">
                            <asp:TextBox ID="passwordtextbox" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                                ForeColor="#000000" Height="18px" Text="" Width="216px"></asp:TextBox>
                        </td>
                        <td style="width: 4247px; height: 23px; background-color: #ffffff; text-align: left">
                        </td>
                    </tr>
                    <tr style="font-size: 9pt; color: #ffffff">
                        <td style="font-size: small; width: 447px; font-family: Verdana; height: 18px; background-color: #5d7b9d;
                            text-align: right">
                            <span style="color: #ffffff">
                                <asp:Label ID="Label4" runat="server" ForeColor="White" Text="Emisor :" Width="72px"></asp:Label></span>
                        </td>
                        <td style="width: 1741px; height: 14px; background-color: #ffffff; text-align: left">
                        </td>
                        <td style="width: 1741px; height: 14px; background-color: #ffffff; text-align: left">
                            <asp:TextBox ID="emailtextbox" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                                Height="19px" Text="" Width="216px"></asp:TextBox>
                        </td>
                        <td style="width: 4247px; height: 14px; background-color: #ffffff; text-align: left">
                            <img src="../Img/notes.gif" />
                        </td>
                    </tr>
                    <tr style="font-size: 9pt; color: #ffffff">
                        <td style="font-size: small; width: 447px; font-family: Verdana; height: 25px; background-color: #5d7b9d;
                            text-align: right">
                            <span style="color: #ffffff">
                                <asp:Label ID="Label5" runat="server" ForeColor="White" Text="Area :" Width="72px"></asp:Label></span>
                        </td>
                        <td style="width: 1741px; height: 25px; background-color: #ffffff; text-align: left">
                        </td>
                        <td style="width: 1741px; height: 25px; background-color: #ffffff; text-align: left">
                            <asp:DropDownList ID="areacomboBox" runat="server" DataTextField="DESC_AREA" DataValueField="COD_AREA"
                                Font-Names="Verdana" Font-Size="8pt" Width="224px">
                                <asp:ListItem>LEGAL</asp:ListItem>
                                <asp:ListItem>GLC</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 4247px; height: 25px; background-color: #ffffff; text-align: left">
                        </td>
                    </tr>
                    <tr style="color: #ffffff">
                        <td style="font-size: small; width: 447px; font-family: Verdana; height: 14px; background-color: #5d7b9d;
                            text-align: right">
                            <span style="font-size: 9pt; color: #ffffff">
                                <asp:Label ID="Label6" runat="server" ForeColor="White" Text="Tipo de Documento :"
                                    Width="152px"></asp:Label></span>
                        </td>
                        <td style="width: 1741px; height: 14px; background-color: #ffffff; text-align: left">
                        </td>
                        <td style="width: 1741px; height: 14px; background-color: #ffffff; text-align: left">
                            <asp:DropDownList ID="perfiltextbox" runat="server" DataTextField="DESC_PERFIL" DataValueField="COD_PERFIL"
                                Font-Names="Verdana" Font-Size="8pt" Width="224px">
                                <asp:ListItem>Oficio</asp:ListItem>
                                <asp:ListItem>Acta</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="width: 4247px; height: 14px; background-color: #ffffff; text-align: left">
                            <img src="../Img/print_preview.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: small; width: 447px; font-family: Verdana; height: 33px; background-color: #5d7b9d;
                            text-align: right">
                            <span style="font-size: 9pt; color: #ffffff">
                                <asp:Label ID="Label7" runat="server" ForeColor="White" Text="Palabras Clave :" Width="120px"></asp:Label></span>
                        </td>
                        <td style="width: 1741px; height: 33px; background-color: #ffffff; text-align: left">
                        </td>
                        <td style="width: 1741px; height: 33px; background-color: #ffffff; text-align: left">
                            <asp:TextBox ID="TextBox1" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                                ForeColor="#000000" Height="40px" Text="" TextMode="MultiLine" Width="216px"></asp:TextBox>
                        </td>
                        <td style="width: 4247px; height: 33px; background-color: #ffffff; text-align: left">
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: small; width: 447px; font-family: Verdana; height: 9px; background-color: #5d7b9d;
                            text-align: right">
                            <span style="font-size: 9pt; color: #ffffff">
                                <asp:Label ID="Label8" runat="server" ForeColor="White" Text="Fecha del Documento :"
                                    Width="128px"></asp:Label></span>
                        </td>
                        <td style="width: 1741px; height: 9px; background-color: #ffffff; text-align: left">
                        </td>
                        <td style="width: 1741px; height: 9px; background-color: #ffffff; text-align: left">
                            <asp:TextBox ID="TextBox2" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                                ForeColor="#000000" Height="18px" Text="" Width="96px"></asp:TextBox>
                            <img src="../Img/calendar.png" />
                        </td>
                        <td style="width: 4247px; height: 9px; background-color: #ffffff; text-align: left">
                            <img src="../Img/save_as.gif" />
                        </td>
                    </tr>
                    <tr>
                        <td style="font-size: small; width: 447px; font-family: Verdana; height: 18px; background-color: #5d7b9d;
                            text-align: right">
                            <asp:Label ID="Label9" runat="server" ForeColor="White" Text="Archivo :" Width="72px"></asp:Label>
                        </td>
                        <td style="width: 1741px; height: 22px; background-color: #ffffff; text-align: left">
                        </td>
                        <td style="width: 1741px; height: 22px; background-color: #ffffff; text-align: left">
                            <asp:TextBox ID="TextBox3" runat="server" Font-Names="Verdana" Font-Size="XX-Small"
                                ForeColor="#000000" Height="18px" Text="" Width="216px"></asp:TextBox>
                        </td>
                        <td style="width: 4247px; height: 22px; background-color: #ffffff; text-align: left">
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3" style="height: 63px; background-color: #ffffff; text-align: left">
                            <span style="font-size: 9pt; color: #ffffff"></span>
                        </td>
                        <td align="center" colspan="1" style="width: 4247px; height: 63px; background-color: #ffffff;
                            text-align: left">
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 85px">
            </td>
        </tr>
    </table>
</asp:Content>
