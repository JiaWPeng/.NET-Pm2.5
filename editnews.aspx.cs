using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class editnews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from news where id='" + Session["newsid"] + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TextBox1.Text = dr["标题"].ToString();
                DropDownList1.SelectedItem.Text = dr["所属栏目"].ToString();
                TextBox2.Text = dr["内容"].ToString();
            }
            con.Close();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
        con.Open();
        SqlCommand cmd = new SqlCommand("update news set 标题='" + TextBox1.Text + "',内容 = '" + TextBox2.Text + "',作者='" + Session["adminname"] + "',发布时间 = '" + DateTime.Now + "',所属栏目 = '" + DropDownList1.SelectedItem.Text + "'where id='" + Session["newsid"] + "'", con);
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