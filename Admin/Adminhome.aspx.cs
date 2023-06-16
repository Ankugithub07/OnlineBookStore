using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static OnlineBookStore.Models.CommonFn;

namespace OnlineBookStore.Admin
{
    public partial class Adminhome : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();


        protected void Page_Load(object sender, EventArgs e)
        {
            Getdr();
        }

        protected void Getdr()
        {


            DataTable dt = fn.Fetch("select count(*) from customer");
            StringBuilder sb = new StringBuilder();

            foreach (DataRow row in dt.Rows)
            {
                sb.Append(row["count(*)"].ToString()); // Replace "ColumnName" with the name of the column you want to retrieve
            }

            string result = sb.ToString();
            Label1.Text = result;
            Label1.ForeColor = System.Drawing.Color.Black;

            DataTable dt1 = fn.Fetch("select count(*) from book");
            StringBuilder sb1 = new StringBuilder();

            foreach (DataRow row in dt1.Rows)
            {
                sb1.Append(row["count(*)"].ToString()); // Replace "ColumnName" with the name of the column you want to retrieve
            }

            string result1 = sb1.ToString();
            Label2.Text = result1;
            Label2.ForeColor = System.Drawing.Color.Black;

            DataTable dt2 = fn.Fetch("select count(*) from orders");
            StringBuilder sb2 = new StringBuilder();

            foreach (DataRow row in dt2.Rows)
            {
                sb2.Append(row["count(*)"].ToString()); // Replace "ColumnName" with the name of the column you want to retrieve
            }

            string result2 = sb2.ToString();
            Label3.Text = result2;
            Label3.ForeColor = System.Drawing.Color.Black;

            DataTable dt3 = fn.Fetch("select count(*) from feedback");
            StringBuilder sb3 = new StringBuilder();

            foreach (DataRow row in dt3.Rows)
            {
                sb3.Append(row["count(*)"].ToString()); // Replace "ColumnName" with the name of the column you want to retrieve
            }

            string result3 = sb3.ToString();
            Label4.Text = result3;
            Label4.ForeColor = System.Drawing.Color.Black;

        }

    }
}