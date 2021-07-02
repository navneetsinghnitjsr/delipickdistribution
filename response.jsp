<%-- 
    Document   : response
    Created on : 23 Mar, 2018, 7:17:18 PM
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
 </head>
<!-- navigation -->

<div margin:none; padding: 0px;">
     
<br><br><br><br><br>
<!--form section-->
<section class="contact-w3ls">
    <i class="fa fa-compass" aria-hidden="true"></i>
    <h3 class="text-center">Feedback Dashboard</h3>
	<div style="margin-left:403px;" class="container" style="height: 300px;width: 100%;">		
		 <%
                try
                {
               
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
                
                    PreparedStatement ps= cn.prepareStatement("select * from fedback");
                    
                    ResultSet rs=ps.executeQuery();                 
                    
                    
                    %>
                    <table border="1">
                        <b> <th color="gray"><tr style='background:grey;color:white;'><td><b>SELECT QUERY</b></td><td><b>FEEDBACK ID</b></td><td><b>EMAIL ID</b></td><td><b>MOBILE</b></td><td><b>SUBJECT</b></td><td><b>SELECT</b></td></tr></th></b>
                    <%
                    while(rs.next())
                    {
                        %>
                            <tr>
                                <form action="ship.jsp" method="post">
                                    <td><input type="radio" name="refid" value=<%=rs.getString("email")%>></td>
                                    <td><%=rs.getString("f_id")%></td>
                                    <td><%=rs.getString("email")%></td>
                                    <td><%=rs.getString("mobile")%></td>
                                    <td><%=rs.getString("subject")%></td>
                                    <td><input type="submit" class="btn btn-primary" value="VIEW MASSAGE"></td>
                                    
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
 <!--complaint-->
<div margin:none; padding: 0px;">
     
<br><br><br><br><br>
<!--form section-->
<section class="contact-w3ls">
    <i class="fa fa-compass" aria-hidden="true"></i>
    <h3 class="text-center">COMPLAINT Dashboard</h3>
	<div style="margin-left:433px;" class="container" style="height: 300px;width: 100%;">		
		 <%
                try
                {
               
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
                
                    PreparedStatement ps= cn.prepareStatement("select * from CONTACT");
                    
                    ResultSet rs=ps.executeQuery();                 
                    
                    
                    %>
                    <table border="1">
                        <b> <th color="gray"><tr style='background:grey;color:white;'><td><b>SELECT COMPLAINT</b></td><td><b>EMAIL ID</b></td><td><b>REFERENCE ID </b></td><td><b>SUBJECT</b></td><td><b>SELECT</b></td></tr></th></b>
                    <%
                    while(rs.next())
                    {
                        %>
                            <tr>
                                <form action="ship.jsp" method="post">
                                    <td><input type="radio" name="refid" value=<%=rs.getString("email")%>></td>
                                    <td><%=rs.getString("email")%></td>
                                    <td><%=rs.getString("reference_id")%></td>
                                    <td><%=rs.getString("cmtype")%></td>
                                    <td><input type="submit" class="btn btn-primary" value="REPLY"></td>
                                    
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

                               