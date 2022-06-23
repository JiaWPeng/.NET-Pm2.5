using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Addadmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
        SqlCommand cmd = new SqlCommand("insert into admin values('" + TextBox1.Text + "','" + TextBox2.Text + "')", con);
        con.Open();
        int flag = (int)cmd.ExecuteNonQuery();
        if (flag > 0)
        {
            Response.Write("<script>alert('添加成功')</script>");
        }
        else
        {
            Response.Write("<script>alert('添加失败')</script>");
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox2.Text = "";
        TextBox1.Text = "";
    }
}