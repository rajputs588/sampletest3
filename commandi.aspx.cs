using System;
using System.Diagnostics;

namespace CxCE_Demo
{
    public partial class commandi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            string processtostart = systemname.Text;
            Process.Start(processtostart);
        }
    }
}
