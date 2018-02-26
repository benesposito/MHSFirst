<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about_us.aspx.cs" Inherits="MHSFirst.about_us" %>

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
						<div class="main_text">
							<p>
								When life gives you lemons, don't just make lemonade. We are FRC 5113, 
								the Combustible Lemons! Founded in 2014, we are based out of Moorestown 
								High School in Moorestown, NJ. We are made up of high school students 
								of all ages and academic and technical skill. This season (2016) we 
								have about 60 students working together on robot design and construction, 
								competitions, marketing, and outreach. Our current team breakdown is 1% 
								youth, 35% freshmen, 20% sophomores, 22% juniors, and 22% seniors, with 
								a male-female ratio of 2-1. Have a look at the <a href="http://www.mhsfirst.org/about/competitions">
								Competitions page</a> to learn more about each year's competition and 
								the robot we've built for it.
							</p>

							<p>
								Helping us are a team of teachers and professional engineers and businesspeople 
								who act as mentors for the team. More information on them is available on our 
								<a href="http://www.mhsfirst.org/about/mentors">Mentors page</a>.
							</p>

							<p>
								FIRST teams are about more than just the robot. Since our inception, we 
								have been working hard to establish ourselves both in our school and in our 
								community, promoting STEM and the values of FIRST by helping out at local 
								science fairs and public events. Be sure to check out our <a href="http://www.mhsfirst.org/about/outreach">
								Outreach page</a> to learn more about the work we're doing in our community.
							</p>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
    </div>

	<script type="text/javascript">

		if( <%= LinkVisible %> == true)
		{
			document.getElementById("admin_link").style.visibility = "hidden";
		}
		else
		{
			document.getElementById("admin_link").style.visibility = "visible";
		}

	</script>

</body>

</html>