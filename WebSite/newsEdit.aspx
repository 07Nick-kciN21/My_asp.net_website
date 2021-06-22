<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newsEdit.aspx.cs" Inherits="newsEdit" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
    <title></title>
    <style>
        table {
            margin: 0 auto;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="1">
                <tr>
                    <td>id</td>
                    <td>
                        <asp:Label ID="Label0" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td class="auto-style1">title</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="TextBox1" runat="server" Width="504px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>contents</td>
                    <td>
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Height="203px" Width="510px"></asp:TextBox>
                        <script>
                            CKEDITOR.replace('TextBox2');
                            CKEDITOR.config.htmlEncodeOutput = true;
                        </script>
                    </td>
                </tr>
                <tr>
                    <td>date</td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>count</td>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label></td>
                </tr>
                <tr>
                    <td>user name</td>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Send" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
