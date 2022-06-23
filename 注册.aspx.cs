using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class 注册 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into qwe values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')", con);
        SqlCommand cmd1 = new SqlCommand("insert into pm_ss(name) values('"+ TextBox1.Text +"')",con);
        cmd1.ExecuteNonQuery();
        int flag = (int)cmd.ExecuteNonQuery();
        if (flag > 0)
        {
            Response.Write("<script>alert('注册成功')</script>");
        }
        else
        {
            Response.Write("<script>alert('注册失败')</script>");
        }
    }

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx");
    }
}