using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class addnews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        if (Session["adminname"] != null)
        {
            SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into news values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + Session["adminname"] + "','" + DateTime.Now + "','" + DropDownList1.SelectedItem.Text + "')", con);
            int flag = (int)cmd.ExecuteNonQuery();
            if (flag > 0)
            {
                Response.Write("<script>alert('添加新闻成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('添加新闻失败')</script>");
            }
            con.Close();
        }
        else
        {
            Response.Redirect("adminlogin.aspx");
        }

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}