<%@ Page Language="C#" AutoEventWireup="true" CodeFile="newview.aspx.cs" Inherits="newview" Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="https://cdn.ckeditor.com/4.16.0/standard/ckeditor.js"></script>
    <title></title>
    <style>
        .center {
            margin: 0 auto;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:testConnectionString %>' SelectCommand="SELECT * FROM [News] WHERE ([Id] = @Id)" InsertCommand="INSERT INTO [News] ([Id], [Title], [Content], [Count], [Date], [Username]) VALUES (@Id, @Title, @Content, @Count, @Date, @Username)" OldValuesParameterFormatString="original_{0}" DeleteCommand="DELETE FROM [News] WHERE [Id] = @original_Id" UpdateCommand="UPDATE [News] SET [Title] = @Title, [Content] = @Content, [Count] = @Count, [Date] = @Date, [Username] = @Username WHERE [Id] = @original_Id">
                <DeleteParameters>
                    <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Content" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Count" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Date" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="Username" Type="String"></asp:Parameter>
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter QueryStringField="id" Name="Id" Type="Int32"></asp:QueryStringParameter>
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Content" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Count" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="Date" Type="DateTime"></asp:Parameter>
                    <asp:Parameter Name="Username" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:DetailsView ID="DetailsView1" runat="server" Width="50%" CssClass="center" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnItemUpdating="DetailsView1_ItemUpdating" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White"></EditRowStyle>
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" ReadOnly="True" SortExpression="Id"></asp:BoundField>
                    <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title"></asp:BoundField>
                    <asp:TemplateField HeaderText="Content" SortExpression="Content">
                        <EditItemTemplate>
                            <asp:TextBox runat="server" Text='<%#   Server.HtmlDecode(Eval("Content").ToString())  %>' ID="TextBox1" TextMode="MultiLine"></asp:TextBox>
                            <script>
                                CKEDITOR.replace('DetailsView1$TextBox1');
                                CKEDITOR.config.htmlEncodeOutput = true;
                            </script>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:TextBox runat="server" Text='<%# Bind("Content") %>' ID="TextBox1"></asp:TextBox>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:Label runat="server" Text='<%# Server.HtmlDecode(Eval("Content").ToString()) %>' ID="Label1"></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="Count" HeaderText="Count" SortExpression="Count"></asp:BoundField>
                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date"></asp:BoundField>
                    <asp:BoundField DataField="Username" HeaderText="Username" SortExpression="Username"></asp:BoundField>
                    <asp:TemplateField ShowHeader="False">
                        <EditItemTemplate>
                            <asp:LinkButton runat="server" Text="更新" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;
                            <asp:LinkButton runat="server" Text="取消" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <asp:LinkButton runat="server" Text="插入" CommandName="Insert" CausesValidation="True" ID="LinkButton1"></asp:LinkButton>&nbsp;
                            <asp:LinkButton runat="server" Text="取消" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <asp:LinkButton runat="server" Text="編輯" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:LinkButton>&nbsp;
                            <asp:LinkButton runat="server" Text="新增" CommandName="New" CausesValidation="False" ID="LinkButton2"></asp:LinkButton>&nbsp;
                            <asp:LinkButton runat="server" Text="刪除" CommandName="Delete" CausesValidation="False" ID="LinkButton3"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Fields>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510"></FooterStyle>

                <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White"></HeaderStyle>

                <PagerStyle HorizontalAlign="Center" ForeColor="#8C4510"></PagerStyle>

                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510"></RowStyle>
            </asp:DetailsView>
            <a href="news.aspx">返回</a>
            <br />
            <a href="Login2.aspx">login</a>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:testConnectionString %>' UpdateCommand="UPDATE [News] SET [Count] = [Count]+1 WHERE [Id] = @Id">
                <UpdateParameters>
                    <asp:QueryStringParameter QueryStringField="id" Name="Id" Type="Int32"></asp:QueryStringParameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
