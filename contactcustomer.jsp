<%-- 
    Document   : trackordr
    Created on : 15 Mar, 2018, 7:28:13 PM
    Author     : Navneet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<head>
<title>Delipick Distribution </title>
<!-- for-mobile-apps -->
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
			<a class="navbar-brand" href="index.html"><h1><span class="fa fa-diamond" aria-hidden="true"></span>Delipick Distribution</h1></a>
        <!--/.nav-collapse -->
    </div>
</nav>
       
<!-- navigation -->
              
<div>
    
</div>                                  
            </div>            
        </div>
         <div margin:none; padding: 0px;">
            <div style=" margin-left: 3px; background:green; float:left; width:15%; height:943px; margin-top: 57px;">
                <a style="width:200px;" href="trackorder.jsp" class="btn btn-primary"><b>My Account</b></a><br>
                <a style="width:200px;" href="pickupc.jsp" class="btn btn-primary"><b>Booking For Pickup</b></a><br>
                <a style="width:200px;" href="trackordr.jsp" class="btn btn-primary"><b>Track Consignment</b></a><br>
                <a style="width:200px;" href="contactcustomer.jsp" class="btn btn-primary"><b>Contact Center</b> </a><br>
                <a style="width:200px;" href="changepass.jsp" class="btn btn-primary"><b>Change Password</b></a><br>
                <a style="width:200px;" href="logout.jsp" class="btn btn-primary"><b>Log Out</b></a>        
            </div>
            <div style="margin-left:203px; background:graytext; height:1000px; width:86.75%;">
            <br><br><br><br><div class="container">
                <a href="cmstatus.jsp"><input type="button" class="btn btn-xs" name="status" value="VIEW COMPLAINT/REQUEST STATUS"></a>
    <link rel="stylesheet" href="css/mycss.css">
    <br><br><br><br><br><br><center>
        
         <h3 c_lass="container"><font color="Blue"><b>SERVICE COMPLAINTS</b></font></h3>
         <br><br>
        <form action="contectcustomer1.jsp" class="b-filler" method="POST">
           <table border="0">
                
                <tbody>
                    
                        <tr>
                        <td>Email</td>
                        <td></td>
                        <td><input placeholder="@abc.com" type="email" name="email" value="" /></td>
                    </tr>
                        <td>Reference ID*</td>
                        <td></td>
                        <td><input type="text" class="b-filler" name="reference_id" value="" /></td>
                    </tr>                    
                    <tr>
                        <td>Type of Complaint*</td>
                        <td></td>
                        <td><select name="c_type">
                                <option value="late delivery">Late Delivery</option>
                                <option value="Damage">Damage</option>
                                <option value="Document Missing">Document Missing</option>
                                <option value="Non receipt COD">Non receipt COD</option>
                                <option value="Other">Other</option>

                            </select>
                    <tr>
                        <td>Contact No.*</td>
                        <td></td>
                        <td><input type="text" name="phn" value="" /></td>
                    </tr>
                    
                    <tr>
                         <td>Message*<font color="blue"></font></td>
                         <td></td>
                        <td><textarea placeholder="Your comments Max 500 characters Please do provide bullets points for immediate effect" name="msg" rows="6" cols="50" class="b-filler" /></textarea></td>
                    </tr>
                    
                    
                    <tr>
                         <td>Alternate Mobile No. </td>
                         <td></td>
                         <td><input type="text" name="altphn" value="" /></td> 
                    </tr>
                    
                 </tbody>
                </table></center><center>
            <br>  
                <input type="submit" value="Submit Request" class="btn btn-primary" >
                <input type="reset" value="Clear" class="btn btn-primary" ></center>
        </form>
         
    <br><br><br>
     </center>   
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
