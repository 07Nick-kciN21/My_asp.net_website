<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Member.aspx.cs" Inherits="Member" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Welcome to Member Page</h1>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="登出" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="新增公告" OnClick="Button2_Click" />
            <a href="news.aspx">公告欄</a>
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="MemberView.aspx?id={0}" Text="選取" HeaderText="select" Visible="False"></asp:HyperLinkField>
                    <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="MemberView.aspx?id={0}&amp;mode=1" Text="新增" HeaderText="新增"></asp:HyperLinkField>
                    <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="MemberView.aspx?id={0}&amp;mode=2" Text="編輯" HeaderText="編輯"></asp:HyperLinkField>
                    <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id"></asp:BoundField>
                    <asp:BoundField DataField="password" HeaderText="password" SortExpression="password"></asp:BoundField>
                    <asp:TemplateField HeaderText="personal_id" SortExpression="personal_id">
                        <EditItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("personal_id").ToString() %>'></asp:Label>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("personal_id").ToString().Substring(0,3) + "***"%>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name"></asp:BoundField>

                    <asp:TemplateField HeaderText="sex" SortExpression="sex">
                        <EditItemTemplate>
                            <asp:CheckBox runat="server" Checked='<%# Bind("sex") %>' ID="CheckBox1"></asp:CheckBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# bool.Parse(Eval("sex").ToString()) ? "男" : "女"  %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="birthday" SortExpression="birthday">
                        <EditItemTemplate>
                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("sex") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("birthday", "{0:yyyy年MM月dd日}") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address"></asp:BoundField>
                    <asp:BoundField DataField="role" HeaderText="role" SortExpression="role"></asp:BoundField>
                </Columns>

                <FooterStyle BackColor="#FFFFCC" ForeColor="#330099"></FooterStyle>

                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#FFFFCC" ForeColor="#330099"></PagerStyle>

                <RowStyle BackColor="White" ForeColor="#330099"></RowStyle>

                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399"></SelectedRowStyle>
                
                <SortedAscendingCellStyle BackColor="#FEFCEB"></SortedAscendingCellStyle>

                <SortedAscendingHeaderStyle BackColor="#AF0101"></SortedAscendingHeaderStyle>

                <SortedDescendingCellStyle BackColor="#F6F0C0"></SortedDescendingCellStyle>

                <SortedDescendingHeaderStyle BackColor="#7E0000"></SortedDescendingHeaderStyle>
            </asp:GridView>
        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:testConnectionString %>' SelectCommand="SELECT * FROM [Member]" OldValuesParameterFormatString="original_{0}">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:testConnectionString %>' SelectCommand="SELECT * FROM [Member] WHERE ([id] = @id)" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Member] WHERE [id] = @original_id AND [password] = @original_password AND [personal_id] = @original_personal_id AND [name] = @original_name AND [sex] = @original_sex AND [birthday] = @original_birthday AND [phone] = @original_phone AND [address] = @original_address AND [role] = @original_role" InsertCommand="INSERT INTO [Member] ([id], [password], [personal_id], [name], [sex], [birthday], [phone], [address], [role]) VALUES (@id, @password, @personal_id, @name, @sex, @birthday, @phone, @address, @role)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Member] SET [password] = @password, [personal_id] = @personal_id, [name] = @name, [sex] = @sex, [birthday] = @birthday, [phone] = @phone, [address] = @address, [role] = @role WHERE [id] = @original_id AND [password] = @original_password AND [personal_id] = @original_personal_id AND [name] = @original_name AND [sex] = @original_sex AND [birthday] = @original_birthday AND [phone] = @original_phone AND [address] = @original_address AND [role] = @original_role">
            <DeleteParameters>
                <asp:Parameter Name="original_id" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_personal_id" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_sex" Type="Boolean"></asp:Parameter>
                <asp:Parameter Name="original_birthday" Type="DateTime"></asp:Parameter>
                <asp:Parameter Name="original_phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_address" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_role" Type="Int32"></asp:Parameter>
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
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="id" Type="String"></asp:ControlParameter>
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="password" Type="String"></asp:Parameter>
                <asp:Parameter Name="personal_id" Type="String"></asp:Parameter>
                <asp:Parameter Name="name" Type="String"></asp:Parameter>
                <asp:Parameter Name="sex" Type="Boolean"></asp:Parameter>
                <asp:Parameter Name="birthday" Type="DateTime"></asp:Parameter>
                <asp:Parameter Name="phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="address" Type="String"></asp:Parameter>
                <asp:Parameter Name="role" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_id" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_password" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_personal_id" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_sex" Type="Boolean"></asp:Parameter>
                <asp:Parameter Name="original_birthday" Type="DateTime"></asp:Parameter>
                <asp:Parameter Name="original_phone" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_address" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_role" Type="Int32"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <div>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="350px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None" OnItemUpdated="DetailsView1_ItemUpdated">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>

                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True"></CommandRowStyle>

                <EditRowStyle BackColor="#999999"></EditRowStyle>

                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True"></FieldHeaderStyle>
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
                    <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
                </Fields>

                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

                <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>
            </asp:DetailsView>
        </div>
    </form>
</body>
</html>
