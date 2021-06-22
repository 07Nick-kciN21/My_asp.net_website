<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MemberView.aspx.cs" Inherits="MemberView" Debug="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label1" runat="server" Text="Mode："></asp:Label>
        <asp:Label ID="Label2" runat="server" Text="-1"></asp:Label>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="16px" Width="125px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" >
            <AlternatingRowStyle BackColor="#F7F7F7"></AlternatingRowStyle>
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7"></EditRowStyle>
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id"></asp:BoundField>
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
                <asp:BoundField DataField="personal_id" HeaderText="personal_id" SortExpression="personal_id"></asp:BoundField>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>
                <asp:CheckBoxField DataField="sex" HeaderText="sex" SortExpression="sex"></asp:CheckBoxField>
                <asp:BoundField DataField="birthday" HeaderText="birthday" SortExpression="birthday"></asp:BoundField>
                <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone"></asp:BoundField>
                <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role"></asp:BoundField>
                <asp:CommandField ShowDeleteButton="True" ShowInsertButton="True" ShowEditButton="True"></asp:CommandField>
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C"></FooterStyle>

            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7"></HeaderStyle>

            <PagerStyle HorizontalAlign="Right" BackColor="#E7E7FF" ForeColor="#4A3C8C"></PagerStyle>

            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C"></RowStyle>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:testConnectionString %>' SelectCommand="SELECT * FROM [Member]" DeleteCommand="DELETE FROM [Member] WHERE [id] = @id" InsertCommand="INSERT INTO [Member] ([id], [password], [personal_id], [name], [sex], [birthday], [phone], [address], [role]) VALUES (@id, @password, @personal_id, @name, @sex, @birthday, @phone, @address, @role)" UpdateCommand="UPDATE [Member] SET [password] = @password, [personal_id] = @personal_id, [name] = @name, [sex] = @sex, [birthday] = @birthday, [phone] = @phone, [address] = @address, [role] = @role WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="String"></asp:Parameter>
                <asp:Parameter Name="password" Type="String"></asp:Parameter>
                <asp:Parameter Name="personal_id" Type="String"></asp:Parameter>
                <asp:Parameter Name="name" Type="String"></asp:Parameter>
                <asp:Parameter Name="sex" Type="Boolean"></asp:Parameter>
                <asp:Parameter Name="birthday" Type="DateTime"></asp:Parameter>
                <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="address" Type="String"></asp:Parameter>
                <asp:Parameter Name="role" Type="Int32"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="password" Type="String"></asp:Parameter>
                <asp:Parameter Name="personal_id" Type="String"></asp:Parameter>
                <asp:Parameter Name="name" Type="String"></asp:Parameter>
                <asp:Parameter Name="sex" Type="Boolean"></asp:Parameter>
                <asp:Parameter Name="birthday" Type="DateTime"></asp:Parameter>
                <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="address" Type="String"></asp:Parameter>
                <asp:Parameter Name="role" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="id" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="返回" />
    </form>
</body>
</html>
