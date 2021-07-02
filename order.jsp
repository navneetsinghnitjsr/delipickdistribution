<%-- 
    Document   : order.jsp
    Created on : 19 Mar, 2018, 6:52:26 PM
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
    <i class="fa fa-compass" aria-hidden="true"></i>
    <h3 class="text-center">ORDER Dashboard</h3>
	<div style="margin-left:183px;" class="container" style="height: 300px;width: 100%;">		
		 <%
                try
                {
               
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
                
                    PreparedStatement ps= cn.prepareStatement("select * from pickup");
                    
                    ResultSet rs=ps.executeQuery();                 
                    
                    
                    %>
                    <table border="1">
                        <b> <tr style='background:grey;color:white;'><td><b>SELECT ORDER</b></td><td><b>REFERENCE ID</b></td><td><b>CUSTOMER NAME</b></td><td><b>SOURCE ADDRESS</b></td><td><b>PIN CODE</b></td><td><b>PHONE NUMBER</b></td><td><b>LANDMARK</b></td><td><b>Process</b></td></tr></b>
                    <%
                    while(rs.next())
                    {
                        %>
                            <tr>
                                <form action="ship.jsp" method="post">
                                    <td><input type="radio" name="refid" value=<%=rs.getString("reference_id")%>></td>
                                    <td><%=rs.getString("reference_id")%></td>
                                    <td><%=rs.getString("name")%></td>
                                    <td><%=rs.getString("s_address")%></td>
                                    <td><%=rs.getString("s_pincode")%></td>
                                    <td><%=rs.getString("phone")%></td>
                                    <td><%=rs.getString("landmark")%></td>
                                    <td><input type="submit" class="btn btn-primary" value="Proceed"></td>
                                    
                                </form>
                            </tr>
                        <%
                        
                    }
                    %></table><%
                    cn.close();
                }
                catch(Exception ex)
                {
                        out.print(ex);
                }
            
                %>
		
        </div></section>

</div><div>

</div>                
 
<div margin:none; padding: 0px;">
     
<br><br><br><br><br>
    <!--form section-->
        <section class="contact-w3ls">
	<div class="container">
		<i class="fa fa-compass" aria-hidden="true"></i>
		<h3 class="text-center">SEARCH ORDER</h3>
		<p class="text-center"><font color="blue"><b></b></font></p>	
		
			<form action="order1.jsp" method="post" name="" id="contactForm" novalidate>
                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile1">    
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Reference ID:</label>
                            <input type="text" class="form-control" name="id" id="name" required data-validation-required-message="Please enter Return ID.">
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
		<h3 class="text-center">Add details For New Consignment</h3>
		<h4 class="text-center"><font color="red">All fields are mandatory</font></h4><br><br><br><br>	
		
			<form action="orderad1.jsp" method="post" name="sentMessage" id="contactForm" novalidate>
                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile1">    
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Reference ID:</label>
                            <input type="text" class="form-control" name="id" id="name" required data-validation-required-message="Please enter Return ID.">
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
		<h3 class="text-center">Add details For New Consignment</h3>
		<h4 class="text-center"><font color="red">All fields are mandatory</font></h4><br><br><br><br>	
		
			<form action="orderc1.jsp" method="post" name="sentMessage" id="contactForm" novalidate>
                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile1">    
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Name:</label>
                            <input type="text" class="form-control" name="name" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>	
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Source Address:</label>
                            <input type="tel" class="form-control" name="sadd" id="phone" required data-validation-required-message="Please enter your phone number.">
							<p class="help-block"></p>
						</div>
                    </div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">SOURCE State:</label>
                            <input type="text" class="form-control" name="sstate" id="name" required data-validation-required-message="Please enter your address.">
							<p class="help-block"></p>
						</div>
                    </div>
                                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">SOURCE PINCODE :</label>
                            <input type="text" class="form-control" name="spin" id="name" required data-validation-required-message="Please enter Email ID.">
							<p class="help-block"></p>
						</div>
                                    </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile2"></div>
						</div>                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile1">    
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">phone:</label>
                            <input type="text" class="form-control" name="phn" id="phone" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>	
                    		</div>
				<div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Alternate Phone:</label>
                            <input type="text" class="form-control" name="aphn" id="name" required data-validation-required-message="Please enter your address.">
							<p class="help-block"></p>
						</div>
                    </div>
                                </div>
                                                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile1">    
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Email:</label>
                            <input type="email" class="form-control" name="email" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block"></p>
                        </div>
                    </div>	
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Order Date:</label>
                            <input type="tel" class="form-control" name="odate" id="phone" required data-validation-required-message="Please enter your phone number.">
							<p class="help-block"></p>
						</div>
                    </div>
				</div>
				<div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Destination Address:</label>
                            <input type="text" class="form-control" name="dadd" id="name" required data-validation-required-message="Please enter your address.">
							<p class="help-block"></p>
						</div>
                    </div>
                                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Destination State :</label>
                            <input type="text" class="form-control" name="dstate" id="name" required data-validation-required-message="Please enter Email ID.">
							<p class="help-block"></p>
						</div>
                                    </div>
                                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile2"></div>
						</div>                <div class="col-lg-6 col-md-6 col-sm-6 contact-agile1">    
					<div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">Destination Pincode:</label>
                            <input type="text" class="form-control" name="dpin" id="phone" required data-validation-required-message="Please enter your name.">
                            
                            <div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                             <div class="controls">   <label class="contact-p1">LENGTH:</label></div>
                            <input type="text" class="form-control" name="l" id="name" required data-validation-required-message="Please enter your address.">
                            <div class="controls">
                            <label class="contact-p1"></label>
                            <p class="help-block">
                            <select name="dtype">
                                <option value="cm">CM</option>
                                <option value="meter">METER</option>
                                <option value="foot">FOOT</option>
                            </select></p>			</div>
                            <div class="controls">
                            <label class="contact-p1">Type of Document:</label>
                            <p class="help-block">
                            <select name="ctype">
                                <option value="document">Document</option>
                                <option value="non document">Non Document</option>
                                
                            </select></p>			</div>
                        </div><div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                            <label class="contact-p1">BREADTH:</label>
                            <input type="text" class="form-control" name="b" id="name" required data-validation-required-message="Please enter your address.">
                            <label class="contact-p1">HEIGHT:</label>
                            <input type="text" class="form-control" name="h" id="name" required data-validation-required-message="Please enter your address.">
                            </DIV><p class="help-block"></p>
                            
                        </div>
                    </div>	
                    		</div>
				<div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                    <div class="control-group form-group">
                        <div class="controls">
                            <label class="contact-p1">LANDMARK:</label>
                            <input type="text" class="form-control" name="landmark" id="name" required data-validation-required-message="Please enter your address.">
                            
                        </div>
                    </div>
                                    
                                </div><div class="col-lg-6 col-md-6 col-sm-6 contact-agile2">
                    <div class="control-group form-group">
                        <div class="controls">
                            
                            
                        </div>
                        <textarea rows="5" cols="1000" PLACEHOLDER="Please Fill some remarks if any" class="form-control" name="message" id="message" required data-validation-required-message="Please enter your message" maxlength="999" style="resize:none"></textarea></div></div><br><br>
                        <div class="control-group form-group">
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="submit" class="btn btn-primary">Reset</button>
                    </div>
                    </div>
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

                               