using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static OnlineBookStore.Models.CommonFn;

namespace OnlineBookStore.User
{
    public partial class feedback : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click1(object sender, EventArgs e)
        {
            string FullName = name.Value.Trim();
            string Adress = address.Value.Trim();
            string Mobile = mobile.Value.Trim();
            string des  = pidd.Value.Trim();
            

            
                fn.Query("insert into feedback (name,address,pho,des) values ('" + FullName + "','" + Adress + "','" + Mobile + "','" + des + "');");
                  Response.Write("<script language=javascript>alert('We Will Work');</script>");
                Response.Redirect("feedback.aspx");
           


        }
    }
}