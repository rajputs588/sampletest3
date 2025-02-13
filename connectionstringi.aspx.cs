using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace CxCE_Demo
{
    public partial class connectionstringi : System.Web.UI.Page
    {
        protected void submit_Click(object sender, EventArgs e)
        {
            getName(name.Text);
        }

        private void getName(string database)
        {
            string username = "No name";
            SqlConnection conn = new SqlConnection("Server=myServerAddress;Database=" + database + ";User Id=myUsername;Password=" + Constants.DB_PASSWORD + ";");
            SqlCommand cmd = new SqlCommand();
            SqlDataReader reader;

            cmd.CommandText = "SELECT NAME FROM Users WHERE ID = 1000;";
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn;

            conn.Open();

            reader = cmd.ExecuteReader();
            if (reader.HasRows)
            {
                username = reader["NAME"].ToString();
            }

            message.Text = "Welcome " + username;
            conn.Close();
        }
    }
}
