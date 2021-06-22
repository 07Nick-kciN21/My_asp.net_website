using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Album : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ListView1_ItemUpdating(object sender, ListViewUpdateEventArgs e)
    {
        ListViewItem item = ListView1.Items[e.ItemIndex];
        FileUpload fileUpload = item.FindControl("FileUpload1") as FileUpload;
        e.NewValues["path"] = fileUpload.FileName;

        if (fileUpload.HasFile)
        {
            string savePath = Server.MapPath("~/pictures/" + Server.HtmlEncode(fileUpload.FileName));
            fileUpload.SaveAs(savePath);
        }
    }

    protected void ListView1_ItemInserting(object sender, ListViewInsertEventArgs e)
    {
        FileUpload fileUpload = e.Item.FindControl("FileUpload1") as FileUpload;
        e.Values["path"] = fileUpload.FileName;

        if (fileUpload.HasFile)
        {
            string savePath = Server.MapPath("~/pictures/" + Server.HtmlEncode(fileUpload.FileName));
            fileUpload.SaveAs(savePath);
        }
    }
}