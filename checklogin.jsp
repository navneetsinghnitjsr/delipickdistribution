<%-- 
    Document   : CheckLogin
    Created on : Feb 4, 2018, 1:53:39 PM
    Author     : Sunny
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
            String user= request.getParameter("mail");
            String password= request.getParameter("password");
            
            
            try
            {
               Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
                
                PreparedStatement ps= cn.prepareStatement("select * from login where userid=? and password=?");
                ps.setString(1, user);
                ps.setString(2, password);
 
                ResultSet rs= ps.executeQuery();
                
               if(rs.next())
                {
                    session.setAttribute("uid", user);
                    session.setAttribute("username",rs.getString("name"));
                    
                   
                    if(rs.getString("user_type").equals("admin"))
                    {
                       %>
                       <jsp:forward page="admin.jsp"/>
                       <%
                    }
                    else if(rs.getString("user_type").equals("customer"))
                    {
                        %>
                       <jsp:forward page="customer.jsp"/>
                       <%
                    }
                    else if(rs.getString("user_type").equals("clerk"))
                    {
                        %>
                       <jsp:forward page="clerk.jsp"/>
                       <%
                    }
                    else if(rs.getString("user_type").equals("fe"))
                    {
                        %>
                        <jsp:forward page="delivery.jsp"/>
                        <%
                    }
                }
                
              else
                {
                    %>
                    <jsp:forward page="index_1.html"/>
                    <%
                }
           
                cn.close();
            }
            catch(Exception ex)
            {
                out.print(ex);
            }
            
        %>
    </body>
</html>
