using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Web.Services;

namespace MHSFirst
{
	public partial class admin : System.Web.UI.Page
	{
		MySqlConnection conn;

		protected void Page_Load(object sender, EventArgs e)
		{
			if (Session["username"] == null)
				Response.Redirect("login.aspx");

			conn = connect();
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

		[WebMethod]
		public void SubmitAnnouncement_Click(object sender, EventArgs e)
		{
			queryWrite("INSERT INTO mhsfirst.announcements (poster, title, message) VALUES ('" + Session["username"] + "', '" + Request.Form["addAnnouncementName"] + "', '" + Request.Form["addAnnouncementText"] + "');");
		}

		[WebMethod]
		public void RemoveAnnouncement_Click(object sender, EventArgs e)
		{
			queryWrite("DELETE FROM mhsfirst.announcements WHERE ID = '" + Request.Form["removeAnnouncementID"] + "';");
		}

		[WebMethod]
		public void InsertSQLQuery_Click(object sender, EventArgs e)
		{
			queryWrite(Request.Form["SQLQuery"]);
		}
	}
}