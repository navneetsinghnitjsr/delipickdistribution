<%-- 
    Document   : track1
    Created on : 26 Mar, 2018, 10:11:22 AM
    Author     : Navneet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<html>
<head>
<html>
<head>
<title>Delipick Distribution</title>
<!-- css files -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
<body>
<!-- navigation -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index_1.html"><h1><span class="fa fa-diamond" aria-hidden="true"></span>Delipick Distribution</h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-left">
				<li class="active"><a href="index_1.html">Home</a></li>
				<li><a href="about.html">About</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Gallery </a></li>
                                <li><a href="pickup.html">Request for Pickup</a></li>
                               <li><a href="fedback.html"> Contact US</a></li>
                               <li><a href="track.html">Track Consignment</a></li>
                               				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-lock" aria-hidden="true"></i> Login<b class="caret"></b></a>
					<div class="dropdown-menu">
						<div class="login-w3ls">
							<h3>Login To Your Account</h3>
							<form action="checklogin.jsp" method="post">
								<input type="email" name="mail" placeholder="Username or email" required/><br>
								<input type="password" name="password" placeholder="Password" required> 
								<input type="submit" class="btn btn-primary" name="submit" value="Continue">
                                                                <a href="signup.html" class="btn btn-primary">SIGN UP</a><br>
                                                                <a href="forgetpswd.html">Forget Password</a>
							</form>
						</div>
					</div>
				</li>
			</ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<!-- navigation -->
<div style="background:#55acee ; height:auto; width:auto; border: 1px solid black;">
    <br>
<section class="contact-w3ls">
	<div class="container"><BR>
            <marquee><font color="blue">Delipick brings convenience at your fingertips. You can now request pick-up of your shipment or delivery within India or Abroad by simply filling up the details in the below form.</marquee><BR>
            <i class="fa fa-compass" aria-hidden="true"></i>
            <h3 class="text-center">TRACK CONSIGNMENT</h3><br><br><center>
        
                        <%
                    
                    String s=request.getParameter("REFERENCE_ID");
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
                
                PreparedStatement ps= cn.prepareStatement("select * from shipment where REFERENCE_ID=?");
                ps.setString(1, s);
                
                ResultSet rs=ps.executeQuery();
                
                if(rs.next())
                {
                    out.print("<table border=0 color=red>");
                       out.print("<tr>");
                    
                        out.print("<td><b>Reference ID:</b></td>");
                        out.print("<td>" +rs.getString("reference_id") + "</td>");
                    out.print("</tr>");
                    out.print("<tr>");
                        out.print("<td><b>Name:</b></td>");
                        out.print("<td>" +rs.getString("name") + "</td>");
                    out.print("</tr>");
                     out.print("<td><b><b>Source Address:</b></td>");
                        out.print("<td>" +rs.getString("S_address") + "</td>");
                    out.print("</tr>");
                      out.print("<td><b>Source State:</b></td>");
                        out.print("<td>" +rs.getString("S_state") + "</td>");
                    out.print("</tr>");
                     out.print("<td><b>pincode:</b></td>");
                        out.print("<td>" +rs.getString("S_pincode") + "</td>");
                    out.print("</tr>");
                    out.print("<td><b>Phone Number:</b></td>");
                        out.print("<td>" +rs.getString("phone") + "</td>");
                    out.print("</tr>");
                    out.print("<td><b>Alternate Phone:</b></td>");
                        out.print("<td>" +rs.getString("Alt_phn") + "</td>");
                    out.print("</tr>");
                    out.print("<td><b>Destination Address:</b></td>");
                        out.print("<td>" +rs.getString("D_address") + "</td>");
                    out.print("</tr>");
                    out.print("<td><b>Destination State:</b></td>");
                        out.print("<td>" +rs.getString("D_state") + "</td>");
                    out.print("</tr>");
                    out.print("<td><b>Destination Pincode:</b></td>");
                        out.print("<td>" +rs.getString("D_pincode") + "</td>");
                    out.print("</tr>");
                    out.print("<td><b>Status:</b></td>");
                        out.print("<td>" +rs.getString("remarks") + "</td>");
                    out.print("</tr>");
                    
                    
                    
               out.print("</table>");
                
                }
                else
                {
                    out.print("no data found");
                }
                    
                
                %>
    </center>
        <div class="container">
            <h5> <font color="green"><b>Please  Note:</b></font></h5>
                            <ul>
                                <li>Consignment Delivery will be from Monday to Saturday between 10AM to 7PM - Except Holidays.</li>
                                <li>Delivery may be holiday only for the If customer requested. Holiday delivery charge as per consignment applicable.</font></li>
                                <li>DELIPICK representative will get in touch with you during working hours once the packet or consignment out for delivery.</li>
                                <li>We accept Debit/Credit Card at our selected booking Cities for COD orders.
                                   
                            </ul> 
    </div>
            </div></div>

    
<!-- footer section -->
<section class="footer-agileits">
	<div class="container">
		<div class="col-lg-3 col-md-3 col-sm-6">
			
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6">
			
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6">
				<div class="phone">
				</div>
				
			</div>
		</div>
		<div class="col-lg-3 col-md-3 col-sm-6">
				
			<ul class="social-icons2">
				<li><a href="#"><i class="fa fa-facebook"></i></a></li>
				<li><a href="#"><i class="fa fa-twitter"></i></a></li>
				<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
				<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
			</ul>
		</div>
		<div class="clearfix"></div>
		<hr>
		<p class="copyright">© 2016 Delipick Distribution All Rights Reserved | Design by <a href="##" target="_blank">Navneet</a></p>
	</div>
</section>
<!-- /footer section -->
<a href="#0" class="cd-top">Top</a>
<!-- js files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/SmoothScroll.min.js"></script>
<script src="js/index.js"></script>
<script src="js/top.js"></script> 
<script src="js/bgfader.js"></script>
<script>
var myBgFader = $('.header').bgfader([
  'images/banner1-1.jpg',
  'images/banner1-2.jpg',
  'images/banner1-3.jpg',
  'images/banner1-4.jpg',
], {
  'timeout': 2000,
  'speed': 3000,
  'opacity': 0.4
})

myBgFader.start()
</script>
<!-- /js files -->

    </body>
</html>


