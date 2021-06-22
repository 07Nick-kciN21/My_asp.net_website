<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ckeditor.aspx.cs" Inherits="ckeditor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script src="https://cdn.ckeditor.com/ckeditor5/27.1.0/classic/ckeditor.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Classic editor</h1>
        <div id="editor">
            <p>This is some sample content.</p>
        </div>
        <script>
            ClassicEditor
                .create(document.querySelector('#editor'))
                .catch(error => {
                    console.error(error);
                });
        </script>
    </form>
</body>
</html>
