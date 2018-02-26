<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="MHSFirst.admin" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head runat="server">
		<title>Administration</title>
		<link rel="stylesheet" href="admin.css" type="text/css" />
	</head>

	<body>
		<div class="home">
			<a href="home.aspx" id="home">Home</a>
		</div>

		<form runat="server">
			<label for="addAnnouncement">Add Announcement:</label>
			<input type="text" name="addAnnouncementName" />
			<br /> <br />
			<textarea name="addAnnouncementText" rows="3" cols="30" placeholder="Announcement Text"></textarea>
			<br />
			<asp:Button runat="server" id="submit_announcement" text="Add" onclick="SubmitAnnouncement_Click" />
			<br /><br /><br />

			<label for="removeAnnouncement">Remove Announcement (ID):</label>
			<input type="text" name="removeAnnouncementID" />
			<br />
			<asp:Button runat="server" id="remove_announcement" text="Remove" onclick="RemoveAnnouncement_Click" />
			<br /><br /><br />

			<label for="insertSQL">SQL Query:</label>
			<input tyle="text" name="SQLQuery" />
			<br />
			<asp:Button runat="server" id="insert_SQLQuery" Text="Execute" OnClick="InsertSQLQuery_Click" />
		</form>
	</body>
</html>
