using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class 问题建议 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
        SqlCommand cmd = new SqlCommand("insert into jianyi values( '" + TextBox1.Text+"')",con);
        con.Open();
        int flag = (int)cmd.ExecuteNonQuery();
        if (flag > 0)
        {
            Response.Write("<script>alert('提交成功！')</script>");
        }
        else
        {
            Response.Write("<script>('内容为空，请填写您的建议！')</script>");
        }
        
    }
}