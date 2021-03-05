<%-- 
    Document   : newjspwelcone
    Created on : May 6, 2020, 1:51:49 PM
    Author     : Rai jee
--%>

<%@page import="com.cw.sad.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Page</title>
    </head>
    <body>
        <h1>
            Welcome <%= user.getName()%> </h1>
        <h3>
            Your ID is <%= user.getId()%> </h3>
        <h3>
            Your Email is <%= user.getEmail()%> </h3>



    </body>
</html>

