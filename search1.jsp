<%-- 
    Document   : trackadmin
    Created on : 21 Mar, 2018, 9:04:39 AM
    Author     : Navneet
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<html>
<head>
    
<title>Delipick Distribution</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Courier Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- css files -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- /css files -->
<!-- font files -->
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700italic,700,800,800italic' rel='stylesheet' type='text/css'>
<link href="//fonts.googleapis.com/css?family=Exo+2:100,200,300,400,500,600,700,800,900" rel="stylesheet">
<!-- /font files -->
<!-- js files -->

<!-- /js files -->
</head>
<body>
<!-- navigation -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
					<a class="navbar-brand" href="index.html"><h1><span class="fa fa-diamond" aria-hidden="true"></span>Delipick Distribution</h1></a>
                        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="order.jsp">Order</a></li>
				<li><a href="addstaff.jsp">Add Staff</a></li>
				<li><a href="trackadmin.jsp">Track Consignment</a></li>
				<li><a href="returnpage.jsp">Returns</a></li>
				<li><a href="process.html">Payments</a></li>
				<li><a href="typo.html">Search</a></li>
                                <li><a href="typo.html">Response Tab</a></li>
                                <li><a href="changepass.jsp">Change Passworsd</a></li>
				<li><a href="logout.jsp">Logout</a></li>
				
					</div>
        <!--/.nav-collapse -->
    </div>
</nav>
<!-- navigation -->

<div margin:none; padding: 0px;">
     <br><br><br><br><br>
<!--form section-->



   <%
       
       String id= request.getParameter("rid");
       String type= request.getParameter("type");
       
       
                try
                {
                    
                  
                    
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
                
                if(type.indexOf("customer")>-1)
                {
                   
                    PreparedStatement ps= cn.prepareStatement("select * from customer where c_id=?");
                    ps.setString(1,id);
                    ResultSet rs= ps.executeQuery();
                    out.print("<center><h3>Customer</h3></center><br>");
                    out.print("<table width='100%'>");
                   out.print("<tr style='background:grey;color:white;'><td>cid</td><td>name</td><td>phone</td><td>type</td><td>pincode</td><td>city</td><td>address</td></tr>");
                     
                     out.print("<tr  style='background:lightgrey;color:white;'>");
                        out.print("<td>" +rs.getString("c_id") + "</td>");
                        out.print("<td>" +rs.getString("c_name") + "</td>");
                        out.print("<td>" +rs.getString("c_phone") + "</td>");
                        out.print("<td>" +rs.getString("c_type") + "</td>");
                        out.print("<td>" +rs.getString("c_pincode") + "</td>");
                        out.print("<td>" +rs.getString("c_city") + "</td>");
                        out.print("<td>" +rs.getString("c_address") + "</td>");
                      out.print("</tr>");
                    out.print("</table>");
                    
                }
                else
                {
                       PreparedStatement ps1= cn.prepareStatement("select * from employee where e_id=?");
                        ps1.setString(1,id);
                    ResultSet rs1= ps1.executeQuery();
                    out.print("<center><h3>Employee</h3></center><br>");
                    out.print("<table width='100%'>");
                   out.print("<tr style='background:grey;color:white;'><td>eid</td><td>name</td><td>phone</td><td>designation</td><td>doj</td><td>poi</td><td>tpoi</td><td>address</td><td>email</td></tr>");
                     
                     out.print("<tr  style='background:lightgrey;color:white;'>");
                        out.print("<td>" +rs1.getString("e_id") + "</td>");
                        out.print("<td>" +rs1.getString("e_name") + "</td>");
                        out.print("<td>" +rs1.getString("phone") + "</td>");
                        out.print("<td>" +rs1.getString("designation") + "</td>");
                        out.print("<td>" +rs1.getString("e_doj") + "</td>");
                        out.print("<td>" +rs1.getString("e_poi") + "</td>");
                        out.print("<td>" +rs1.getString("t_poi") + "</td>");
                        out.print("<td>" +rs1.getString("e_address") + "</td>");
                        out.print("<td>" +rs1.getString("email") + "</td>");
                      out.print("</tr>");
                    out.print("</table>");
                }
                cn.close(); 
                }
                catch(Exception ex)
                {
                        out.print(ex);
                }
            %>  
           

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

                