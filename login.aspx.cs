using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        if (TextBox1.Text == "" || TextBox2.Text == "")
        {
            Label1.Text = "请输入账号密码！";
        }
        SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from qwe where id='" + TextBox1.Text + "'and press='" + TextBox2.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["name"] = TextBox1.Text;
            Response.Redirect("首页.aspx");
        }
        else
        {
            Session["name"] = "";
            Label1.Text = "账号或密码错误，请重新输入！";
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("注册.aspx");
    }
}