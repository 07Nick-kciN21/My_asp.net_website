using System;
using System.Net;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class newsEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack) return;

        if (Session["id"] == null)
        {
            Response.Redirect("news.aspx");
        }
        string status = "update";
        if(Request.QueryString["id"] != null)
        {
            Button1.Text = "Update";
            string id = Request.QueryString["id"].ToString();
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString.ToString());
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "SELECT * FROM News WHERE [Id] = @id";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("@id", id);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                Label0.Text = reader["Id"].ToString();
                TextBox1.Text = reader["Title"].ToString();
                TextBox2.Text = HttpUtility.HtmlDecode(reader["Content"].ToString());
                Label1.Text = reader["Date"].ToString();
                Label2.Text = reader["Count"].ToString();
                Label3.Text = reader["Username"].ToString();
            }
            reader.Close();
            conn.Close();
        }
        else
        {
            Button1.Text = "Insert";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if(Button1.Text == "Update")
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
            conn.Open();
            SqlTransaction transaction = conn.BeginTransaction();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "UPDATE News SET Title = @Title, Content = @Content, Date = @Date, Count = @Count, Username = @Username WHERE Id = @Id";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("Id", Label0.Text);
            cmd.Parameters.AddWithValue("Title", TextBox1.Text);
            cmd.Parameters.AddWithValue("Content", TextBox2.Text);
            cmd.Parameters.AddWithValue("Date", DateTime.Now.ToString());
            cmd.Parameters.AddWithValue("Count", Label2.Text.ToString());
            cmd.Parameters.AddWithValue("Username", Session["id"].ToString());
            cmd.Transaction = transaction;
            cmd.ExecuteNonQuery();
            transaction.Commit();
            conn.Close();
            Response.Redirect("news.aspx");
        }
        else if(Button1.Text == "Insert")
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
            conn.Open();
            SqlTransaction transaction = conn.BeginTransaction();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "INSERT INTO News (Id, Title, Content, Date, Count, Username) VALUES (@Id, @Title, @Content, @Date, @Count, @Username)";

        }
    }
}