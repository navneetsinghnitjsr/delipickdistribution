<%-- 
    Document   : seecomplaints
    Created on : 26 Mar, 2018, 7:32:07 PM
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
            String refid=request.getParameter("refid");
            
   
            try
            {

                Class.forName("org.apache.derby.jdbc.ClientDriver");
                Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");

                PreparedStatement ps= cn.prepareStatement("select * from CONTACT where reference_id=?");
                ps.setString(1,refid);
                
                ResultSet rs=ps.executeQuery();                 

                String ct="";
                
                %>
                <table border="1">
                     <tr style='background:grey;color:white;'><td>SUBJECT</td><td>Message</td><td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td></tr>
                <%
                while(rs.next())
                {
                    ct=rs.getString("cmtype");
                    %>
                    <tr>
                        <td><%=rs.getString("cmtype")%></td>
                        <td><%=rs.getString("msg")%></td>
                        <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
                    </tr>
                    <%
                }
                ps= cn.prepareStatement("select * from CONTACT_detail where refid=?");
                ps.setString(1,refid);
                
                rs=ps.executeQuery();                 

                while(rs.next())
                {
                    %>
                    <tr>
                        <td><%=ct%></td>
                        <td><%=rs.getString("messg")%></td>
                        <td><%=rs.getString("msgtime")%></td>
                    </tr>
                    <%
                }
                %>

                
                </table>
                
                <form action="seecomplaintssave.jsp">
                    <input type="text" name="reply">
                    <input type="hidden" name="refid" value=<%=refid%>>
                    <input type="submit" value="Reply">
                </form>
                <%
                
                
                
                cn.close();
            }
            catch(Exception ex)
            {
                out.print(ex);
            }

            
        %>
    </body>
</html>
