using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MHSFirst
{
	public partial class home : System.Web.UI.Page
	{
		public string LoginText;
		public string LoginURL;
		public string LinkVisible = "";

		protected void Page_Load(object sender, EventArgs e)
		{
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
		}
	}
}