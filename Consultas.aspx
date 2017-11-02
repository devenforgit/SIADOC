<%@ page language="VB" masterpagefile="~/MasterPages/Logon.master" autoeventwireup="false" inherits="Consultas, App_Web_bee0nnud" title="Consulta" theme="Default" %>

<%@ MasterType VirtualPath="~/MasterPages/Logon.master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table border="0" cellpadding="0" cellspacing="0" style="width: 96%; height: 100%">
        <tr>
            <td colspan="2" style="height: 67px">
                <table border="0" cellpadding="0" cellspacing="0" style="width: 100%; height: 85%">
                    <tr>
                        <td style="width: 690px; height: 549px; background-color: #5d7b9d;" valign="top">
                            <br />
                            <table style="width: 80%">
                                <tr>
                                    <td style="font-weight: bold; font-size: x-small; width: 96px; color: white; font-family: Arial;
                                        height: 15px" align="center">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; font-size: x-small; width: 96px; color: white; font-family: Arial;
                                        height: 15px; background-color: cadetblue;" align="center">
                                        <asp:Label ID="Label8" runat="server" Text="PERIODO DE TIEMPO" Width="128px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" style="font-size: x-small; width: 96px; color: white; font-family: Arial;
                                        height: 52px;">
                                        <asp:Label ID="Label10" runat="server" ForeColor="White" Text="Fecha Inicio :" Width="72px"></asp:Label>
                                        <asp:TextBox ID="TextBox5" runat="server" Width="72px"></asp:TextBox>
                                        <img src="../Img/calendar.png" />
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" style="font-size: x-small; width: 96px; color: white; font-family: Arial;
                                        height: 23px">
                                        <asp:Label ID="Label11" runat="server" ForeColor="White" Text="Fecha Final :" Width="72px"></asp:Label>
                                        <asp:TextBox ID="TextBox6" runat="server" Width="72px"></asp:TextBox>
                                        <img src="../Img/calendar.png" />
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: x-small; width: 96px; color: dimgray; font-family: Arial; height: 24px;"
                                        align="center">
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-weight: bold; font-size: x-small; width: 96px; color: white; font-family: Arial;
                                        height: 17px; background-color: cadetblue;" align="center">
                                        <asp:Label ID="Label9" runat="server" Text="CRITERIOS DE CONSULTA" Width="144px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" style="font-size: x-small; width: 96px; color: dimgray; font-family: Arial;
                                        height: 26px;">
                                        <asp:Label ID="Label2" runat="server" ForeColor="White" Text="Tipo de Documento :"
                                            Width="112px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="font-weight: bold; font-size: x-small; width: 96px; color: dimgray;
                                        font-family: Arial; height: 35px;" valign="top">
                                        <asp:DropDownList ID="DropDownList1" runat="server" Font-Size="X-Small" Width="152px">
                                            <asp:ListItem>ACTA</asp:ListItem>
                                            <asp:ListItem>OFICIO</asp:ListItem>
                                            <asp:ListItem>MEMO</asp:ListItem>
                                            <asp:ListItem>INFORME</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" style="font-size: x-small; width: 96px; color: dimgray; font-family: Arial;
                                        height: 16px;">
                                        <asp:Label ID="Label3" runat="server" Text="Area del Documento :" Width="120px" ForeColor="White"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="font-weight: bold; font-size: x-small; width: 96px; color: dimgray;
                                        font-family: Arial; height: 33px;" valign="top">
                                        <asp:DropDownList ID="DropDownList2" runat="server" Font-Size="X-Small" Width="152px">
                                            <asp:ListItem>DIRECCION EJECUTIVA</asp:ListItem>
                                            <asp:ListItem>LEGAL</asp:ListItem>
                                            <asp:ListItem>PLANEAMIENTO</asp:ListItem>
                                            <asp:ListItem>OPERACIONES</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" style="font-weight: bold; font-size: x-small; width: 96px; color: dimgray;
                                        font-family: Arial; height: 11px" valign="top">
                                        <asp:Label ID="Label12" runat="server" ForeColor="White" Text="Tema :" Width="64px"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="font-weight: bold; font-size: x-small; width: 96px; color: dimgray;
                                        font-family: Arial; height: 30px" valign="top">
                                        <asp:DropDownList ID="DropDownList3" runat="server" Font-Size="X-Small" Width="152px">
                                            <asp:ListItem>COMPENSACION</asp:ListItem>
                                            <asp:ListItem>DIRECTORES</asp:ListItem>
                                            <asp:ListItem>EMPRESAS ELECTRICAS</asp:ListItem>
                                            <asp:ListItem>PRESUPUESTO</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" style="font-size: x-small; width: 96px; color: dimgray; font-family: Arial;
                                        height: 14px;">
                                        <asp:Label ID="Label4" runat="server" Text="Número :" Width="64px" ForeColor="White"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: x-small; width: 96px; color: dimgray; font-family: Arial; height: 31px;"
                                        align="center" valign="top">
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" style="font-size: x-small; width: 96px; color: dimgray; font-family: Arial;
                                        height: 15px;">
                                        <asp:Label ID="Label7" runat="server" Text="Emisor :" Width="56px" ForeColor="White"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: x-small; width: 96px; color: dimgray; font-family: Arial; height: 33px;"
                                        align="center" valign="top">
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" style="font-weight: bold; font-size: x-small; width: 96px; color: dimgray;
                                        font-family: Arial; height: 13px;" valign="top">
                                        <asp:Label ID="Label5" runat="server" Text="Palabras Clave :" Width="88px" ForeColor="White"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: x-small; width: 96px; color: dimgray; font-family: Arial; height: 95px;"
                                        align="center" valign="top">
                                        <asp:TextBox ID="TextBox1" runat="server" Height="72px" TextMode="MultiLine" Width="152px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" style="font-weight: bold; font-size: x-small; width: 96px; color: dimgray;
                                        font-family: Arial; height: 16px;" valign="top">
                                        <asp:Label ID="Label6" runat="server" Text="Destinatario :" Width="128px" ForeColor="White"></asp:Label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" style="font-weight: bold; font-size: x-small; width: 96px; color: dimgray;
                                        font-family: Arial; height: 32px" valign="top">
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" style="font-size: x-small; width: 96px; color: dimgray; font-family: Arial;
                                        height: 24px">
                                        <asp:Button ID="Button1" runat="server" Text="Consultar" Width="88px" />
                                    </td>
                                </tr>
                            </table>
                            <br />
                            <br />
                        </td>
                        <td style="height: 549px; width: 784px;" valign="top">
                            <table style="width: 52%; height: 41%">
                                <tr>
                                    <td style="width: 100px" valign="top">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                                            DataKeyNames="IdDoc" DataSourceID="SqlDataSource1" Font-Names="Tahoma" Font-Size="8pt"
                                            ForeColor="#333333" GridLines="None" Width="568px">
                                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <Columns>
                                                <asp:CommandField DeleteText="Ir favoritos" ShowDeleteButton="True" />
                                                <asp:BoundField DataField="IdDoc" HeaderText="IdDoc" ReadOnly="True" SortExpression="IdDoc" />
                                                <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                                                <asp:BoundField DataField="NUMERO" HeaderText="NUMERO" SortExpression="NUMERO" />
                                                <asp:BoundField DataField="AREA" HeaderText="AREA" SortExpression="AREA" />
                                                <asp:BoundField DataField="TITULO - SUMILLA" HeaderText="TITULO - SUMILLA" SortExpression="TITULO - SUMILLA" />
                                                <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" />
                                                <asp:BoundField DataField="EMISOR" HeaderText="EMISOR" SortExpression="EMISOR" />
                                                <asp:ButtonField ButtonType="Image" ImageUrl="~/Img/zoom_in_16x16.gif" Text="Ver Detalle" />
                                                <asp:ButtonField ButtonType="Image" ImageUrl="~/Img/last_16x16.gif" Text="Descargar documento" />
                                            </Columns>
                                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                            <EditRowStyle BackColor="#999999" />
                                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                        </asp:GridView>
                                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SCGDEConnectionString %>"
                                            SelectCommand="SELECT Indices.IdDocumento As IdDoc, TipoDocumento.Descripcion AS TIPO, Indices.Numero AS NUMERO, Areas.Descripcion AS AREA, Indices.Titulo As [TITULO - SUMILLA], Indices.Fecha AS FECHA, Indices.Emisor AS EMISOR FROM Indices INNER JOIN Areas ON Indices.IdArea = Areas.IdArea INNER JOIN TipoDocumento ON Indices.IdTipo = TipoDocumento.IdTipo">
                                        </asp:SqlDataSource>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 100px; height: 15px" align="right">
                                        <asp:Button ID="Button2" runat="server" Text="Imprimir" Width="96px" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2" style="height: 43px">
                        </td>
                    </tr>
                </table>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan="2" style="height: 104px">
            </td>
        </tr>
    </table>
</asp:Content>
