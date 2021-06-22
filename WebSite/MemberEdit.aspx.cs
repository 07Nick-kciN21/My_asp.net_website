using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MemberEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
            return;
        //如果沒有id，代表是新增
        if (Request.QueryString["id"] == null)
        {
            Button1.Text = "Insert";
            //id欄位需要輸入
            TextBox0.ReadOnly = false;
        }
        else
        {
            //如果是編輯 
            Button1.Text = "Update";
            //id不用更改
            TextBox0.ReadOnly = true;
            //get id
            string id = Request.QueryString["id"].ToString();
            //取得連線                                                                     從testConnectionString取得
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString.ToString());
            conn.Open();
            //SqlCommand類別為sql指令
            SqlCommand command = new SqlCommand();
            //sql連線到conn
            command.Connection = conn;
            //sql指令為選取特定id的所有資料
            command.CommandText = "SELECT * FROM [MEMBER] WHERE [id] = @id";
            //把sql指令中殘留的參數清除
            command.Parameters.Clear();
            //sql參數中增加指定id的資料
            command.Parameters.AddWithValue("@id", id);
            //讀取sql資料
            SqlDataReader reader = command.ExecuteReader();
            if(reader.HasRows)
            {
                reader.Read();
                TextBox0.Text = reader["id"].ToString();
                TextBox1.Text = reader["password"].ToString();
                TextBox2.Text = reader["personal_id"].ToString();
                TextBox3.Text = reader["name"].ToString();
                TextBox4.Text = reader["sex"].ToString();
                TextBox5.Text = DateTime.Parse(reader["birthday"].ToString()).ToString("yyyy/M/d");
                TextBox6.Text = reader["phone"].ToString();
                TextBox7.Text = reader["address"].ToString();
                TextBox8.Text = reader["role"].ToString();
            }
            reader.Close();
            conn.Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //新增
        if(Button1.Text == "Insert")
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
            conn.Open();
            SqlTransaction transaction = conn.BeginTransaction();
            string cmdstr = "INSERT INTO Member (id, password, personal_id, name, sex, birthday, phone, address, role) VALUES (@id, @password, @personal_id, @name, @sex, @birthday, @phone, @address, @role)";
            SqlCommand cmd = new SqlCommand(cmdstr, conn);
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("id", TextBox0.Text);
            cmd.Parameters.AddWithValue("password", TextBox1.Text);
            cmd.Parameters.AddWithValue("personal_id", TextBox2.Text);
            cmd.Parameters.AddWithValue("name", TextBox3.Text);
            cmd.Parameters.AddWithValue("sex", true);
            cmd.Parameters.AddWithValue("birthday", TextBox5.Text);
            cmd.Parameters.AddWithValue("phone", TextBox6.Text);
            cmd.Parameters.AddWithValue("address", TextBox7.Text);
            cmd.Parameters.AddWithValue("role", int.Parse(TextBox8.Text));
            cmd.Transaction = transaction;
            cmd.ExecuteNonQuery();
            transaction.Commit();
            conn.Close();
            Response.Redirect("Member.aspx");
        }
        //編輯
        else
        {
            SqlConnection conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["testConnectionString"].ConnectionString);
            conn.Open();
            SqlTransaction transaction = conn.BeginTransaction();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = conn;
            cmd.CommandText = "UPDATE Member SET password=@password, personal_id=@personal_id, name=@name, sex=@sex, birthday=@birthday, phone=@phone, address=@address, role=@role WHERE id=@id";
            cmd.Parameters.Clear();
            cmd.Parameters.AddWithValue("password", TextBox1.Text);
            cmd.Parameters.AddWithValue("personal_id", TextBox2.Text);
            cmd.Parameters.AddWithValue("name", TextBox3.Text);
            cmd.Parameters.AddWithValue("sex", 1);
            cmd.Parameters.AddWithValue("birthday", TextBox5.Text);
            cmd.Parameters.AddWithValue("phone", TextBox6.Text);
            cmd.Parameters.AddWithValue("address", TextBox7.Text);
            cmd.Parameters.AddWithValue("role", int.Parse(TextBox8.Text));
            cmd.Parameters.AddWithValue("id", TextBox0.Text);
            cmd.Transaction = transaction;
            try
            {
                cmd.ExecuteNonQuery();
                transaction.Commit();
            }
            catch
            {
                transaction.Rollback();
            }
            finally
            {
                conn.Close();
            }
        }
    }
}