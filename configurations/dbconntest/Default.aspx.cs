using System;
 using System.Collections.Generic;
 using System.Linq;
 using System.Web;
 using System.Web.UI;
 using System.Web.UI.WebControls;
 using System.Configuration;
 using System.Data.SqlClient;
 using System.Data;
 public partial class _Default : System.Web.UI.Page
 {
    protected void Page_Load(object sender, EventArgs e)
    {
            lblHostname.Text = Environment.MachineName;
    }

    protected void btnTestDb_Click(object sender, EventArgs e)
    {try
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["EarthConn"].ConnectionString);
        connection.Open();
        if ((connection.State &amp; ConnectionState.Open) &gt; 0)
            {
            Response.Write("Connection OK!");
            connection.Close();
            }
        else
            {
            Response.Write("No Connection!");
            }
    }catch
        {
        Response.Write("No Connection!");
        }
    }
 }    