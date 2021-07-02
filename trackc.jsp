<%-- 
    Document   : trackc
    Created on : 26 Mar, 2018, 6:21:29 PM
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
					<a class="navbar-brand" href="clerk.jsp"><h1><span class="fa fa-diamond" aria-hidden="true"></span>Delipick Distribution</h1></a>
                        <div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="orderc.jsp">Order</a></li>
				<li><a href="returnsc.jsp">Returns</a></li>
				<li><a href="trackc.jsp">Track Consignment</a></li>
				<li><a href="searchc.jsp">Search</a></li>
                                <li><a href="responsec.jsp">Response Tab</a></li>
                                <li><a href="changepassc.jsp">Change Passworsd</a></li>
				<li><a href="logout.jsp">Logout</a></li>
				
					</div>
        <!--/.nav-collapse -->
    </div>
</nav>
 </head>
<!-- navigation -->
<!-- navigation -->

<div margin:none; padding: 0px;">
     
<br><br><br><br><br>
<!--form section-->
<section class="contact-w3ls">
	<div class="container"><BR>
            <marquee><font color="blue">Delipick brings convenience at your fingertips. You can now request pick-up of your shipment or delivery within India or Abroad by simply filling up the details in the below form.</marquee><BR>
            <i class="fa fa-compass" aria-hidden="true"></i>
		<h3 class="text-center">TRACK CONSIGNMENT</h3>
		<p class="text-center"><font color="black"><b>Please fill the Tracking ID in the Search Box</b></font></p>	
                <form action="track.jsp" method="post" name="sentMessage" id="contactForm" novalidate>
                    
            <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">TRACKING ID:</label>
                            <input type="text" class="form-control" name="REFERENCE_ID" id="message" required data-validation-required-message="Please enter your tracking id" maxlength="999" style="resize:none"></textarea>
							<p class="help-block"></p>
                        </div>
                    </div>
                    <div id="success"></div>
                    <!-- For success/fail messages -->
                    <button type="submit" class="btn btn-primary">GET DETAILS</button>
                    <button type="reset" class="btn btn-primary">Clear</button>
                    <h5> <font color="green"><b>Please  Note:</b></font></h5>
                            <ul>
                                <li>Pickup will be scheduled from Monday to Saturday between 10AM to 7PM - Except Holidays</li>
                                <li>Pickup may be Scheduled only for the locations serviced by <font color="Blue">DELIPICK</font></li>
                                <li>DELIPICK representative will get in touch with you during working hours once the forms is submitted</li>
                                <li>We accept Debit/Credit Card at our selected booking Cities.
                                   
                            </ul>
				</div>
    <div class="clearfix"></div>
            </form>            
       	 <div class="container">
             
    </div>
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

