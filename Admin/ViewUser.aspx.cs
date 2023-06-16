using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static OnlineBookStore.Models.CommonFn;
using MySql.Data.MySqlClient;

namespace OnlineBookStore.Admin
{
    public partial class ViewUser : System.Web.UI.Page
    {
        CommonFnx fn = new CommonFnx();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetDR();

            }

        }
        private void GetDR()
        {

            DataTable dt = fn.Fetch("select * from customer ");
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void NewButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("NewCustomer.aspx");
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GetDR();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            GetDR();
        }


        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {


            string query = "UPDATE customer SET name=@name, email=@email WHERE Mobile=@mobile;";
            using (MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["LocalMysql"].ConnectionString))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Parameters.AddWithValue("@name", value: e.NewValues["name"]);

                cmd.Parameters.AddWithValue("@email", e.NewValues["email"]);


                cmd.Parameters.AddWithValue("@mobile", e.Keys["Mobile"]);
                cmd.ExecuteNonQuery();

            }
            GridView1.EditIndex = -1;
            GetDR();
        }






        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {


            string query = "DELETE FROM customer WHERE Mobile=@mobile;";
            using (MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["LocalMysql"].ConnectionString))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);


                cmd.Parameters.AddWithValue("@mobile", e.Keys["Mobile"]);
                cmd.ExecuteNonQuery();

            }

            GetDR();
        }
    }
}