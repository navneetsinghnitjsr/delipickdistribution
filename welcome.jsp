<%-- 
    Document   : welcome.jsp
    Created on : 6 Mar, 2018, 5:29:28 PM
    Author     : Navneet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : myinbox
    Created on : Feb 18, 2018, 1:28:10 PM
    Author     : Sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    
        
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>MAIL ON</title>
<!--

-->
    <!-- load stylesheets -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400">  <!-- Google web font "Open Sans" -->
    <link rel="stylesheet" href="css/bootstrap.min.css">                                      <!-- Bootstrap style -->
    <link rel="stylesheet" href="css/templatemo-style.css">                                   <!-- Templatemo style -->
    <link rel="stylesheet" href="css/mycss.css">                                   <!-- Templatemo style -->
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
</head>
    <body>
        <div class="tm-header">
            <div class="container-fluid">
                <div class="tm-header-inner">
                    <a href="#" class="navbar-brand tm-site-name" style="color:brown; width:20%;background-color: white; text-align: left;">MAIL ON</a>
                   
                    <!-- navbar -->
                    <nav class="navbar tm-main-nav">

                        <button class="navbar-toggler hidden-md-up" type="button" data-toggle="collapse" data-target="#tmNavbar">
                            &#9776;
                        </button>
                        
                       
                    </nav>  

                </div>                                  
            </div>            
        </div>
        <div>
            <div style=" margin-left: 10px; float:left; width:20%; height: 600px;">
                <a style="width:200px;" href="fedback.html" >Compose</a><br>
                <a style="width:200px;" href="pickup.html" >Your Mails</a><br>
                <a style="width:200px;" href="sentmail.jsp" >Sent mail</a><br>
                <a style="width:200px;" href="#" >Important mail</a><br>
                <a style="width:200px;" href="#" >Draft</a><br>
                <a style="width:200px;" href="#" >Recycle bin</a><br>
                <a style="width:200px;" href="upload.jsp" >Upload</a><br>
                <a style="width:200px;" href="change.jsp" >Change password</a><br>
                <a style="width:200px;" href="#" >Log Out</a>        
            </div>
            <div style="margin-left: 280px; height: 600px; width: 80%;">
             
            </div>
        </div>
        
        <footer class="tm-footer">
            <div class="container-fluid">
                <div class="row">
                    
                    

                    
                </div>

                <div class="row">
                    <div class="col-xs-12 tm-copyright-col"> 
                        <p class="tm-copyright-text">Copyright 2050 MAIL ON</p>
                    </div>
                </div>
            </div>
        </footer>

        <!-- load JS files -->
        <script src="js/jquery-1.11.3.min.js"></script>             <!-- jQuery (https://jquery.com/download/) -->
        <script src="https://www.atlasestateagents.co.uk/javascript/tether.min.js"></script> <!-- Tether for Bootstrap, http://stackoverflow.com/questions/34567939/how-to-fix-the-error-error-bootstrap-tooltips-require-tether-http-github-h --> 
        <script src="js/bootstrap.min.js"></script>                 <!-- Bootstrap (http://v4-alpha.getbootstrap.com/) -->

    </body>
</html>
