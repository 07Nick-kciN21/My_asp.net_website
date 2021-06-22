<%@ Page Language="C#" AutoEventWireup="true" CodeFile="新增公告.aspx.cs" Inherits="新增公告" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="標題"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:label ID="Label2" runat="server" Text="內容"> </asp:label>
            <br />
            <asp:TextBox ID="TextBox2" runat="server" Height="256px" Width="407px"></asp:TextBox>
        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="發佈" OnClick="Button1_Click" />
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:testConnectionString %>' SelectCommand="SELECT * FROM [公告]"></asp:SqlDataSource>
    </form>
</body>
</html>
