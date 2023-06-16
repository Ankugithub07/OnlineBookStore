using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static OnlineBookStore.Models.CommonFn;

namespace OnlineBookStore.User
{
    public partial class Login : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            string Email = email.Value.Trim();
            string Password = password.Value.Trim();
            DataTable dt = fn.Fetch("select * from customer where email = '" + Email + "' and password = '" + Password + "' ");

            StringBuilder sb = new StringBuilder();

            StringBuilder sb1 = new StringBuilder();
            if (dt.Rows.Count > 0)
            {
                Session["user"] = Email;

                /*String id = RowNotInTableException[]*/
                foreach (DataRow row in dt.Rows)
                {
                    sb.Append(row["Mobile"].ToString());
                    sb1.Append(row["name"].ToString());
                }
                string result = sb.ToString();
                string name = sb1.ToString();        
                Session["id"] = result;
                Session["name"] = name;
                Response.Redirect("Homepage.aspx");
            }
            else
            {
                lblMsg.Text = "Login Failed";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}
   
