<%@ page import="java.util.*,javax.mail.*"%>
<%@ page import="javax.mail.internet.*" %>
<%@page import="java.util.*" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

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
			<a class="navbar-brand" href="index.html"><h1><span class="fa fa-diamond" aria-hidden="true"></span>Delipick Distribution</h1></a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-left">
				<li class="active"><a href="index_1.html">Home</a></li>
				<li><a href="about.html">About</a></li>
				<li><a href="#">Services</a></li>
				<li><a href="#">Join Us</a></li>
                                <li><a href="#">Gallery </a></li>
                                <li><a href="pickup.html">Request for Pickup</a></li><li class="dropdown">
                                   <a href="#" class="dropdown-toggle" data-toggle="dropdown"> Contact US<b class="caret"></b></a>
                                   <div class="dropdown-menu">
                                       <div class="track-w3ls">
                                           <br>
                                           <a href="fedback.html" class="btn btn-primary">Feedback</a>
                                                                <a href="fedback.html" class="btn btn-primary">Quary</a>
                                                                <a href="fedback.html" class="btn btn-primary">Complaint</a>
							<h3>Track Complaint Request</h3>
							<form action="process.html" method="post">
								<input type="text" name="trackcode" placeholder="Complaint ID" required />
								<button type="submit" class="btn btn-primary">Track</button>
                                                                
							</form>
                                                        
                                                        <center>or</center>
							<p class="track-p1">Mail Us :</p>
							<p class="track-p2"><a href="mailto:mail@example.com">mail@Delipick.com</a></p>
						</div>
                                   </div>
                               </li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-truck" aria-hidden="true"></i> Track Consignment<b class="caret"></b></a>
					<div class="dropdown-menu">
						<div class="track-w3ls">
							<h3>Tracking Consignment</h3>
							<form action="process.html" method="post">
								<input type="text" name="trackcode" placeholder="Tracking ID or Reference ID" required />
								<button type="submit" class="btn btn-primary">Track</button>
							</form>
							<p class="track-p1">Contact Us :</p>
							<p class="track-p2"><a href="mailto:mail@example.com">mail@Delipick.com</a></p>
						</div>
					</div>
				</li>
				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-lock" aria-hidden="true"></i> Login<b class="caret"></b></a>
					<div class="dropdown-menu">
						<div class="login-w3ls">
							<h3>Login To Your Account</h3>
							<form action="#" method="post">
								<input type="text" name="email1" placeholder="Username or email" required />
								<input type="password" name='password' placeholder="Password" required> 
								<input type="submit" class="btn btn-primary" name="submit" value="Login">
                                                                <a href="signup.html" class="btn btn-primary">SIGN UP</a>
							</form>
						</div>
					</div>
				</li>
			</ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<!-- navigation -->

<div>
      <%
       String mail=request.getParameter("mail");
       session.setAttribute("uid",mail);
    //Creating a result for getting status that messsage is delivered or not!
    String result;
    // Get recipient's email-ID, message & subject-line from index.html page
    final String to = request.getParameter("mail");
    final String subject = "forget Password OTP"; //request.getParameter("sub");
    String messg; //request.getParameter("mess");
    
    //OTP Geneartion
    
    Random rd= new Random();
    int n= 1000 + rd.nextInt(9000);
    messg="your OTP is "+ n;
    
    
    // Sender's email ID and password needs to be mentioned
    final String from = "abcdwxyz10001@gmail.com";
    final String pass = "navneetnavi";
 
    // Defining the gmail host
    String host = "smtp.gmail.com";
 
    // Creating Properties object
    Properties props = new Properties();
 
    // Defining properties
    props.put("mail.smtp.host", host);
    props.put("mail.transport.protocol", "smtp");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.user", from);
    props.put("mail.password", pass);
    props.put("mail.port", "587");
 
    // Authorized the Session object.
    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, pass);
        }
    });
 
    try {
        // Create a default MimeMessage object.
        MimeMessage message = new MimeMessage(mailSession);
        // Set From: header field of the header.
        message.setFrom(new InternetAddress(from));
        // Set To: header field of the header.
        message.addRecipient(Message.RecipientType.TO,
                new InternetAddress(to));
        // Set Subject: header field
        message.setSubject(subject);
        // Now set the actual message
        message.setText(messg);
        // Send message
        Transport.send(message);
        
        
        session.setAttribute("otp", n+"");
        
       
        %>
        <jsp:forward page="forgetpassword2.jsp"/>
        <%
    } 
    catch (MessagingException mex) 
    {
        //mex.printStackTrace();
        out.println(mex);
        result = "Error: unable to send mail....";
    }
%>
<br><br><br><br><br><br><br><br><br>

</div>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
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
		
