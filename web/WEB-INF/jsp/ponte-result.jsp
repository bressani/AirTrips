<%-- 
    Document   : ponte-result
    Created on : Jun 20, 2016, 10:32:25 PM
    Author     : vini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Resultado ponte<br>
        <%
            Object obj = request.getAttribute("response");
            out.print(request.getAttribute("response"));
            
        %>
    </body>
</html>
