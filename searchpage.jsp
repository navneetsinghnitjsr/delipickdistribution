<%-- 
    Document   : searchpage
    Created on : 22 Mar, 2018, 12:47:26 PM
    Author     : Navneet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
        <%
            String s1=request.getParameter("searchid");
            String s2=request.getParameter("searchtype");
            
            if(s2.equals("employee"))
            {
                try
                {
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");

                    PreparedStatement ps= cn.prepareStatement("select * from employee where e_id=?");
                    ps.setString(1,s1);
                    ResultSet rs=ps.executeQuery();
                    
                    if(rs.next())
                    {
                        out.print(rs.getString("E_name"));
                    }
                    cn.close();
                    
                }
                catch(Exception x)
                {
                    out.print(x);
                }
            }
            else if(s2.equals("customer"))
            {
                            try
                {
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");

                    PreparedStatement ps= cn.prepareStatement("select * from customer where c_id=?");
                    ps.setString(1,s1);
                    ResultSet rs=ps.executeQuery();
                    
                    if(rs.next())
                    {
                        out.print(rs.getString("c_name"));
                    }
                    cn.close();
                    
                }
                catch(Exception x)
                {
                    out.print(x);
                }
            }
            else if(s2.equals("tracking"))
            {
            try
                {
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");

                    PreparedStatement ps= cn.prepareStatement("select * from shipment where reference_id=?");
                    ps.setString(1,s1);
                    ResultSet rs=ps.executeQuery();
                    
                    if(rs.next())
                    {
                        out.print(rs.getString("reference_id"));
                        out.print(rs.getString("name"));
                        out.print(rs.getString("s_address"));
                        out.print(rs.getString("s_state"));
                        out.print(rs.getString("s_pincode"));
                        out.print(rs.getString("phone"));
                        out.print(rs.getString("alt_phn"));
                    }
                    cn.close();
                    
                }
                catch(Exception x)
                {
                    out.print(x);
                }
            }
            else if(s2.equals("consignmentreturn"))
            {
            try
                {
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");

                    PreparedStatement ps= cn.prepareStatement("select * from return where reference_id=?");
                    ps.setString(1,s1);
                    ResultSet rs=ps.executeQuery();
                    
                    if(rs.next())
                    {
                        out.print(rs.getString("return_id"));
                        out.print(rs.getString("reference_id"));
                        out.print(rs.getString("c_name"));
                        out.print(rs.getString("s_address"));
                        out.print(rs.getString("d_address"));
                        out.print(rs.getString("Return_type"));
                        out.print(rs.getString("dor"));
                        out.print(rs.getString("remarks"));
                    }
                    cn.close();
                    
                }
                catch(Exception x)
                {
                    out.print(x);
                }
            
            }
            else if(s2.equals("consignmentpayment"))
            {
            
            try
                {
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");

                    PreparedStatement ps= cn.prepareStatement("select * from payment where reference_id=?");
                    ps.setString(1,s1);
                    ResultSet rs=ps.executeQuery();
                    
                    if(rs.next())
                    {
                        out.print(rs.getString("transaction_id"));
                        out.print(rs.getString("reference_id"));
                        out.print(rs.getString("tracking_id"));
                        out.print(rs.getString("amount"));
                        out.print(rs.getString("payment_status"));
                        out.print(rs.getString("payment_mode"));
                        out.print(rs.getString("payment_date"));
                        out.print(rs.getString("c_name"));
                        out.print(rs.getString("remarks"));
                    }
                    cn.close();
                    
                }
                catch(Exception x)
                {
                    out.print(x);
                }
            

            }
        %>
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

                
