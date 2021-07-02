<%-- 
    Document   : orderc1
    Created on : 29 Mar, 2018, 6:08:31 PM
    Author     : Navneet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
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
				<li><a href="orderc.jsp">Order Dashboard</a></li>
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
     
<br><br><br><br><br><br><br><br><br><br><br><br>
<!--form section-->
<%
   
            String name= request.getParameter("name");
            String Sadd= request.getParameter("Sadd");
            String state= request.getParameter("sstate");
            String spin= request.getParameter("spin");
            String phn=request.getParameter("phn");
            String aphn= request.getParameter("aphn");
            String email= request.getParameter("email");
            String odate= request.getParameter("odate");
            String dadd= request.getParameter("dadd");
            String dstate= request.getParameter("dstate");
            String dpin= request.getParameter("dpin");
            String l= request.getParameter("l");
            String dtype= request.getParameter("dtype");
            String ctype= request.getParameter("ctype");
            String b= request.getParameter("b");
            String h= request.getParameter("h");
            String landmark= request.getParameter("landmark");
            String date= request.getParameter("date");
            String message= request.getParameter("message");
            long refid;
            
            Random rd= new Random();
            
            refid =10000+ rd.nextInt(99999);
            
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
                
                PreparedStatement ps= cn.prepareStatement("insert into shipment values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                ps.setString(1,refid+"");
                ps.setString(2,name);
                ps.setString(3,Sadd);
                ps.setString(4,state);
                ps.setString(5,spin);
                ps.setString(6,phn);
                ps.setString(7,aphn);
                ps.setString(8,email);
                ps.setString(9,odate);
                ps.setString(10,dtype);
                ps.setString(11,dadd);
                ps.setString(12,dstate);
                ps.setString(13,dstate);
                ps.setString(14,dpin);
                ps.setString(15,message);
                ps.setString(16,l);
                ps.setString(17,b);
                ps.setString(18,h);
                ps.setString(19,landmark);
                
                
                int c=ps.executeUpdate();
                out.print(c+"recored inserted");
                cn.close();
            }
            catch(Exception ex)
            {
                out.print(ex);
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

