<%-- 
    Document   : mainprofile3
    Created on : May 29, 2020, 11:16:16 AM
    Author     : Rai jee
--%>


<%@page import="java.util.List"%>
<%@page import="com.cw.sad.model.User"%>
<%@page import="com.cw.sad.DAO.UserDao"%>
<%@page import="com.cw.sad.connection.ConnectionPro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>User details</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="CSS/desc.css" rel="stylesheet" type="text/css"/>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix= "c"%>    


<% UserDao userdata = new UserDao(ConnectionPro.getConnection());
    List<User> user = userdata.getAllUsers();
    request.setAttribute("USERS_LIST", user);


%> 




<!DOCTYPE html>
<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User info</title>
    </head>

    <body>







        <div class="container emp-profile">

            <div  class="container-fluid">

            </div>


            <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>

            <div class="bottom bg-light sticky-top shadow-sm">
                <div class="container-nav">
                    <ul class="nav nav-bottom nav-fill">
                        <li class="nav-item">
                            <a class="nav-link" terget="_blank" href="AdminDashboard.jsp"><i class="fas fa-user-circle"></i> <span class="d-none d-sm-inline-block d-md-inline-block">Dashboard</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link bg-primary text-white" terget="_blank" href="admin.jsp"><i class="fas fa-file-invoice"></i> <span class="d-none d-sm-inline-block d-md-inline-block">User Details</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="Adminhistory.jsp"><i class="fas fa-plus-circle"></i> <span class="d-none d-sm-inline-block d-md-inline-block">History log</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="AdminReport.jsp"><i class="fas fa-plus-circle"></i> <span class="d-none d-sm-inline-block d-md-inline-block">Report</span></a>
                        </li>

                    </ul>

                </div>
            </div>


            <style> 
                .navbar-brand{
                    padding-left: 950px;
                }

                .inner{
                    margin: 15px 0;


                }
                .nav-item{
                    font-size: 24px;
                }
                .form-group{
                    font-size: 14px;
                }
                .insert{
                    font-size: 24px;

                }
                .form-control{
                    font-size: 14px;
                }

            </style>


            <br><br>
            <div class="container">
                <div class="inner">
                    <div class="row">
                        <div class="col-md-3">
                            <h3 class="insert">
                                Insert User Information</h3>
                            <form action="AddUserServlet" method="post">
                                <div class="form-group">
                                    <label>Username</label>
                                    <input class="form-control" type="text" placeholder="Username" name="name" required>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input class="form-control" type="text" placeholder="Useremail" name="email" required>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input class="form-control" type="password" placeholder="Password" name="password" required>
                                </div>
                                <div class="form-group">
                                    <label>Date-of-Birth</label>
                                    <input class="form-control" type="date" placeholder="Date of Birth" name="dob" required>
                                </div>
                                <div class="form-group">
                                    <label>Contact</label>
                                    <input class="form-control" type="text" placeholder="Contact" name="contact" required>
                                </div>
                                <div class="form-group">
                                    <label>Address</label>
                                    <input class="form-control" type="text" placeholder="Address" name="address" required>
                                </div>


                                <button type="submit" value="Register" class="btn btn-primary">Create</button>
                                <button type="reset" class="btn btn-primary">Reset</button>
                            </form>
                        </div>
                        <div class="col-md-9">
                            <h1>
                                User Details</h1>
                            <table class="table">
                                <thead class="bg-light">

                                    <tr>
                                        <th scope="col">Username</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Password</th>


                                    </tr>

                                </thead>
                                <tbody>
                                    <c:forEach var="tempUser" items="${USERS_LIST}">
                                        <tr>
                                            <td>${tempUser.name }</td>
                                            <td>${tempUser.email }</td>
                                            <td>${tempUser.password }</td>

                                            <td><a href="adminedit.jsp?id=${tempUser.id }">Edit</a>  
                                                <a href="DeleteUserServlet?id=${tempUser.id}">Delete</a></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>




        </div>



    </body>

    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

</html>

