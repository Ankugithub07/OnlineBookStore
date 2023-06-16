using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static OnlineBookStore.Models.CommonFn;

namespace OnlineBookStore.User
{
    public partial class AddBook : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bt1_Click(object sender, EventArgs e)
        {
            string FullName = name.Value.Trim();
            string Email = baname.Value.Trim();
            string Password = baprice.Value.Trim();
            string ConfirmPassword = pidd.Value.Trim();
   

       
                fn.Query("insert into book (book_name,book_author,book_price)values ('" + FullName + "','" + Email + "','" + Password +"');");

                Response.Redirect("../Admin/Adminhome.aspx");
           







        }
    }

}