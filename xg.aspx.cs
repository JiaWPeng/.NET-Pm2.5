using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class xg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
            SqlCommand cmd = new SqlCommand("select * from admin where 账号='"+Session["adminname"]+"'",con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox1.Text = dr["账号"].ToString();
                TextBox2.Text = dr["密码"].ToString();
            }
            con.Close();
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
        SqlCommand cmd = new SqlCommand("update admin set 密码='" + TextBox2.Text + "' where 账号='" + Session["adminname"] + "'", con);
        con.Open();
        int flag = (int)cmd.ExecuteNonQuery();
        if (flag > 0)
        {
            Response.Write("<script>alert('修改成功')</script>");
        }
        else
        {
            Response.Write("<script>alert('修改失败')</script>");
        }
    }
}