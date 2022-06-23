using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class WebUserControl : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != "")
        {
            Label1.Text = Session["name"] + ",欢迎光临！";
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["name"] = "";
        Response.Redirect("login.aspx");
    }
}