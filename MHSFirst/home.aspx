<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="MHSFirst.home" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>Combustible Lemons 5113</title>
    <link rel="stylesheet" href="core.css" type="text/css">
</head>
<body>

	<div class="signin">
		<a href="<%=LoginURL %>"><%= LoginText%></a>
		<a href="admin.aspx" style=<%= LinkVisible %>>Admin</a>
	</div>

    <div class="wrapper">
        <a href="home.aspx"><img src="assets/MainPageLogo.png" style="padding-bottom: 15px;" class="center"></a>

        <div class="navbar">
            <ul>
                <li><a href="home.aspx">Home</a></li>
                <li><a href="about_us.aspx">About Us</a></li>
				<li><a href="blog.aspx">Blog</a></li>
				<li><a href="about_first.aspx">About FIRST</a></li>
            </ul>
        </div>

        <table class="main_table">
            <tbody style="padding-top: 0px;">
                <tr>
                    <td class="sidebar">
                        <table class="sidebar_table">
							<tr>
								<td><p class="sidebar_p">Check us out on</p></td>
							</tr>
							<tr>
								<td><table class="socialmedia_table">
									<tr>
										<td><a href="https://www.facebook.com/pages/FRC-Moorestown-Combustible-Lemons-5113/597451380346852"><img width="90" src="assets/facebook.png"></a></td>
										<td><a href="https://www.youtube.com/channel/UCgVuGY8dtMjPue41x_A4a2A"><img width="90" src="assets/youtube.png"></a></td>
									</tr>
									<tr>
										<td><a href="https://twitter.com/FRC5113"><img width="90" src="assets/twitter.png"></a></td>
										<td><a href="http://instagram.com/frc5113"><img width="90" src="assets/instagram.png"></a></td>
									</tr>
									<tr>
										<td><a href="https://www.flickr.com/photos/frc5113/"><img width="90" src="assets/flickr.png"></a></td>
										<td><a href="http://5113combustiblelemons.tumblr.com/"><img width="90" src="assets/tumblr.png"></a></td>
									</tr>
								</table></td>
							</tr>
							<tr>
								<td><p class="sidebar_p">2016 Sponsers</p></td>
							</tr>
							<tr>
								<td><a href="http://www.firstinspires.org/"><img class="sidebar_img" src="/assets/FIRST_logo.png" width="200px" height="150px" /></a></td>
							</tr>
							<tr>
								<td><a href="http://corporate.comcast.com/"><img class="sidebar_img" src="/assets/Comcast_NBCUniversal_logo.png" width="200px" height="74px" /></a></td>
							</tr>
							<tr>
								<td><a href="http://www.asrcfederal.com/mse/pages/default.aspx"><img class="sidebar_img" src="/assets/ASRC_Federal_logo.png" width="200px" height="98px" /></a></td>
							</tr>
							<tr>
								<td><a href="http://www.lockheedmartin.com/"><img class="sidebar_img" src="/assets/Lockheed_Martin_logo.png" width="200px.png" height="82px" /></a></td>
							</tr>
							<tr>
								<td><a href="http://www.opex.com/"><img class="sidebar_img" src="/assets/OPEX_logo.png" width="200px" height="63px" /></a></td>
							</tr>
							<tr>
								<td><a href="http://www.moorestowneducationfoundation.org/"><img class="sidebar_img" src="/assets/MEF_logo.png" width="200px" height="103px" /></a></td>
							</tr>
							<tr>
								<td><a href="http://patientstar.com/"><img class="sidebar_img" src="/assets/Patient_Star_logo.png" width="200px" height="83px" /></a></td>
							</tr>
							<tr>
								<td><a href="http://www.i3health.com/"><img class="sidebar_img" src="/assets/i3_Health_logo.png" width="200px" height="64px" /></a></td>
							</tr>
							<tr>
								<td><a href="http://www.comegnolaw.com/"><img class="sidebar_img" src="/assets/Comegno_ logo.png" width="200px" height="89px" /></a></td>
							</tr>
							<tr>
								<td><a href="http://www.morroneandkaye.com/"><img class="sidebar_img" src="/assets/Orthodontics_logo.png" width="200px" height="100px" /></a></td>
							</tr>
                        </table>
                    </td>

                    <td class="main_td">
                        <div class="announcements">
                            <ul>
                                <li id="update_bar">Updates!</li>
                                <li>
                                    <a href="http://www.mhsfirst.org/blog/welcometofirststronghold">
                                        Welcome to FIRST STRONGHOLD!
                                    </a> It's time for the 2016 Build
                                    Season to begin! This year's challenge: FIRST Stronghold.
                                    <a href="https://youtu.be/VqOKzoHJDjA">Check it out!</a>
                                </li>
                                <li>Announcement #2</li>
                                <li>Announcement #3</li>
                            </ul>
                        </div>

                        <div class="main_text">
                            <p>
                                Welcome to the landing page for FIRST Robotics Competition Team 5113,
                                the Combustible Lemons! We are based out of Moorestown High School
                                in Moorestown, NJ. Currently in our fourth year, we have been working
                                hard to build and establish ourselves in both our school and our
                                community. Be sure to check out the links at the top to learn more
                                about us and the buttons on the left to see us in action!
                            </p>

							<a class="twitter-timeline" data-height="800" data-theme="light" href="https://twitter.com/FRC5113">Tweets by FRC5113</a>
							<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>

    </div>

</body>

</html>
