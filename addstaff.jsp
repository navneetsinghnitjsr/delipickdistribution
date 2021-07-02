<%-- 
    Document   : addstaff
    Created on : 20 Mar, 2018, 8:29:27 PM
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
					<a class="navbar-brand" href="admin.jsp"><h1><span class="fa fa-diamond" aria-hidden="true"></span>Delipick Distribution</h1></a>
                        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="order.jsp">Order </a></li>
				<li><a href="addstaff.jsp">Add Staff</a></li>
				<li><a href="trackadmin.jsp">Track Consignment</a></li>
				<li><a href="returnpage.jsp">Returns</a></li>
				<li><a href="payments.jsp">Payments</a></li>
				<li><a href="search.jsp">Search</a></li>
                                <li><a href="response.jsp">Response Tab</a></li>
                                <li><a href="changepassadmin.jsp">Change Passworsd</a></li>
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
		<div class="container">
		<i class="fa fa-compass" aria-hidden="true"></i>
		<h3 class="text-center">STAFF CREATION</h3>
		<p class="text-center"><font color="blue"><b></b></font></p>	
		
			<form action="addstaff1.jsp" method="post" name="sentMessage" id="contactForm" novalidate>
                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile1">    
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">FULL NAME:</label>
                            <input type="text" class="form-control" name="name" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>	
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">PHONE NUMBER:</label>
                            <input type="tel" class="form-control" name="phone" id="phone" required data-validation-required-message="Please enter your phone number.">
							<p class="help-block"></p>
						</div>
                    </div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">ADDRESS:</label>
                            <input type="text" class="form-control" name="add" id="email" required data-validation-required-message="Please enter your address.">
							<p class="help-block"></p>
						</div>
                    </div>
                                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">EMAIL ID:</label>
                            <input type="Email" class="form-control" name="email" id="email" required data-validation-required-message="Please enter Email ID.">
							<p class="help-block"></p>
						</div>
                                    </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile2"></div>
						</div>                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile1">    
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">PROOF No:</label>
                            <input type="text" class="form-control" name="poi" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>	
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">TYPE of PROOF:</label>
                            
                        
                                            <p class="help-block">
                            <select name="toi">
                                <option value="AADHAR CARD">AADHAR CARD</option>
                                <option value="IDENTITY CARD">IDENTITY CARD</option>
                                <option value="DRIVING LICENCE">DRIVING LICENCE </option>
                                <option value="PAN CARD">PAN CARD </option>
                                <option value="MOOL NIWAS">MOOL NIWAS </option>
                                <option value="RASAN card">RASAN CARD</option>
                            </select></p>			</div>
                    </div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">DATE of JOINING:</label>
                            <input type="date" class="form-control" name="doj" id="name" required data-validation-required-message="Please enter your address.">
							<p class="help-block"></p>
						</div>
                    </div>
                                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">DESIGNATION:</label>
                            
                            <p class="help-block">
                                <select name="design" class="contact-p1" class="help-block" class="form-control" id="design" required data-validation-required-message="Please select your Designantion."></p>
                                                            <option value="CLREK">CLREK</option>
                                                            <option value="Manager">Manager</option>
                                                            <option value="Assistant Manager">Assistant Manager</option>
                                                            <option value="Operation Manager">Operation Manager</option>
                                                            <option value="IT Executive">IT Executive</option>
                                                            <option value="HR">HR</option>
                                                            <option value="Quality Manager">Quality Manager</option>
                                                            <option value="Delivery Executive">Delivery Executive</option>
                                                            <option value="Admin">Admin</option>
                                                            <option value="Assistant Admin">Assistant Admin</option>
                                                            <option value="Packaging Staff">Packaging Staff</option>
                                                            <option value="Quality Staff">Quality Staff</option>
                                                            <option value="Warehouse Executive">Warehouse Executive</option>
                                                            <option value="Warehouse Manager">Warehouse Manager</option>
                                                            <option value="Warehouse Team">Warehouse Team</option>
                                                            <option value="Assistant Staff">Assistant Staff</option>
                                                            <option value="Other">Other</option>
                                                            
                                                            
                                                            
                                                        </select>
                            
                            </p>
						</div>
                                    </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile2"></div>
						</div
                                                      <div class=col-lg-12">  <button type="submit" class="btn btn-primary">Submite</button>
                                                        <button type="reset" class="btn btn-primary" value="reset">Clear</button>
                                                        </div>
                    </div>
				</div>

                    
				</div>
				<div class="clearfix"></div>	
            </form>            
       	
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

