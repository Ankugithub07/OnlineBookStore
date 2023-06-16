using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

namespace OnlineBookStore.User
{
    public partial class search : System.Web.UI.Page
    {
        protected List<CardData> cardDataList;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cardDataList = FetchCardDataFromMySQL(); // Fetch the card data from MySQL
                cardDataRepeater.DataSource = cardDataList; // Bind the card data to the repeater control
                cardDataRepeater.DataBind(); // Render the card data in the repeater control
            }
        }

        // Model class for card data
        public class CardData
        {
            public int Id { get; set; }
            public string Name { get; set; }
            public string Author { get; set; }
            public string Price { get; set; }
            public string Img { get; set; }
        }

        // Method to fetch card data from MySQL
        private List<CardData> FetchCardDataFromMySQL()
        {
            List<CardData> dataList = new List<CardData>();


            string query = "SELECT book_id, book_name, book_author, book_price,img FROM book"; // Replace with your query

            using (MySqlConnection connection = new MySqlConnection(ConfigurationManager.ConnectionStrings["LocalMysql"].ConnectionString))
            {
                MySqlCommand command = new MySqlCommand(query, connection);
                connection.Open();
                MySqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    CardData card = new CardData
                    {
                        Id = Convert.ToInt32(reader["book_id"]),
                        Name = reader["book_name"].ToString(),
                        Author = reader["book_author"].ToString(),
                        Price = reader["book_price"].ToString(),
                                Img = reader["img"].ToString()
                    };

                    dataList.Add(card);
                }

                reader.Close();
            }

            return dataList;
        }
    }
}