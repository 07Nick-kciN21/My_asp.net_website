<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>首頁</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>我是首頁</h1>
            <a href="About.html">關於我</a>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/About.html">關於我</asp:HyperLink>
            <br />
            <asp:Button ID="Button1" runat="server" Text="關於我" OnClick="Button1_Click" />
            <br />
            <a href="Login2.aspx">登入頁面</a>
            <br />
        </div>
        <fieldset>
            <legend>公告欄</legend>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:testConnectionString %>" SelectCommand="SELECT [標題], [內容], [發佈人], [發佈日期] FROM [公告]"></asp:SqlDataSource>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="發佈日期" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="標題" HeaderText="標題" SortExpression="標題" />
                    <asp:BoundField DataField="內容" HeaderText="內容" SortExpression="內容" />
                    <asp:BoundField DataField="發佈人" HeaderText="發佈人" SortExpression="發佈人" />
                    <asp:BoundField DataField="發佈日期" HeaderText="發佈日期" ReadOnly="True" SortExpression="發佈日期" />
                </Columns>
            </asp:GridView>

        </fieldset>
    </form>
    </body>
</html>
