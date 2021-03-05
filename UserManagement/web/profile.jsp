<%-- 
    Document   : profile
    Created on : May 23, 2020, 9:19:08 PM
    Author     : Rai jee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.cw.sad.model.User"%>

<% User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Profile Card</title>
        <link href="CSS/style3.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>

        <div class="card-container">

            <div class="upper-container">
                <div class="image-container">
                    <img src="img/download.png" />
                </div>
            </div>

            <div class="lower-container">
                <div>
                    <h3></h3>
                    <h4>Welcome <%= user.getName()%></h4>
                </div>
                <div>
                    <p>click below to view your Dashboard you can upload image, edit your profile and many more stuff as you want.</p>
                </div>
                <div>
                    <a href="dashboard.jsp" class="btn">View Dashboard</a>
                </div>
            </div>

        </div>

    </body>
</html>
