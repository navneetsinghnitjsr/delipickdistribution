<%-- 
    Document   : changepassadmin
    Created on : 26 Mar, 2018, 12:25:26 PM
    Author     : Navneet
--%>

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
					<a class="navbar-brand" href="order.jsp"><h1><span class="fa fa-diamond" aria-hidden="true"></span>Delipick Distribution</h1></a>
                        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="order.jsp">Order</a></li>
				<li><a href="addstaff.jsp">Add Staff</a></li>
				<li><a href="trackadmin.jsp">Track Consignment</a></li>
				<li><a href="returnpage.jsp">Returns</a></li>
				<li><a href="payments.jsp">Payments</a></li>
				<li><a href="search.jsp">Search</a></li>
                                <li><a href="response.jsp">Response Tab</a></li>
                                <li><a href="changepassadmin.jsp">Change Password</a></li>
				<li><a href="logout.jsp">Logout</a></li>
				
					</div>
        <!--/.nav-collapse -->
    </div>
</nav>
 </head>
<!-- navigation -->

<div margin:none; padding: 0px;">
     
<br><br><br><br><br>
<!--form section-->
<section class="contact-w3ls">
	<div class="container">
		<i class="fa fa-compass" aria-hidden="true"></i>
		<h3 class="text-center">CHANGE PASSWORD</h3>
		<p class="text-center"><font color="blue"><b></b></font></p>	
                <center>
                    <form action="changepassadmin1.jsp" method="post">
                    <table>
                        <tbody>
                            <tr>
                                <td>Username:</td>
                                <td><input type="text" name="userid" value="" /></td> 
                            </tr>
                            <tr><td>Old Password:</td>
                                <td><input type="text" name="Old password" value="" /></td>
                                </tr>
                                <br>
                                <tr><td>New Password:</td>
                                <td><input type="text" name="password" value="" /></td> 
                                </tr>
                                <br>
                                 <tr><td>Confirm Password:</td>
                                <td><input type="text" name="Confirm password" value="" /></td> 
                                <br>
                                
                              </tr>
                          </tbody>
                    </table>
                        </center>
                             <center><input type="submit" value="Change Password" class="btn btn-primary" >
                             <input type="reset" value="Cencel" class="btn btn-primary" ></center><br><br><br><br>
							<p class="help-block"></p>
						</div>
                </div> </form> </div>             
                <br><br><br>
                                                                                   
         <section class="contact-w3ls">
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

