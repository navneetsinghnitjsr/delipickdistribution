<%-- 
    Document   : changepassc1
    Created on : 29 Mar, 2018, 7:27:58 PM
    Author     : Navneet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
					<a class="navbar-brand" href="clerk.jsp"><h1><span class="fa fa-diamond" aria-hidden="true"></span>Delipick Distribution</h1></a>
                        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="orderc.jsp">Order</a></li>
				<li><a href="returnsc.jsp">Returns</a></li>
				<li><a href="trackc.jsp">Track Consignment</a></li>
				<li><a href="searchc.jsp">Search</a></li>
                                <li><a href="responsec.jsp">Response Tab</a></li>
                                <li><a href="changepassc.jsp">Change Password</a></li>
				<li><a href="logout.jsp">Logout</a></li>
				
					</div>
        <!--/.nav-collapse -->
    </div>
</nav>
 </head>
<!-- navigation -->

            <div style="margin-left:273px; background:graytext; height:1000px; width:79.75%;">
            <br><br><br><br><div class="container">
    <link rel="stylesheet" href="css/mycss.css">
 <%
                    
                String s=request.getParameter("userid");
                String s1=request.getParameter("password");
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
                
                PreparedStatement ps= cn.prepareStatement("update login set password=? where userid=?");
                ps.setString(1, s1);
                ps.setString(2,s);
                
                ps.executeUpdate();
                
                out.print("changed successfully");
                cn.close();
                       
                %>       </div>
                <br><br>
<div>
    <center><h1><font color="blue"><b>Your Password Has Been Changed Successfully</b></font><h1>
                <br> <a href="clerk.jsp"><input type="button" value="Home" class="btn btn-primary"></a></center></div>

            </div>
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
