using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class 更多 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String name = Session["name"].ToString();
        SqlConnection conn = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
        SqlCommand cmd1 = new SqlCommand("select * from pm_ss where name=('"+ name +"')", conn);
        conn.Open();
        string[] avg1 = new string[7];
        SqlDataReader reader = cmd1.ExecuteReader();
        reader.Read();
        avg1[0] = (string)reader["pm1"];
        avg1[1] = (string)reader["pm2"];
        avg1[2] = (string)reader["pm3"];
        avg1[3] = (string)reader["pm4"];
        avg1[4] = (string)reader["pm5"];
        avg1[5] = (string)reader["pm6"];
        avg1[6] = (string)reader["pm7"];
        for (int i = 0;i<7;i++)
        {
            Chart3.Series[0].Points.AddXY(i + 1, avg1[i]);
        }


    }
}