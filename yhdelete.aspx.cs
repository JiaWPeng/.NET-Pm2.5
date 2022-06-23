using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class yhdelete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    public void bind()
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
        SqlDataAdapter cmd = new SqlDataAdapter("select * from qwe",con);
        DataSet ds = new DataSet();
        cmd.Fill(ds,"t9");
        GridView1.DataSource = ds.Tables["t9"];
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
        SqlCommand cmd = new SqlCommand("delete from qwe where id='"+id+"'",con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        bind();
    }
}