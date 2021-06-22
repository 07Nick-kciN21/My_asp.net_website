using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Calculator : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int a = int.Parse(TextBox1.Text);
        int b = int.Parse(TextBox2.Text);
        TextBox3.Text = (a+b).ToString();
    }
}