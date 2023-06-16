using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineBookStore.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            string Email = email.Value.Trim();
            string Password = password.Value.Trim();

            if (Email == "anku84397@gmail.com" && Password == "12345")

            {
                Session["aid"] = Email;
                Response.Redirect("Adminhome.aspx");
            }
            else if (Email == "pratik.thorat22@iccs.ac.in" && Password == "12345")
            {
                Session["aid"] = Email;
                Response.Redirect("Adminhome.aspx");
            }
            else
            {
                Label1.Text = "Login Failed";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }

    }
}