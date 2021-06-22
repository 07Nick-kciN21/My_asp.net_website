<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calculator.aspx.cs" Inherits="Calculator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script>
        function add() {
            var a = document.getElementById("TextBox1").value;
            var b = document.getElementById("TextBox2").value;
            document.getElementById("TextBox3").value = parseInt(a) + parseInt(b);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div>
                <asp:Label ID="Label1" runat="server" Text="A:" Width="30"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </div>
            <div style="margin-top:10px;">
                <asp:Label ID="Label2" runat="server" Text="B:" Width="30"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </div>
            <div style="margin-top:10px;">
                <asp:Label ID="Label3" runat="server" Text="Ans:" Width="30"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </div>
            <div style="margin-top:10px;">
                <asp:Button ID="Button1" runat="server" Text="Add (Server)" OnClick="Button1_Click" />
                <input type="button" value="Add (Client)" onclick="add();" />
            </div>
        </div>
    </form>
</body>
</html>
