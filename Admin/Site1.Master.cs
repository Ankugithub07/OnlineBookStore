using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookStore.Admin
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        private string res;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] != null)
            {

                
                
            }
            else
            {
                Response.Redirect("AdminLogin.aspx");
            }

        }
    }
}