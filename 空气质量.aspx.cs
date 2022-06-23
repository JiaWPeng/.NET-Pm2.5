using System;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Runtime.InteropServices;
using System.Text;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class 空气质量 : System.Web.UI.Page
{

    //static int nub = 0;
    string[] sum = new string[7];
    string[] avg = new string[7];
    string[] cs = new string[7];
    
    int s = 0;
    static int avg7 = 0;
    int a7 = 0;
    static int sum7 = 0;

    [DllImport(@"F:\NET web\Pm2.5\Bin\Temperature.dll", EntryPoint = "GetPM251", CharSet = CharSet.Ansi, CallingConvention = CallingConvention.StdCall)]
    public static extern int GetPM251();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        int s = DateTime.Now.Second;
        int h = DateTime.Now.Hour;
        int m = DateTime.Now.Minute;
        s++;
        string time = String.Format("{0:00}:{1:00}:{2:00}",h,m,s);
        Label1.Text = time;
        */
        string name = Session["name"].ToString();

        SqlConnection conn = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
        SqlCommand cmd1 = new SqlCommand("select * from pm", conn);
        SqlCommand cmd2 = new SqlCommand("select * from pm_ss where name='"+ name +"'", conn);
        conn.Open();
        SqlDataReader reader = cmd1.ExecuteReader();
        
        double[] yValues = new double[7];
        double[] yValue = new double[7];
        double[] y = new double[7];
        double[] y1 = new double[7];
        string[] avg1 = new string[7];
        
        double ysum = 0;
        double ysum2 = 0;
        string channel;
       

        
        for (int j = 0; j < 7; j++)
        {
            
            reader.Read();
            
            avg[j] = (string)reader["avg"];
            sum[j] = (string)reader["avg"];
            cs[j] = (string)reader["jiancecishu"];
            channel = (string)reader["avg"];
            avg1[j] = channel;

        }
      
        //设置Chart1的值
        for (int i = 0; i < 7; i++)
        {
            Chart1.Series[0].Points.AddXY(i + 1, avg1[i]);
        }
        reader.Close();
        SqlDataReader reader2 = cmd2.ExecuteReader();
        reader2.Read();
        //对Chart2饼状图赋值
        y[0] = Convert.ToDouble(reader2["pm1"]);
        y[1] = Convert.ToDouble(reader2["pm2"]);
        y[2] = Convert.ToDouble(reader2["pm3"]);
        y[3] = Convert.ToDouble(reader2["pm4"]);
        y[4] = Convert.ToDouble(reader2["pm5"]);
        y[5] = Convert.ToDouble(reader2["pm6"]);
        y[6] = Convert.ToDouble(reader2["pm7"]);

        y1[0] = Convert.ToDouble(reader2["pm1"]);
        y1[1] = Convert.ToDouble(reader2["pm2"]);
        y1[2] = Convert.ToDouble(reader2["pm3"]);
        y1[3] = Convert.ToDouble(reader2["pm4"]);
        y1[4] = Convert.ToDouble(reader2["pm5"]);
        y1[5] = Convert.ToDouble(reader2["pm6"]);
        y1[6] = Convert.ToDouble(reader2["pm7"]);
        for (int k = 0; k < 7; k++)
        {
            ysum2 = ysum2 + y1[k];
            ysum = ysum + y[k];
        }
        
        for (int k = 0; k < 7; k++)
        {
            yValues[k] = (y[k] / ysum) * 100;
            yValue[k] = (y1[k] / ysum2) * 100;
        }
        reader2.Close();
        conn.Close();
        conn.Dispose();

        //Chart2.BackColor = Color.Moccasin;
        //Chart2.BorderlineDashStyle = System.Web.UI.DataVisualization.Charting.ChartDashStyle.Solid;
        Chart2.BackGradientStyle = System.Web.UI.DataVisualization.Charting.GradientStyle.Center;
        //Chart2.BorderlineColor = Color.Gray;
        //Chart2.BorderSkin.SkinStyle = System.Web.UI.DataVisualization.Charting.BorderSkinStyle.Emboss;
        //Chart2.ChartAreas[0].BackColor = Color.Wheat;
        Chart2.Titles.Add("最近空质（%）");
        Chart2.Titles[0].Font = new Font("Utopia",14,FontStyle.Bold);
        Chart2.Series.Add(new System.Web.UI.DataVisualization.Charting.Series("Pie") {
            
                ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Pie,
                ShadowOffset = 2
             });
        Chart2.Series[0].Label = "#VALX\n #PERCENT{p}";
        Chart2.Series[0].LegendText = "#VALX";
        
        String[] xValues = { "优秀","不及格","良好","及格","1","2","3"};
        Chart2.Series[0]["PieLabelStyle"] = "Outside";
        Chart2.Series[0]["PieLineColor"] = "Black";
        Chart2.Series[0].Points.DataBindXY(xValues,yValues);
        foreach (System.Web.UI.DataVisualization.Charting.DataPoint point in Chart2.Series[0].Points)
        {
            point["Exploded"] = "true";
        }

        //Chart3的设置
        //SaveChartToImg(Chart2."4");
        //Chart3.BackColor = Color.Moccasin;
        //Chart3.BorderlineDashStyle = System.Web.UI.DataVisualization.Charting.ChartDashStyle.Solid;
        Chart3.BackGradientStyle = System.Web.UI.DataVisualization.Charting.GradientStyle.Center;
        //Chart3.BorderlineColor = Color.Gray;
        //Chart3.BorderSkin.SkinStyle = System.Web.UI.DataVisualization.Charting.BorderSkinStyle.Emboss;
        //Chart.ChartAreas[0].BackColor = Color.Wheat;
        Chart3.Titles.Add("最近空质（%）");
        Chart3.Titles[0].Font = new Font("Utopia", 14, FontStyle.Bold);
        Chart3.Series.Add(new System.Web.UI.DataVisualization.Charting.Series("Pie")
        {

            ChartType = System.Web.UI.DataVisualization.Charting.SeriesChartType.Pie,
            ShadowOffset = 2
        });
        Chart3.Series[0].Label = "#VALX\n #PERCENT{p}";
        Chart3.Series[0].LegendText = "#VALX";
       
        String[] xValue = { "优秀", "不及格", "良好", "及格", "1", "2", "3" };
        Chart3.Series[0]["PieLabelStyle"] = "Outside";
        Chart3.Series[0]["PieLineColor"] = "Black";
        Chart3.Series[0].Points.DataBindXY(xValue, yValue);

        //饼状图开花

       foreach (System.Web.UI.DataVisualization.Charting.DataPoint point in Chart3.Series[0].Points)
        {
            point["Exploded"] = "true";
        }
        //SaveChartToImg(Chart2."4");

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        s = (int)(Convert.ToDouble(GetPM251()));
        
        if (s == 32767) {
            Label1.Text = "未连接";
        }
        else if(s < 32767 && s > 0)
        {
            Label1.Text ="已连接";

        }
        
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
       
    }

    public string xq()
    {
        string[] day = new string[] { "星期日", "星期一","星期二", "星期三", "星期四", "星期五", "星期六" };
        string a= day[Convert.ToInt16(DateTime.Now.DayOfWeek)];
        return a;
    }
    protected void Button2_Click1(object sender, EventArgs e)
    {
        string name1 = Session["name"].ToString();  //获取用户名
       
        s = (int)(Convert.ToDouble(GetPM251()));
        int a = 1;
        if (s < 32767 && s > 0)
        {
            
            int id = 0;
            id = Convert.ToInt32(DateTime.Now.DayOfWeek);
            SqlConnection conn = new SqlConnection("server=DESKTOP-2UJQCP5;database=Pm2.5;integrated security=true");
            SqlCommand cmd1 = new SqlCommand("select * from pm where id='" + id + "'", conn);  
            conn.Open();
            //读取数据表pm的值
            SqlDataReader reader = cmd1.ExecuteReader();
            reader.Read();
            a7 = Convert.ToInt32(reader["jiancecishu"]);
            avg7 = Convert.ToInt32(reader["avg"]);
            Label2.Text = ((Convert.ToDouble(GetPM251())).ToString() + "\n");
            double c = (Convert.ToDouble(GetPM251()));      //当前Pm值
            a7++;
            /*if(a == 1)
            {
                sum7 = avg7;
                a = 0;
            }*/
            sum7 = sum7 + (int)c;
            avg7 = sum7 / a7;
            Label3.Text = avg7.ToString();
            Label4.Text = c.ToString();
            Label5.Text = a7.ToString();
            Label6.Text = id.ToString();
            reader.Close(); 
            conn.Close();
            //对用户PM近7天的值进行更改
            string sql = "update pm_ss set pm" + Convert.ToInt32(DateTime.Now.DayOfWeek) + "='" + Label4.Text + "'where name='"+name1+"'";
            SqlCommand cmd4 = new SqlCommand(sql,conn);
            SqlCommand cmd2 = new SqlCommand("update pm set avg='" + Label3.Text + "',shishi='" + Label4.Text + "',jiancecishu='" + Label5.Text + "'where id='" + Label6.Text + "'", conn);
            conn.Open();
            //DateTime.Now;
            cmd2.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();
        }
        else
        {
            Label2.Text = "请连接设备后再检测！";
        }

    }
}

   
