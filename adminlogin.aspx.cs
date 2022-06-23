using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class adminlogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
        SqlCommand da = new SqlCommand("select * from admin where 账号='" + TextBox1.Text + "'and 密码='" + TextBox2.Text + "'", con);
        con.Open();
        SqlDataReader dr = da.ExecuteReader();
        if (dr.Read())
        {
            Session["adminname"] = TextBox1.Text;
            Response.Redirect("addnews.aspx");
        }
        else
        {
            Response.Write("<script>alert('登录失败')</script>");
        }
    
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("login.aspx");
    }

}