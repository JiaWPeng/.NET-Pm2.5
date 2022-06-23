using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
        SqlDataAdapter da = new SqlDataAdapter("select * from news where 所属栏目='新闻快讯'",con);
        DataSet ds = new DataSet();
        da.Fill(ds, "t3");
        GridView1.DataSource = ds.Tables["t3"];
        GridView1.DataBind();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}