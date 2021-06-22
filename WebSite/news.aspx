<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        .center {
            margin: 0 auto;
        }
    </style>
</head>
<body style="width: 100%;">

    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="id" Width="50%" CssClass="center">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" ReadOnly="True"></asp:BoundField>
                    <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="newview.aspx?id={0}" HeaderText="Title" SortExpression="Title" DataTextField="Title"></asp:HyperLinkField>
                    <asp:BoundField DataField="Count" HeaderText="Count" SortExpression="Count"></asp:BoundField>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date"></asp:BoundField>
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:testConnectionString %>' SelectCommand="SELECT * FROM [News]"></asp:SqlDataSource>
            <a href="Login2.aspx">返回</a>
            <br />
            <a href="Login2.aspx">login</a>
        </div>
    </form>
</body>
</html>
