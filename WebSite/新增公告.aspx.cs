using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 新增公告 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] == null)
        {
            Response.Redirect("login2.aspx");
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string title = TextBox1.Text;
        string content = TextBox2.Text;
        string name = Session["id"].ToString();
        DateTime dt = DateTime.Now;
        string date = dt.ToLocalTime().ToString();

        SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString.ToString());
        SqlCommand cmd = new SqlCommand();
        conn.Open();
        cmd.Connection = conn;
        cmd.CommandText = "INSERT INTO 公告 (發佈日期,標題,內容,發佈人) VALUES(@value1, @value2, @value3,@value4)";
        cmd.Parameters.AddWithValue("@value1", date);
        cmd.Parameters.AddWithValue("@value2", title);
        cmd.Parameters.AddWithValue("@value3", content);
        cmd.Parameters.AddWithValue("@value4", name);

        cmd.ExecuteNonQuery();
        Response.Redirect("Member.aspx");
    }
}