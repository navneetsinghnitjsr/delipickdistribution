<%-- 
    Document   : ship
    Created on : 23 Mar, 2018, 7:54:29 PM
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
            String rid=request.getParameter("refid");
            out.print(rid);
            
                try
                {
               
                    Class.forName("org.apache.derby.jdbc.ClientDriver");
                    Connection cn= DriverManager.getConnection("jdbc:derby://localhost:1527/DP");
                
                    PreparedStatement ps= cn.prepareStatement("select * from pickup where reference_id=?");
                                        
                    ps.setString(1,rid);
                    
                    ResultSet rs=ps.executeQuery();
                    if(rs.next())
                    {
                        PreparedStatement ps1= cn.prepareStatement("insert into shipment values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
                        ps1.setString(1,rs.getString("reference_id"));
                        ps1.setString(2,rs.getString("name"));
                        ps1.setString(3,rs.getString("s_address"));
                        ps1.setString(4,rs.getString("s_state"));
                        ps1.setString(5,rs.getString("s_pincode"));
                        ps1.setString(6,rs.getString("phone"));
                        ps1.setString(7,rs.getString("alt_phn"));
                        ps1.setString(8,rs.getString("email"));
                        ps1.setString(9,rs.getString("consign_type"));
                        ps1.setString(10,rs.getString("pick_date"));
                        ps1.setString(11,rs.getString("consin_dem_dim"));
                        ps1.setString(12,rs.getString("d_address"));
                        ps1.setString(13,rs.getString("d_state"));
                        ps1.setString(14,rs.getString("d_pincode"));
                        ps1.setString(15,rs.getString("remarks"));
                        ps1.setString(16,rs.getString("consin_dem_l"));
                        ps1.setString(17,rs.getString("consin_dem_b"));
                        ps1.setString(18,rs.getString("consin_dem_h"));
                        ps1.setString(19,rs.getString("landmark"));
                        
                        
                        ps1.executeUpdate();
                       
                        //delete code
                    PreparedStatement ss= cn.prepareStatement("delete from pickup where reference_id=?");
                    ss.setInt(1, Integer.parseInt(rid));
                    ss.executeUpdate();
                    cn.close();
                    out.print("Message delete");
                        
                    }
                }
                catch(Exception ex)
                {
                    out.print(ex);
                }
        %>
    </body>
</html>
