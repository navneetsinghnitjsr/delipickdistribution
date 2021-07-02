<%-- 
    Document   : pickupc.jsp
    Created on : 15 Mar, 2018, 5:45:19 PM
    Author     : Navneet
--%>
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
              <div margin:none; padding: 0px;">
            <div style=" margin-left: 0px; background:green; float:left; width:15%; height:787px; margin-top: 57px;">
                <a style="width:200px;" href="myaccount.jsp" class="btn btn-primary"><b>My Account</b></a><br>
                <a style="width:200px;" href="pickupc.jsp" class="btn btn-primary"><b>Booking For Pickup</b></a><br>
                <a style="width:200px;" href="trackordr.jsp" class="btn btn-primary"><b>Track Consignment</b></a><br>
                <a style="width:200px;" href="#" class="btn btn-primary"><b>Contact Center</b> </a><br>
                <a style="width:200px;" href="changepass.jsp" class="btn btn-primary"><b>Change Password</b></a><br>
                <a style="width:200px;" href="logout.jsp" class="btn btn-primary"><b>Log Out</b></a>        
            </div>
            <div class="container" style="margin-left:197px; background:graytext; height:843px; width:AUTO;"><BR><BR>
                            <br><br><link rel="stylesheet" href="css/mycss.css">
    <center> 
        <marquee><font color="blue">Delipick brings convenience at your fingertips. You can now request pick-up of your shipment or delivery within India or Abroad by simply filling up the details in the below form.</marquee>
        <h1 >Booking For Pick-up Consignment</h1>
        <h6 > <font color="red">(Please fill the mandatory field(s)marked with an(*)asterisk)</font></h6>
    </center> <center>
        <form action="pickupc1.jsp" class="b-filler" method="POST">
           <table border="0">
                <br>
                <tbody>
                    <tr>
                        <td>Name*</td>
                        <td></td>
                        <td><input type="text" class="b-filler" name="Name" value="" /></td>
                    </tr>
                    <tr>
                        <td>Address*</td>
                        <td></td>
                        <td><input type="text" name="S_add" value="" /></td>
                    </tr>
                    <tr>
                        <td>Landmark*</td>
                        <td></td>
                        <td><input type="text" name="landmark" value="" /></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td></td>
                        <td><input type="text" name="City" value="" /></td>
                    </tr>
                    <tr>
                        <td>State</td>
                        <td></td>
                        <td><input type="text" name="state" value="" /></td>
                    </tr>
                    <tr>
                        <td>Pincode*</td>
                        <td></td>
                        <td><input type="text" name="pincode" value="" /></td>
                    </tr>
                    
                
                     <tr>
                         <td>Mobile No. *</td>
                         <td></td>
                         <td><input type="text" name="mobile" value="" /></td> 
                    </tr>
                    <tr>
                         <td>Alternate Mobile No. </td>
                         <td></td>
                         <td><input type="text" name="altmobile" value="" /></td> 
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td></td>
                        <td><input placeholder="@abc.com" type="email" name="email" value="" /></td>
                    </tr>
                   
                     
                    <tr>
                        <td>Consignment Type*</td>
                        <td></td>
                        <td><select name="C_type">
                                <option value="document">Document</option>
                                <option value="ndocument">Non-Document</option>

                            </select></td>
                            
                    </tr>
                      <tr>
                        <td>Pickup Date*</td>
                        <td></td>
                        <td><input type="date" name="pdb" value="" /></td>
                    </tr>      
                    <tr>
                        <td>Consignment Dimension*</td>
                        <td></td>
                        <td><input placeholder="Length" type="text" name="lenght" value=""/>
                            <input placeholder="Bredth" type="text" name="Bredth" value=""/>
                            <input placeholder="Height" type="text" name="height" value=""/>
                            <select name="dim">
                                <option value="cm">CM</option>
                                <option value="m">Meter</option>
                                <option value="f">Foot</option>

                            </select>
                        </td>
                    </tr>
                     
                    <tr>
                        <td>Destination Address with Landmark*</td>
                        <td></td>
                        <td><input placeholder="Address with landmark" type="text" name="d_add" value="" />
                            <input placeholder="State" type="text" name="d_state" value="" />
                            <input placeholder="Pincode" type="text" name="d_pin" value="" />
                        </tr>
                        <tr>
                        </td>
                        <td>Remarks(if any):</td>
                            <td></td>
                        <td><input type="text" name="rem" value="" size="75"></td>
                    </tr>  
               
                 </tbody>
                </table></center><center>
            <br>  
                <input type="submit" value="Submit Request" class="btn btn-primary" >
                <input type="reset" value="Clear" class="btn btn-primary" ></center>
        </form>
        <div class="container">
            <h5> <font color="green"><b>Please  Note:</b></font></h5>
                            <ul>
                                <li>Pickup will be scheduled from Monday to Saturday between 10AM to 7PM - Except Holidays</li>
                                <li>Pickup may be Scheduled only for the locations serviced by <font color="Blue">DELIPICK</font></li>
                                <li>DELIPICK representative will get in touch with you during working hours once the forms is submitted</li>
                                <li>We accept Debit/Credit Card at our selected booking Cities.
                                   
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
