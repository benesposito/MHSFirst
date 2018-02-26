using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Collections;
using System.Web.Services;

namespace MHSFirst
{
	public partial class blog : System.Web.UI.Page
	{
		MySqlConnection conn;
		ArrayList forum = new ArrayList();
		public string LoginText;
		public string LoginURL;
		public string forumPost = "";
		public string LinkVisible = "";

		protected void Page_Load(object sender, EventArgs e)
		{
			conn = connect();

			if (Session["username"] == null)
			{
				LoginText = "Login";
				LoginURL = "/login.aspx";
				LinkVisible = "\"visibility: hidden;\"";
			}
			else
			{
				LoginText = "Logout";
				LoginURL = "/logout.aspx";
				LinkVisible = "\"visibility: visible;\"";
			}

			queryRead("SELECT * FROM announcements ORDER BY Timestamp DESC");

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

		protected void queryRead(string query)
		{
			MySqlDataReader dr;
			MySqlCommand cmd = conn.CreateCommand();
			int i = 0;
			cmd.CommandText = query;

			conn.Open();
			dr = cmd.ExecuteReader();

			while (dr.Read())
			{
				if (Session["username"] == null)
				{
					forumPost += "<div class=\"announcement\"><h2>" + dr["Title"].ToString() + "</h2>\n" +
									"\t<p class=\"postInfo\">Posted " + dr["Timestamp"].ToString() + " by " + dr["Poster"].ToString() + "</p>\n" +
									"\t<p class=\"message\">" + dr["Message"].ToString() + "</p>\n</div>\n\n";
				}
				else
				{
					forumPost += "<div class=\"announcement\"><h2>" + dr["Title"].ToString() + "</h2>\n" +
									"\t<p class=\"postInfo\">Posted " + dr["Timestamp"].ToString() + " by " + dr["Poster"].ToString() + "</p>\n" +
									"\t<p class=\"message\">" + dr["Message"].ToString() + "</p>\n" +
									"<asp:Button runat=\"server\" text=\"Delete\" id=\"delete" + dr["ID"] + "\" onclick=\"deletePost_Click\"/>\n" +
									"</div>\n\n";
				}
			}

			conn.Close();
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
		protected void deletePost_Click(object sender, EventArgs e)
		{
			//queryWrite("DELETE FROM announcements WHERE ID = " + id);
			Response.Write("Test!");
		}
	}
}