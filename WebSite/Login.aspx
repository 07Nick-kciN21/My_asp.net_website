<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script>
        function idCheck() {
            var id = document.getElementById("TextBox1").value;
            var password = document.getElementById("TextBox2").value;

            if (id == "") {
                alert("帳號不可為空白!");
                return false;
            }
            if (password == "") {
                alert("密碼不可為空白!");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <fieldset style="width:140px;background-color:aliceblue;">
            <legend>會員登入</legend>
            <div>
                <span>帳號：</span>
                <asp:TextBox ID="TextBox1" runat="server" Width="80"></asp:TextBox>
            </div>
            <div style="margin-top:5px;">
                <span>密碼：</span>
                <asp:TextBox ID="TextBox2" runat="server" Width="80" TextMode="Password"></asp:TextBox>
            </div>
            <div style="margin-top:5px; text-align:right;">
                <asp:Button ID="Button1" runat="server" Text="登入" OnClick="Button1_Click" OnClientClick="return idCheck();" />
                <%--<input type="button" runat="server" value="登入" onclick="" onserverclick="" />--%>
            </div>
        </fieldset>
        <asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="false"></asp:Label>
    </form>
</body>
</html>
