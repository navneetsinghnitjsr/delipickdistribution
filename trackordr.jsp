<%-- 
    Document   : trackordr
    Created on : 15 Mar, 2018, 7:28:13 PM
    Author     : Navneet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
<body><!-- navigation -->
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="customer.jsp"><h1><span class="fa fa-diamond" aria-hidden="true"></span>Delipick Distribution</h1></a>
        <!--/.nav-collapse -->
    </div>
</nav>
    
<!-- navigation -->
<br>
              <div margin:none; padding: 0px;">
            <div style=" margin-left: 0px; background:green; float:left; width:15%; height:497px; margin-top: 34px;">
                <a style="width:200px;" href="myaccount.jsp" class="btn btn-primary"><b>My Account</b></a><br>
                <a style="width:200px;" href="pickupc.jsp" class="btn btn-primary"><b>Booking For Pickup</b></a><br>
                <a style="width:200px;" href="trackordr.jsp" class="btn btn-primary"><b>Track Consignment</b></a><br>
                <a style="width:200px;" href="contactcustomer.jsp" class="btn btn-primary"><b>Contact Center</b> </a><br>
                <a style="width:200px;" href="changepass.jsp" class="btn btn-primary"><b>Change Password</b></a><br>
                <a style="width:200px;" href="logout.jsp" class="btn btn-primary"><b>Log Out</b></a>        
            </div>
                   <div style="margin-left:202.5px; background:url(video2.png); height:530px; width:1350px;">
            <br><br><br><br><link rel="stylesheet" href="css/mycss.css">
    <center> 
        <marquee><font color="white">Delipick brings convenience at your fingertips. You can now request pick-up of your shipment or delivery within India or Abroad by simply filling up the details in the below form.</marquee>
        <h1 ><font color="white">Track Consignment</font></h1>
        <h6 > <font color="white">(Please fill the Tracking ID in the Search Box)</font></h6>
    </center> <center>
        <form action="track.jsp" class="b-filler" method="POST">
           <table border="0">
                <br>
                <tbody>
                    <tr>
                        <td><Font color="white">Tracking ID</font></td>
                        <td></td>
                        <td><input type="text" class="b-filler" name="REFERENCE_ID" value="" /></td>
                    </tr>
                   
                 </tbody>
                </table></center><center>
            <br>  
                <input type="submit" value="Submit" class="btn btn-primary" >
                <input type="reset" value="Clear" class="btn btn-primary" ></center>
        </form><br><br><br><br>
        <div class="container">
            <h5> <font color="green"><b>Please  Note:</b></font></h5>
                            <ul><font color="white">
                                 1.Consignment Delivery will be from Monday to Saturday between 10AM to 7PM - Except Holidays.<br>
                                 2.Delivery may be holiday only for the If customer requested. Holiday delivery charge as per consignment applicable.<br>
                                 3.DELIPICK representative will get in touch with you during working hours once the packet or consignment out for delivery.<br>
                                 4.We accept Debit/Credit Card at our selected booking Cities for COD orders.<br>
                                 </font></font>
                            </ul> 
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
