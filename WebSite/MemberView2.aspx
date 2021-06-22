<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberView2.aspx.cs" Inherits="MemberView2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        #customers {
            font-family: Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

            #customers td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #customers tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            #customers tr:hover {
                background-color: #ddd;
            }

            #customers th {
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: #4CAF50;
                color: white;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:testConnectionString %>' SelectCommand="SELECT [name], [birthday] FROM [Member]"></asp:SqlDataSource>
        <div>
            <table>
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal">
                    <AlternatingItemStyle BackColor="#F7F7F7"></AlternatingItemStyle>

                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C"></FooterStyle>

                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7"></HeaderStyle>

                    <ItemStyle BackColor="#E7E7FF" ForeColor="#4A3C8C"></ItemStyle>
                    <ItemTemplate>
                        name:
                        <asp:Label Text='<%# Eval("name") %>' runat="server" ID="nameLabel" /><br />
                        birthday:
                        <asp:Label Text='<%# Eval("birthday") %>' runat="server" ID="birthdayLabel" /><br />
                        <br />
                    </ItemTemplate>
                    <SelectedItemStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7"></SelectedItemStyle>
                </asp:DataList>
            </table>
        </div>
        <div>
            <table id="customers">
                <tr>
                    <th>
                        <asp:Label ID="Label3" runat="server" Text="姓名"></asp:Label>
                    </th>
                    <th>
                        <asp:Label ID="Label4" runat="server" Text="生日"></asp:Label>
                    </th>
                </tr>
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <tr>
                            <td>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("name") %>'></asp:Label>
                            </td>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("birthday") %>'></asp:Label>
                            </td>
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
            </table>
        </div>
    </form>
</body>
</html>
