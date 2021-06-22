using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string id = TextBox1.Text;
        string password = TextBox2.Text;

        if (id == "john" && password == "12345")
        {
            Session["id"] = "john";
            Response.Redirect("Member.aspx");
        }
        else
        {
            Label1.Visible = true;
            Label1.Text = "登入失敗";
        }
    }
}