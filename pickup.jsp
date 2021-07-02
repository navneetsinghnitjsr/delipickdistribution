<%-- 
    Document   : pickup
    Created on : 3 Mar, 2018, 2:20:56 PM
    Author     : Navneet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>

<html>
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
<!-- body -->
        
    <%
   
            String Name= request.getParameter("name");
            String S_add= request.getParameter("S_add");
            String landmark= request.getParameter("landmark");
            String state= request.getParameter("state");
            String pincode=request.getParameter("pincode");
            String mobile= request.getParameter("mobile");
            String altmobile= request.getParameter("altmobile");
            String email= request.getParameter("email");
            String C_type= request.getParameter("C_type");
            String pdb= request.getParameter("pdb");
            String length= request.getParameter("length");
            String bredth= request.getParameter("bredth");
            String height= request.getParameter("height");
            String dim= request.getParameter("dim");
            String d_add= request.getParameter("d_add");
            String d_state= request.getParameter("d_state");
            String d_pin= request.getParameter("d_pin");
            String rem= request.getParameter("rem");
            long refid;
            
            Random rd= new Random();
            
            refid =10000+ rd.nextInt(99999);
            
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
                
                PreparedStatement ps= cn.prepareStatement("insert into PICKUP values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1,refid+"");
                ps.setString(2,Name);
                ps.setString(3,S_add);
                ps.setString(4,state);
                ps.setString(5,pincode);
                ps.setString(6,mobile);
                ps.setString(7,altmobile);
                ps.setString(8,email);
                ps.setString(9,C_type);
                ps.setString(10,pdb);
                ps.setString(11,dim);
                ps.setString(12,d_add);
                ps.setString(13,d_state);
                ps.setString(14,d_pin);
                ps.setString(15,rem);
                ps.setString(16,length);
                ps.setString(17,bredth);
                ps.setString(18,height);
                ps.setString(19,landmark);
                
                
                int c=ps.executeUpdate();
                out.print(c+"recored inserted");
                cn.close();
            }
            catch(Exception ex)
            {
                out.print(ex);
            }
            
        
    
%>      
<br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<div>
<center><h1>Your Reference ID is =<font color="blue">"<%out.print(refid+"");%>"</font><h1></center></div>
<div class="container">
            <h5> <font color="green"><b>Please  Note:</b></font></h5>
                            <ul>
                                <li>Pickup will be scheduled from Monday to Saturday between 10AM to 7PM - Except Holidays</li>
                                <li>Pickup may be Scheduled only for the locations serviced by <font color="Blue">DELIPICK</font></li>
                                <li>DELIPICK representative will get in touch with you during working hours once the forms is submitted</li>
                                <li>We accept Debit/Credit Card at our selected booking Cities.
                                   
                            </ul>
                        
    </div>
      <br><br><br>
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
		
