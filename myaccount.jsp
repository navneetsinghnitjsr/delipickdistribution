<%-- 
    Document   : myaccount
    Created on : 28 Mar, 2018, 5:49:02 PM
    Author     : Navneet
--%>

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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
            <div class="container" style="margin-left:197px; background:white; height:843px; width:AUTO;"><BR><BR>
                <BR>
               <%
                   String uid= (String) session.getAttribute("uid");
                    String username= (String) session.getAttribute("username");
                try
                {
                    
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
              
                    PreparedStatement ps= cn.prepareStatement("select * from customer where c_id=?");
                    ps.setString(1,uid);
                 
                    ResultSet rs= ps.executeQuery();
                    out.print("<center><h1>WELCOME CUSTOMER</h1></center><br>");
                    out.print("<h1>");
                    out.print("<table border=1 width='80%'>");
                   out.print("<tr style='background:grey;color:white;fontsize:5;'><td>CUSTOMER ID</td><td>CUSTOMER NAME</td><td>CUSTOMER PHONE</td><td>CUSTOMER TYPE</td><td>ADDRESS</td><td>CITY</td><td>PINCODE</td></tr>");
                     
                    
                    while(rs.next())
                    {
                        
                        out.print("<tr  style='background:lightgrey;color:white;'>");
                      out.print("<td>" +rs.getString("c_id") + "</td>");
                        out.print("<td>" +rs.getString("c_name") + "</td>");
                        out.print("<td>" +rs.getString("c_phone") + "</td>");
                        out.print("<td>" +rs.getString("c_type") + "</td>");
                        out.print("<td>" +rs.getString("c_address") + "</td>");
                        out.print("<td>" +rs.getString("c_city") + "</td>");
                        out.print("<td>" +rs.getString("c_pincode") + "</td>");
                        
                        out.print("</tr>");
                   
                    }
                    out.print("</table>");
                    out.print("</h1>");
                  
                }
                catch(Exception ex)
                {
                        out.print(ex);
                }
         
                %>  
                  
                  <div> <br><br><center>
                          <a href="adddetails.jsp" class="btn btn-primary">UPDATE DETAILS</a></center>
                    </div>  </div>
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
		
