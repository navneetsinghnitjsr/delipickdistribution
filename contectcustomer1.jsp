<%-- 
    Document   : contectcustomer1
    Created on : 23 Mar, 2018, 6:48:47 PM
    Author     : Navneet
--%>


<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
<%
   
            
            
            String email= request.getParameter("email");
            String reference_id= request.getParameter("reference_id");
            String c_type= request.getParameter("c_type");
            String phn= request.getParameter("phn");
            String msg= request.getParameter("msg");
            String altphn= request.getParameter("altphn");
            long refid;
            Random rd= new Random();
            refid =10000+ rd.nextInt(99999);
            
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
                
                PreparedStatement ps= cn.prepareStatement("insert into CONTACT values(?,?,?,?,?,?,?)");
                ps.setString(1,email);
                ps.setString(2,reference_id);
                ps.setString(3,c_type);
                ps.setString(4,phn);
                ps.setString(5,msg);
                ps.setString(6,altphn);
                ps.setString(7,refid+"");
                ps.executeUpdate();
                
                cn.close();
            }
            catch(Exception ex)
            {
                out.print(ex);
            }
            
        
    
%>
<center><h1>Your Complaint ID is =<font color="blue">"<%out.print(refid+"");%>"</font><h1></center></div>
    </body>
</html>
