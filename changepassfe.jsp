<%-- 
    Document   : changepassfe
    Created on : 29 Mar, 2018, 12:06:52 PM
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
			<a class="navbar-brand" href="delivery.jsp"><h1><span class="fa fa-diamond" aria-hidden="true"></span>Delipick Distribution</h1></a>
        <!--/.nav-collapse -->
    </div>
</nav>
    
<!-- navigation -->
              <div margin:none; padding: 0px;">
            <div style=" margin-left: 0px; background:green; float:left; width:15%; height:787px; margin-top: 57px;">
                <a style="width:200px;" href="ppacket.jsp" class="btn btn-primary"><b>Pickup Consignment</b> </a><br>
                <a style="width:200px;" href="dpacket.jsp" class="btn btn-primary"><b>Delivery Consignment</b> </a><br>
                <a style="width:200px;" href="changepassfe.jsp" class="btn btn-primary"><b>Change Password</b></a><br>
                <a style="width:200px;" href="logout.jsp" class="btn btn-primary"><b>Log Out</b></a>        
            </div>
        </div>
                <div style="margin-left:204px; background:graytext; height:auto; width:Auto;">
<br><br><br><br><div class="container">
    <link rel="stylesheet" href="css/mycss.css">
    <center><h1>CHANGE PASSWORD</h1></center>
                <center>    <form action="changepassfe1.jsp" method="post">
                    <table>
                       
                        <tbody>
                            <tr>
                                <td>User name</td>
                                <td><input type="text" name="userid" value="" /></td> 
                            </tr>
                            <tr><td>Old password</td>
                                <td><input type="text" name="Old password" value="" /></td>
                                </tr>
                                <br>
                                <tr><td>New password</td>
                                <td><input type="text" name="password" value="" /></td> 
                                </tr>
                                <br>
                                 <tr><td>Confirm password</td>
                                <td><input type="text" name="Confirm password" value="" /></td> 
                                <br>
                                
                              </tr>
                          </tbody>
                    </table>
                        <center>
            <br>  
                <input type="submit" value="Change Password" class="btn btn-primary" >
                <input type="reset" value="Cencel" class="btn btn-primary" ></center>

                    </form></center>
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
