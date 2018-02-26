using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;


namespace MHSFirst
{
    public partial class login : System.Web.UI.Page
    {
		MySqlConnection conn;

		protected void Page_Load(object sender, EventArgs e)
        {
			conn = connect();

			if (IsPostBack)
				loginClick(sender, e);
		}

		protected void loginClick(object sender, EventArgs e)
		{
			string username = Request.Form["username"];
			string password = Request.Form["password"];

			if (password.Length > 0 && password.Equals(queryRead("SELECT password FROM mhsfirst.users WHERE username = '" + username + "';")))
			{
				Session["username"] = username;
				Response.Redirect("home.aspx");
			}
			else
				Response.Write("Incorrect username or password");
		}

		protected MySqlConnection connect()
		{
			MySqlConnection conn;
			string myConnectionString = "server=localhost;uid=root;pwd=password;database=mhsfirst;";

			try
			{
				conn = new MySql.Data.MySqlClient.MySqlConnection();
				conn.ConnectionString = myConnectionString;
				return conn;
			}
			catch (MySql.Data.MySqlClient.MySqlException ex)
			{
				Response.Write(ex.Message);
				return null;
			}
		}

		protected void queryWrite(string query)
		{
			MySqlCommand cmd = conn.CreateCommand();
			cmd.CommandText = query;
			conn.Open();
			cmd.ExecuteNonQuery();
			conn.Close();
		}

		protected string queryRead(string query)
		{
			string drString = "";
			MySqlDataReader dr;
			MySqlCommand cmd = conn.CreateCommand();
			cmd.CommandText = query;

			conn.Open();
			dr = cmd.ExecuteReader();

			while (dr.Read())
				drString += dr["password"].ToString();

			conn.Close();

			return drString;
		}
    }
}