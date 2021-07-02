<%-- 
    Document   : dashboardpage
    Created on : 23 Mar, 2018, 7:51:12 PM
    Author     : Navneet
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                try
                {
               
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
                
                    PreparedStatement ps= cn.prepareStatement("select * from pickup");
                    
                    ResultSet rs=ps.executeQuery();                 
                    
                    
                    %>
                    <table border="1">
                        <tr><td>select id</td><td>Reference Id</td><td>Name</td><td>Source</td><td>Pincode</td><td>Phone</td><td>Landmark</td><td>Shipment?</td></tr>
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
                                    <td><input type="submit" value="Send to Shipment"></td>
                                    
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
    </body>
</html>
