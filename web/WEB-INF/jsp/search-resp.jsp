<%-- 
    Document   : search-resp
    Created on : 20/06/2016, 21:29:52
    Author     : Administrador


Id dos Aeroportos:
         00-Bogotá 
         01-Quito
         02-Lima
         03-Santiago
         04-Buenos Aires
         05-Rio de Janeiro
         06-Brasilia 
         07-São Paulo
         08-Caracas
         09-La Paz
 --%>        

<%@ page import="br.com.airtrips.Warshall.Algoritmo_Warshall"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <link rel="icon" href="${pageContext.request.contextPath}/resources/images/favicon.ico">
        <title>AirTrips</title>

        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/resources/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <link href="${pageContext.request.contextPath}/resources/bootstrap/assets/css/ie10-viewport-bug-workaround.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="${pageContext.request.contextPath}/resources/css/index.css" rel="stylesheet">

        <!-- Custom menu style -->
        <link href="${pageContext.request.contextPath}/resources/css/menu.css" rel="stylesheet">
    
        </head>
        
        <body>
        <%
            
            int origem = Integer.parseInt(request.getParameter("origem"));
            int destino = Integer.parseInt(request.getParameter("destino"));
            
            Algoritmo_Warshall.AlgoritmoWharshall(origem,destino);
        %>
        </body>
        
    
</html>


