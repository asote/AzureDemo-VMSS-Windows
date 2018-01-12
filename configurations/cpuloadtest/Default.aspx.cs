using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblHostname.Text = Environment.MachineName;
    }

    protected void btnMaxCPU_Click(object sender, EventArgs e)
    {
        var timeToRun = System.DateTime.Now.AddSeconds(int.Parse(txtTime.Text));
        while (timeToRun > System.DateTime.Now)
        {
            //generate cpu load
        }
    }
}