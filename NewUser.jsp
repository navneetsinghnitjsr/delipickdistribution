<%-- 
    Document   : NewUser.jsp
    Created on : 21 Feb, 2018, 6:52:55 PM
    Author     : Navneet
--%>

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
				<li><a href="service.html">Services</a></li>
				<li><a href="gallery.html">Gallery </a></li>
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
<!--body-->

<div>

    <center> <br><br><br><br><br><br><br><br><br>
        </center>
    <br><br><br>
<%
   
            String Name= request.getParameter("Name");
            String uid= request.getParameter("UserID");
            String pass= request.getParameter("password");
            
            String mobile= request.getParameter("mobile");
            String email= request.getParameter("email");
            String sq= request.getParameter("question");
            String sa= request.getParameter("sa");
            String dob= request.getParameter("dob");
            
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
                
                PreparedStatement ps= cn.prepareStatement("insert into LOGIN values(?,?,?,?,?,?,?,?,?)");
                ps.setString(1,Name);
                ps.setString(2,uid);
                ps.setString(3,pass);
                ps.setString(4,"customer");
                ps.setString(5,mobile);
                ps.setString(6,email);
                ps.setString(7,sq);
                ps.setString(8,sa);
                ps.setString(9,dob);
                
                
                ps.executeUpdate();
                
                 PreparedStatement ps1= cn.prepareStatement("insert into customer values(?,?,?,?,?,?,?)");
                ps1.setString(1,uid);
                ps1.setString(2,Name);
                ps1.setString(3,mobile);
                ps1.setString(4,"customer");
                ps1.setString(5,"NA");
                ps1.setString(6,"Not available");
                ps1.setString(7,"Not available");
                
                ps1.executeUpdate();
                
                
               
                
                cn.close();
            }
            catch(Exception ex)
            {
                out.print(ex);
            }
            
        
    
%>
Work is Done
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
		
