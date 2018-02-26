<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="MHSFirst.login" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head runat="server">
		<title>Login</title>
		<link rel="stylesheet" href="login.css" type="text/css" />
	</head>
	<body>
		<div class="wrapper">
			<form runat="server">
				<input name="username" type="text" placeholder="Username" />
				<br /><br />
				<input name="password" type="password" placeholder="Password" />
				<br /><br />
				<input name="login_submit" type="submit" value="Login" />
				<a href="home.aspx">Home</a>
			</form>
		</div>
	</body>
</html>
