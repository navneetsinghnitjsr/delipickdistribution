<%-- 
    Document   : payments
    Created on : 21 Mar, 2018, 4:12:54 PM
    Author     : Navneet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<<head>
<title>Delipick Distribution</title>
<!-- css files -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
</head>
body>
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
				<a class="navbar-brand" href="admin.jsp"><h1><span class="fa fa-diamond" aria-hidden="true"></span>Delipick Distribution</h1></a>
                        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="order.jsp">Order</a></li>
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
<!-- navigation -->

<div margin:none; padding: 0px;">
     
<br><br><br><br><br>
    <!--form section-->
        <section class="contact-w3ls">
	<div class="container">
		<i class="fa fa-compass" aria-hidden="true"></i>
		<h3 class="text-center">PAYMENTS</h3>
		<p class="text-center"><font color="blue"><b></b></font></p>	
		
			<form action="payments2.jsp" method="post" name="name" id="contactForm" novalidate>
                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile1">    
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">REFERENCE ID:</label>
                            <input type="text" class="form-control" name="reference_id" id="name" required data-validation-required-message="Please enter Return ID.">
                            <p class="help-block"></p>
                        </div>
                    </div>	
                  		</div>
				<div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1"> </label>
                            <button type="submit" class="btn btn-primary">Search</button><br><br><br><br>
							<p class="help-block"></p>
						</div>
                    </div></div>
                        </form>
                <br><br><br>
                                                                                   
         <section class="contact-w3ls">
	<i class="fa fa-compass" aria-hidden="true"></i>
		<h3 class="text-center">Add Details For Consignment Payments</h3>
		<h4 class="text-center"><font color="red">All fields are mandatory</font></h4><br><br><br><br>	
		
			<form action="payments1.jsp" method="post" name="sentMessage" id="contactForm" novalidate>
                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile1">    
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">REFERENCE ID:</label>
                            <input type="text" class="form-control" name="rfid" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>	
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Customer Name:</label>
                            <input type="tel" class="form-control" name="name" id="phone" required data-validation-required-message="Please enter your phone number.">
							<p class="help-block"></p>
						</div>
                    </div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">AMOUNT:</label>
                            <input type="text" class="form-control" name="amt" id="email" required data-validation-required-message="Please enter your address.">
							<p class="help-block"></p>
						</div>
                    </div>
                                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Email ID:</label>
                            <input type="email" placeholder="abc@xyz.com " class="form-control" name="email" id="email" required data-validation-required-message="Please enter Email ID.">
							<p class="help-block"></p>
						</div>
                                    </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile2"></div>
						</div>                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile1">    
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Date of Payment:</label>
                            <input type="date" class="form-control" name="date" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>	
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">PAYMENT STATUS:</label>
                            
                        
                                            <p class="help-block">
                            <select name="toi">
                                <option value="Done">Done</option>
                                <option value="Not Done">Not Done</option>
                                
                            </select></p>			</div>
                    </div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Remarks:</label>
                            <input type="text" placeholder="Fill remarks regarding payment like cheque number etc." class="form-control" name="remarks" id="name" required data-validation-required-message="Please enter your address.">
							<p class="help-block"></p>
						</div>
                    </div>
                                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">PAYMENT MODE:</label>
                            
                            <p class="help-block"> 
                           <select name="pm" class="contact-p1" class="help-block" class="form-control" id="design" required data-validation-required-message="Please select your Designantion."></p>
                                                            <option value="CASH">CASH</option>
                                                            <option value="CHEQUE">CHEQUE</option>
                                                            <option value="PAYTM Wallet">PAYTM Wallet</option>
                                                            
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

