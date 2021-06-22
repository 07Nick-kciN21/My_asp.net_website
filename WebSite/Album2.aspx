<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Album2.aspx.cs" Inherits="Album2"  Debug="true" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1" DataKeyNames="Id" InsertItemPosition="LastItem" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FFFFFF; color: #284775;">Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                    title:
                    <asp:Label Text='<%# Eval("title") %>' runat="server" ID="titleLabel" /><br />
                    description:
                    <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" /><br />
                    <%--image_data:--%>
                    <%--<asp:Label Text='<%# Eval("image_data") %>' runat="server" ID="image_dataLabel" /><br />
                    image_mine:
                    <asp:Label Text='<%# Eval("image_mine") %>' runat="server" ID="image_mineLabel" /><br />
                    file_name:
                    <asp:Label Text='<%# Eval("file_name") %>' runat="server" ID="file_nameLabel" /><br />--%>
                    <asp:Button runat="server" CommandName="Delete" Text="刪除" ID="DeleteButton" /><br />
                    <asp:Button runat="server" CommandName="Edit" Text="編輯" ID="EditButton" /><br />
                </td>

            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #999999;">Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel1" /><br />
                    title:
                    <asp:TextBox Text='<%# Bind("title") %>' runat="server" ID="titleTextBox" /><br />
                    description:
                    <asp:TextBox Text='<%# Bind("description") %>' runat="server" ID="descriptionTextBox" /><br />
                    image_data:
                    <asp:TextBox Text='<%# Bind("image_data") %>' runat="server" ID="image_dataTextBox" /><br />
                    image_mine:
                    <asp:TextBox Text='<%# Bind("image_mine") %>' runat="server" ID="image_mineTextBox" /><br />
                    file_name:
                    <asp:TextBox Text='<%# Bind("file_name") %>' runat="server" ID="file_nameTextBox" /><br />
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
                <td runat="server" style="">title:
                    <asp:TextBox Text='<%# Bind("title") %>' runat="server" ID="titleTextBox" /><br />
                    description:
                    <asp:TextBox Text='<%# Bind("description") %>' runat="server" ID="descriptionTextBox" /><br />
                    image_data:
                    <asp:TextBox Text='<%# Bind("image_data") %>' runat="server" ID="image_dataTextBox" /><br />
                    image_mine:
                    <asp:TextBox Text='<%# Bind("image_mine") %>' runat="server" ID="image_mineTextBox" /><br />
                    file_name:
                    <asp:TextBox Text='<%# Bind("file_name") %>' runat="server" ID="file_nameTextBox" /><br />
                    <asp:Button runat="server" CommandName="Insert" Text="插入" ID="InsertButton" /><br />
                    <asp:Button runat="server" CommandName="Cancel" Text="清除" ID="CancelButton" /><br />
                </td>

            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #E0FFFF; color: #333333;">Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                    title:
                    <asp:Label Text='<%# Eval("title") %>' runat="server" ID="titleLabel" /><br />
                    description:
                    <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" /><br />
                    <%--image_data:--%>
                    <%--<asp:Label Text='<%# Eval("image_data") %>' runat="server" ID="image_dataLabel" /><br />
                    image_mine:
                    <asp:Label Text='<%# Eval("image_mine") %>' runat="server" ID="image_mineLabel" /><br />
                    file_name:
                    <asp:Label Text='<%# Eval("file_name") %>' runat="server" ID="file_nameLabel" /><br />--%>
                    <asp:Button runat="server" CommandName="Delete" Text="刪除" ID="DeleteButton" /><br />
                    <asp:Button runat="server" CommandName="Edit" Text="編輯" ID="EditButton" /><br />
                </td>

            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table runat="server" id="groupPlaceholderContainer" style="background-color: #FFFFFF; border-collapse: collapse; border-color: #999999; border-style: none; border-width: 1px; font-family: Verdana, Arial, Helvetica, sans-serif;" border="1">
                                <tr runat="server" id="groupPlaceholder">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center; background-color: #5D7B9D; font-family: Verdana, Arial, Helvetica, sans-serif; color: #FFFFFF"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #E2DED6; font-weight: bold; color: #333333;">Id:
                    <asp:Label Text='<%# Eval("Id") %>' runat="server" ID="IdLabel" /><br />
                    title:
                    <asp:Label Text='<%# Eval("title") %>' runat="server" ID="titleLabel" /><br />
                    description:
                    <asp:Label Text='<%# Eval("description") %>' runat="server" ID="descriptionLabel" /><br />
                    image_data:
                    <asp:Label Text='<%# Eval("image_data") %>' runat="server" ID="image_dataLabel" /><br />
                    image_mine:
                    <asp:Label Text='<%# Eval("image_mine") %>' runat="server" ID="image_mineLabel" /><br />
                    file_name:
                    <asp:Label Text='<%# Eval("file_name") %>' runat="server" ID="file_nameLabel" /><br />
                    <asp:Button runat="server" CommandName="Delete" Text="刪除" ID="DeleteButton" /><br />
                    <asp:Button runat="server" CommandName="Edit" Text="編輯" ID="EditButton" /><br />
                </td>

            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:testConnectionString %>' DeleteCommand="DELETE FROM [Album2] WHERE [Id] = @original_Id AND [title] = @original_title AND [description] = @original_description AND [image_data] = @original_image_data AND [image_mine] = @original_image_mine AND [file_name] = @original_file_name" InsertCommand="INSERT INTO [Album2] ([title], [description], [image_data], [image_mine], [file_name]) VALUES (@title, @description, @image_data, @image_mine, @file_name)" SelectCommand="SELECT * FROM [Album2]" UpdateCommand="UPDATE [Album2] SET [title] = @title, [description] = @description, [image_data] = @image_data, [image_mine] = @image_mine, [file_name] = @file_name WHERE [Id] = @original_Id AND [title] = @original_title AND [description] = @original_description AND [image_data] = @original_image_data AND [image_mine] = @original_image_mine AND [file_name] = @original_file_name" ConflictDetection="CompareAllValues" OldValuesParameterFormatString="original_{0}">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_title" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_description" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_image_data" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_image_mine" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_file_name" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="title" Type="String"></asp:Parameter>
                <asp:Parameter Name="description" Type="String"></asp:Parameter>
                <asp:Parameter Name="image_data" Type="String"></asp:Parameter>
                <asp:Parameter Name="image_mine" Type="String"></asp:Parameter>
                <asp:Parameter Name="file_name" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="title" Type="String"></asp:Parameter>
                <asp:Parameter Name="description" Type="String"></asp:Parameter>
                <asp:Parameter Name="image_data" Type="String"></asp:Parameter>
                <asp:Parameter Name="image_mine" Type="String"></asp:Parameter>
                <asp:Parameter Name="file_name" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Id" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_title" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_description" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_image_data" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_image_mine" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_file_name" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
