using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class details : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id1 = Convert.ToInt32(Request.QueryString["id"]);
        SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
        SqlDataAdapter da = new SqlDataAdapter("select*from news where id='" + id1 + "'", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "t1");
        DetailsView1.DataSource = ds.Tables["t1"];
        DetailsView1.DataBind();
    }
}