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
    {
        try
        {
        using (SqlConnection sqlConn = new SqlConnection("Server=dbdemo01.database.windows.net;Database=Demo;User ID=dbuser;Password=T3rr@f0rm!P0w3r"))
                {
                    sqlConn.Open();
                    Response.Write("Connection OK!");
                }
        }
        catch (SqlException)
        {
        Response.Write("No Connection!");
        }
        catch (Exception)
        {
        Response.Write("No Connection!");
        }
    }
 }    