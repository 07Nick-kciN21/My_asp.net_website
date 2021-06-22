<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Album.aspx.cs" Inherits="Album" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="width: 1500px;">
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id" GroupItemCount="3" InsertItemPosition="LastItem" OnItemUpdating="ListView1_ItemUpdating" OnItemInserting="ListView1_ItemInserting">
                <AlternatingItemTemplate>
                    <td runat="server" style="background-color: #FAFAD2; color: #284775; vertical-align: top; padding: 10px;">
                        <%--<asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" Visible="false" />--%>
                        <asp:Label Text='<%# Eval("title") %>' runat="server" ID="titleLabel" />
                        <a href='<%# "pictures/" + Eval("path").ToString() %>' download>下載</a><br />
                        <asp:Image ID="Image1" runat="server" Height="240" ImageUrl='<%# "~/pictures/" + Eval("path").ToString() %>' /><br />
                        <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" /><br />
                        <asp:Button runat="server" CommandName="Delete" Text="刪除" ID="DeleteButton" />
                        <asp:Button runat="server" CommandName="Edit" Text="編輯" ID="EditButton" /><br />
                    </td>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <td runat="server" style="background-color: #FFCC66; color: #000080;">Id:
                        <%--<asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" />--%><br />
                        title:
                        <asp:TextBox Text='<%# Bind("title") %>' runat="server" ID="titleTextBox" /><br />
                        description:
                        <asp:TextBox Text='<%# Bind("description") %>' TextMode="MultiLine" Height="200" runat="server" ID="descriptionTextBox" /><br />
                        path:
                        <%--<asp:TextBox Text='<%# Bind("path") %>' runat="server" ID="pathTextBox" />--%>
                        <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                        <asp:Button runat="server" CommandName="Update" Text="更新" ID="UpdateButton" /><br />
                        <asp:Button runat="server" CommandName="Cancel" Text="取消" ID="CancelButton" /><br />
                    </td>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <table runat="server" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px;">
                        <tr>
                            <td>未傳回資料。</td>
                        </tr>
                    </table>
                </EmptyDataTemplate>
                <EmptyItemTemplate>
                    <td runat="server" />
                </EmptyItemTemplate>
                <GroupTemplate>
                    <tr runat="server" id="itemPlaceholderContainer">
                        <td runat="server" id="itemPlaceholder"></td>
                    </tr>
                </GroupTemplate>
                <InsertItemTemplate>
                    <td runat="server" style="">title:<br />
                        <asp:TextBox Text='<%# Bind("title") %>' runat="server" ID="titleTextBox" /><br />
                        description:<br />
                        <asp:TextBox Text='<%# Bind("description") %>' TextMode="MultiLine" Height="200" runat="server" ID="descriptionTextBox" /><br />
                        path:<br />
                        <%--<asp:TextBox Text='<%# Bind("path") %>' runat="server" ID="pathTextBox" />--%>
                        <asp:FileUpload ID="FileUpload1" runat="server" /><br />
                        <asp:Button runat="server" CommandName="Insert" Text="插入" ID="InsertButton" />
                        <asp:Button runat="server" CommandName="Cancel" Text="清除" ID="CancelButton" /><br />
                    </td>
                </InsertItemTemplate>
                <ItemTemplate>
                    <td runat="server" style="background-color: #FFFBD6; color: #333333; vertical-align: top; padding: 10px;">
                        <%--<asp:Label Text='<%# Eval("Id") %>' runat="server" ID="Label1" Visible="false" />--%>
                        <asp:Label Text='<%# Eval("title") %>' runat="server" ID="Label2" />
                        <a href='<%# "pictures/" + Eval("path").ToString() %>' download>下載</a><br />
                        <asp:Image ID="Image1" runat="server" Height="240" ImageUrl='<%# "~/pictures/" + Eval("path").ToString() %>' /><br />
                        <asp:Label Text='<%# Eval("description") %>' runat="server" ID="Label3" /><br />
                        <asp:Button runat="server" CommandName="Delete" Text="刪除" ID="DeleteButton" />
                        <asp:Button runat="server" CommandName="Edit" Text="編輯" ID="EditButton" /><br />
                    </td>
                </ItemTemplate>
                <LayoutTemplate>
                    <table runat="server">
                        <tr runat="server">
                            <td runat="server">
                                <table runat="server" id="groupPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                    <tr runat="server" id="groupPlaceholder"></tr>
                                </table>
                            </td>
                        </tr>
                        <tr runat="server">
                            <td runat="server" style="text-align: center; background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif; color: #333333;"></td>
                        </tr>
                    </table>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <td runat="server" style="background-color: #FFCC66; font-weight: bold; color: #000080;">Id:
                        <%--<asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" />--%><br />
                        title:
                        <asp:Label Text='<%# Eval("title") %>' runat="server" ID="titleLabel" /><br />
                        description:
                        <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" /><br />
                        path:
                        <asp:Label Text='<%# Eval("path") %>' runat="server" ID="pathLabel" /><br />
                        <asp:Button runat="server" CommandName="Delete" Text="刪除" ID="DeleteButton" /><br />
                        <asp:Button runat="server" CommandName="Edit" Text="編輯" ID="EditButton" /><br />
                    </td>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:testConnectionString %>' SelectCommand="SELECT * FROM [Album]" DeleteCommand="DELETE FROM [Album] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Album] ([title], [description], [path]) VALUES (@title, @description, @path)" UpdateCommand="UPDATE [Album] SET [title] = @title, [description] = @description, [path] = @path WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="description" Type="String"></asp:Parameter>
                    <asp:Parameter Name="path" Type="String"></asp:Parameter>
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="title" Type="String"></asp:Parameter>
                    <asp:Parameter Name="description" Type="String"></asp:Parameter>
                    <asp:Parameter Name="path" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Id" Type="Int32"></asp:Parameter>
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
