<%-- 
    Document   : uploadCoverPic
    Created on : May 31, 2020, 6:23:26 PM
    Author     : sonam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="uploadCoverPic" method="post" enctype="multipart/form-data" >
            <input type="file" name="coverPic">
            <input type="submit">
            
        </form>
    </body>
</html>
