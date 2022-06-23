using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class mod4 : System.Web.UI.Page
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
        SqlDataAdapter da = new SqlDataAdapter("select * from news", con);
        DataSet ds = new DataSet();
        da.Fill(ds, "t8");
        GridView1.DataSource = ds.Tables["t8"];
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id3 = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value);
        SqlConnection con = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
        SqlCommand cmd = new SqlCommand("delete from news where id='" + id3 + "'", con);
        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        bind();
    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "editnews")
        {
            int i = int.Parse(e.CommandArgument.ToString());
            int newsid = int.Parse(GridView1.Rows[i].Cells[0].Text);
            Session["newsid"] = newsid;
            Response.Redirect("editnews.aspx");
        }
    }

    protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {

    }
}