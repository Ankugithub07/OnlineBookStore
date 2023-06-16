using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static OnlineBookStore.Models.CommonFn;
using System.Xml.Linq;
using System.Numerics;

namespace OnlineBookStore.User
{
    public partial class Order : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        private string myValue;
        private string res;

        protected void Page_Load(object sender, EventArgs e)
        {
            myValue = Request.QueryString["id"];
            

            if (!string.IsNullOrEmpty(myValue))
            {
                res = Session["id"].ToString();
                Label1.Text = "The Product id is: " + myValue;
            }
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string Name = name.Value.Trim();

            string Tel = mobile.Value.Trim();
            string Adress = address.Value.Trim();
            string Pass = pidd.Value.Trim();
            int p = int.Parse(myValue);
          
            BigInteger c = BigInteger.Parse(res);

            string query = "insert into bookstore.orders(Mobile,book_id) values('" + c + "','" + p + "')";
            fn.Query(query);
            string script = "alert('Order placed successfully!');";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "OrderPlacedScript", script, true);
            Response.Redirect("Thankyou.aspx");

        }

    }
}