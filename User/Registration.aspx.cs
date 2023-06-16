using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static OnlineBookStore.Models.CommonFn;

namespace OnlineBookStore.User
{
    public partial class Registration : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            string FullName = fullname.Value.Trim();
            string Email = email.Value.Trim();
            string Password = password.Value.Trim();
            string ConfirmPassword = confirmpassword.Value.Trim();
            string Mobile = mobile.Value.Trim();

            if (Password == ConfirmPassword)
            {
                fn.Query("insert into customer values ('" + FullName + "','" + Email + "','" + Password + "','" + Mobile + "');");

                Response.Redirect("Login.aspx");
            }
            else
            {
                Label1.Text = "Login Failed";
                Label1.ForeColor = System.Drawing.Color.Red;
            }







        }
    }
}
    
