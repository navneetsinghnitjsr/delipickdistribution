<%-- 
    Document   : track.jsp
    Created on : 15 Mar, 2018, 6:46:19 PM
    Author     : Navneet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<!DOCTYPE html>
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
<body><!-- navigation -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="customer.jsp"><h1><span class="fa fa-diamond" aria-hidden="true"></span>Delipick Distribution</h1></a>
        <!--/.nav-collapse -->
    </div>
</nav>
    
<!-- navigation -->
              <div margin:none; padding: 0px;">
            <div style=" margin-left: 0px; background:green; float:left; width:15%; height:787px; margin-top: 57px;">
                <a style="width:200px;" href="myaccount.jsp" class="btn btn-primary"><b>My Account</b></a><br>
                <a style="width:200px;" href="pickupc.jsp" class="btn btn-primary"><b>Booking For Pickup</b></a><br>
                <a style="width:200px;" href="trackordr.jsp" class="btn btn-primary"><b>Track Consignment</b></a><br>
                <a style="width:200px;" href="#" class="btn btn-primary"><b>Contact Center</b> </a><br>
                <a style="width:200px;" href="changepass.jsp" class="btn btn-primary"><b>Change Password</b></a><br>
                <a style="width:200px;" href="logout.jsp" class="btn btn-primary"><b>Log Out</b></a>        
            </div>
            <div style="margin-left:203px; background:graytext; height:1000px; width:86%;">
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
                                <li>We accept Debit/Credit Card at our selected booking Cities.
                                   
                            </ul> 
    </div>
            </div></div>
        </div>

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
