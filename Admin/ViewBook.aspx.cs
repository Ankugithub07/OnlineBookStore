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
    public partial class ViewBook : System.Web.UI.Page
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

            DataTable dt = fn.Fetch("select * from  book ");
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


            string query = "UPDATE  book SET book_name=@book_name, book_author=@book_author, book_price=@book_price, img=@img WHERE book_id=@book_id;";
            using (MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["LocalMysql"].ConnectionString))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);

                cmd.Parameters.AddWithValue("@book_name", value: e.NewValues["book_name"]);
                cmd.Parameters.AddWithValue("@book_author", e.NewValues["book_author"]);
                cmd.Parameters.AddWithValue("@book_price", e.NewValues["book_price"]);
                
                cmd.Parameters.AddWithValue("@img", e.NewValues["img"]);
                cmd.Parameters.AddWithValue("@book_id", e.Keys["book_id"]);
                cmd.ExecuteNonQuery();

            }
            GridView1.EditIndex = -1;
            GetDR();
        }

        //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        //{
        //    // Get the updated values for each field from the GridView row
        //    string name = e.NewValues["name"].ToString();
        //    string address = e.NewValues["address"].ToString();
        //    string email = e.NewValues["email"].ToString();
        //    string pno = e.NewValues["pno"].ToString();

        //    // Get the id of the row being updated
        //    int id = Convert.ToInt32(e.Keys["id"]);
        //    int id1 = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values["id"]);


        //    // Define the parameterized SQL query
        //    string query = "UPDATE user SET name=@name, address=@address, email=@email, pno=@pno WHERE id=@id;";

        //    // Create a SqlConnection object to connect to the database
        //    string connectionString = ConfigurationManager.ConnectionStrings["LocalMysql"].ConnectionString;
        //    SqlConnection connection = new SqlConnection(connectionString);

        //    // Create a SqlCommand object to execute the SQL query
        //    SqlCommand command = new SqlCommand(query, connection);

        //    // Add parameters to the SqlCommand object
        //    command.Parameters.AddWithValue("@name", name);
        //    command.Parameters.AddWithValue("@address", address);
        //    command.Parameters.AddWithValue("@email", email);
        //    command.Parameters.AddWithValue("@pno", pno);
        //    command.Parameters.AddWithValue("@id", id);

        //    // Open the database connection
        //    connection.Open();

        //    // Execute the SQL query
        //    command.ExecuteNonQuery();

        //    // Close the database connection
        //    connection.Close();

        //    // Refresh the GridView to show the updated data
        //    GridView1.DataBind();
        //}




        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            /*  string connectionString = "Data Source=myServerAddress;Initial Catalog=myDataBase;User ID=root;Password=Soyeb@2001;";
              string query = "DELETE FROM Customers WHERE id=@id;";
              using (SqlConnection connection = new SqlConnection(connectionString))
              {
                  SqlCommand command = new SqlCommand(query, connection);
                  command.Parameters.AddWithValue("@id", e.Keys["id"]);
                  connection.Open();
                  command.ExecuteNonQuery();
              }
              GetDR();*/

            string query = "DELETE FROM book WHERE book_id=@book_id;";
            using (MySqlConnection con = new MySqlConnection(ConfigurationManager.ConnectionStrings["LocalMysql"].ConnectionString))
            {
                con.Open();
                MySqlCommand cmd = new MySqlCommand(query, con);


                cmd.Parameters.AddWithValue("@book_id", e.Keys["book_id"]);
                cmd.ExecuteNonQuery();

            }

            GetDR();
        }
    }
}
    