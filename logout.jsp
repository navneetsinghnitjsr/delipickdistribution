<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <body>
        <%
             session.invalidate();
        %>
        <jsp:forward page="index_1.html"/>
</body>
</html>