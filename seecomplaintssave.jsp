<%-- 
    Document   : seecomplaintssave
    Created on : 26 Mar, 2018, 8:15:36 PM
    Author     : Navneet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String msg=request.getParameter("reply");
            String rid=request.getParameter("refid");
            
                DateTimeFormatter dtf = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");  
                LocalDateTime now = LocalDateTime.now();  
                String dt=dtf.format(now);

                try
                {

                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");

                    PreparedStatement ps= cn.prepareStatement("insert into contact_detail values(?,?,?)");
                    ps.setString(1,rid);
                    ps.setString(2,msg);
                    ps.setString(3,dt);
                    ps.executeUpdate();
                    cn.close();
                    
                }
                catch(Exception ex)
                {
                    out.print(ex);
                }
                               
            %>
            <jsp:forward page="seecomplaints.jsp"/>
    </body>
</html>
