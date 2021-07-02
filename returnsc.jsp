<%-- 
    Document   : returnsc
    Created on : 26 Mar, 2018, 6:16:15 PM
    Author     : Navneet
--%>

<%@page import="java.sql.*" %>

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
	<div class="container">
		<i class="fa fa-compass" aria-hidden="true"></i>
		<h3 class="text-center">RETURN CONSIGNMENT</h3>
		<p class="text-center"><font color="blue"><b></b></font></p>	
		
			<form action="returnpage1.jsp" method="post" name="name" id="contactForm" novalidate>
                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile1">    
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Return ID:</label>
                            <input type="text" class="form-control" name="name" id="name" required data-validation-required-message="Please enter Return ID.">
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
		<h3 class="text-center">Add details For Return Consignment</h3>
		<h4 class="text-center"><font color="red">All fields are mandatory</font></h4><br><br><br><br>	
		
			<form action="returnpage2.jsp" method="post" name="sentMessage" id="contactForm" novalidate>
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
                            <label class="contact-p1">Mobile No.:</label>
                            <input type="tel" class="form-control" name="phone" id="phone" required data-validation-required-message="Please enter your phone number.">
							<p class="help-block"></p>
						</div>
                    </div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">SOURCE ADDRESS:</label>
                            <input type="text" class="form-control" name="sadd" id="email" required data-validation-required-message="Please enter your address.">
							<p class="help-block"></p>
						</div>
                    </div>
                                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">DESTINATION ADDRESS:</label>
                            <input type="text" class="form-control" name="dadd" id="email" required data-validation-required-message="Please enter Email ID.">
							<p class="help-block"></p>
						</div>
                                    </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile2"></div>
						</div>                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile1">    
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">CUSTOMER NAME:</label>
                            <input type="text" class="form-control" name="name" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>	
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">TYPE of RETURN:</label>
                            
                        
                                            <p class="help-block">
                            <select name="tor">
                                <option value="CR">COURIER RETURN</option>
                                <option value="CMR">CUSTOMER RETURN</option>
                                <option value="PD">PHYSICAL DAMAGE</option>
                                <option value="CNA">CUSTOMER NOT AVAILABLE</option>
                                <option value="WA">WRONG ADDRESS</option>
                                <option value="CNR">CUSTOMER NOT REACHABLE</option>
                            </select></p>			</div>
                    </div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">DATE of RETURN:</label>
                            <input type="date" class="form-control" name="dor" id="name" required data-validation-required-message="Please enter your address.">
							<p class="help-block"></p>
						</div>
                    </div>
                                    
                                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile2"></div>
						</div
                                                <div class="control-group form-group">
                        <div class="controls">
                            <div class="controls">
                            
                            <textarea rows="5" cols="50" PLACEHOLDER="Please Fill some remarks about the reson of return consignment" class="form-control" name="message" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea>
							<p class="help-block"></p>
                        </div>
				<div class=col-lg-12">  <button type="submit" class="btn btn-primary">Submit</button>
                                                        <button type="reset" class="btn btn-primary" value="reset">Clear</button>
                                                        </div>
 			
                        </div>
                    </div>		<div class="clearfix"></div>	
            </form>            
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


