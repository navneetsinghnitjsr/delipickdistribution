<%-- 
    Document   : addstaff1
    Created on : 20 Mar, 2018, 11:08:59 PM
    Author     : Navneet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
   
            String e_name= request.getParameter("name");
            String phone= request.getParameter("phone");
            String add= request.getParameter("add");
            String email=request.getParameter("email");
            String poi= request.getParameter("poi");
            String toi= request.getParameter("toi");
            String doj= request.getParameter("doj");
            String design= request.getParameter("design");
            
            long refid;
            
            Random rd= new Random();
            
            refid =10000+ rd.nextInt(99999);
            
            try
            {
                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
                
                PreparedStatement ps= cn.prepareStatement("insert into EMPLOYEE values(?,?,?,?,?,?,?,?,?)");
                ps.setString(1,refid+"");
                ps.setString(2,e_name);
                ps.setString(3,phone);
                ps.setString(4,design);
                ps.setString(5,doj);
                ps.setString(6,poi);
                ps.setString(7,toi);
                ps.setString(8,add);
                ps.setString(9,email);
                
                
                int c=ps.executeUpdate();
                out.print(c+"recored inserted");
                cn.close();
            }
            catch(Exception ex)
            {
                out.print(ex);
            }
            %>
            <center><h1>Your Reference ID is =<font color="blue">"<%out.print(refid+"");%>"</font><h1></center></div>
        
    </body>
</html>
