<%-- 
    Document   : useredit
    Created on : May 24, 2020, 2:14:16 PM
    Author     : Rai jee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="com.cw.sad.DAO.UserDao"%>
<%@page import="com.cw.sad.connection.ConnectionPro"%>
<%@page import="java.util.List"%>
<%@page import="com.cw.sad.model.User"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix= "c"%>
<%

    int id = Integer.parseInt(request.getParameter("id"));
    UserDao bkd = new UserDao(ConnectionPro.getConnection());
    User us = bkd.getSingleUser(id);
    request.setAttribute("edit_user", us);


%> 
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

        <title>Edit User Data</title>
        <style>
            .inner{
                position: relative;
                margin: 0 auto;
                width: 650px;
                display: block;
                padding: 50px 0;
            }
            h3{
                text-align: center;
                border-bottom: 2px solid midnightblue;
                margin-bottom: 20px;
            }
            nav li a{
                font-size: 25px;
                font-weight: 500;
            }
            a{
                color: #fff;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div  class="container-fluid">
            <nav class="navbar navbar-light">
                <ul class="navbar-nav ml-auto mt-3 mx-5">

                </ul>
            </nav>
        </div>
        <div class="inner">
            <div class=" container">
                <div class="row">
                    <div class="col-12">

                        <h3> Edit Your Details</h3>
                        <form action="UserServlet" method="post">

                            <div class="form-group">
                                <label>User Id</label>
                                <input class="form-control" type="text" name="id" value="${edit_user.id}">
                            </div>

                            <div class="form-group">
                                <label>Username</label>
                                <input class="form-control" type="text" value="${edit_user.name}" placeholder="Username" name="name" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input class="form-control" type="text" value="${edit_user.email}" placeholder="Useremail" name="email" required>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input class="form-control" type="text"  value="${edit_user.password}" placeholder="Password" name="password" required>
                            </div>
                            <div class="form-group">
                                <label>Date-of-Birth</label>
                                <input class="form-control" type="date"  value="${edit_user.dob}" placeholder="Date-of-Birth" name="dob" required>
                            </div> 
                            <div class="form-group">
                                <label>Contact</label>
                                <input class="form-control" type="text"  value="${edit_user.contact}" placeholder="Contact" name="contact" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input class="form-control" type="text"  value="${edit_user.address}" placeholder="Address" name="address" required>
                            </div>


                            <button type="submit" value="Register" class="btn btn-primary">Update</button>

                        </form>

                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="CSS/style3.css" rel="stylesheet" type="text/css"/>

    </body>
</html>


