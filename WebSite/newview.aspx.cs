using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataSource2.Update();
        if (Session["id"] == null)
        {
            LinkButton linkButton = DetailsView1.FindControl("LinkButton1") as LinkButton;
            linkButton.Visible = false;

            linkButton = DetailsView1.FindControl("LinkButton2") as LinkButton;
            linkButton.Visible = false;

            linkButton = DetailsView1.FindControl("LinkButton3") as LinkButton;
            linkButton.Visible = false;
        }
    }

    protected void DetailsView1_ItemUpdating(object sender, DetailsViewUpdateEventArgs e)
    {
        TextBox textBox = DetailsView1.FindControl("TextBox1") as TextBox;
        e.NewValues["Content"] = textBox.Text;
    }
}