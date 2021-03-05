<%-- 
    Document   : mainprofile3
    Created on : May 29, 2020, 11:16:16 AM
    Author     : Rai jee
--%>

<%@page import="com.cw.sad.model.User"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Profile</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="CSS/updateprofile.css" rel="stylesheet" type="text/css"/>


<% User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }


%>

<!DOCTYPE html>
<html>
    <style>


        #Edit_profile{
            margin-right: 10%;
            float: right;
        }
    </style>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>







        <div class="container emp-profile">

            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">


                            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS52y5aInsxSm31CvHOFHWujqUx_wWTS9iM6s7BAm21oEN_RiGoog" alt=""/>




                        </div>
                    </div>







                    <div class="col-md-6">
                        <div class="profile-head">
                            <h5>
                                Welcome <%= user.getName()%>
                            </h5>
                            <h6>
                                Web Developer and Designer
                            </h6>

                            <br>
                            <div class="row">
                                <div class="col-md-12">
                                    <p>Your Bio</p>
                                    <p>Your Additional Information</p>
                                </div>
                            </div>
                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>

                            </ul>
                        </div>
                    </div>


                    <a href="dashboard.jsp" class="navbar-brand" ><h3>Dashboard</h3></a>





                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <br>

                            <a href="upload.jsp" class="file btn btn-lg btn-primary">update photo and bio</a>




                            <p>WORK LINK</p>
                            <a href="#">Website Link</a><br/>
                            <a href="#">Bootsnipp Profile</a><br/>
                            <a href="#">Bootply Profile</a>
                            <p>SKILLS</p>
                            <a href="#">Web Designer</a><br/>
                            <a href="#">Web Developer</a><br/>
                            <a href="#">WordPress</a><br/>
                            <a href="#">WooCommerce</a><br/>
                            <a href="#">PHP, .Net</a><br/>

                        </div>

                    </div>


                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                <div class="row">

                                    <div class="col-md-6">
                                        <label>User Id</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><%= user.getId()%></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Name</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p> <%= user.getName()%> </p>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Email</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><%= user.getEmail()%></p>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Phone</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><%= user.getContact()%></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Birth-Date</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><%= user.getDob()%></p>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Address</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><%= user.getAddress()%></p>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Role</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><%= user.getRole()%></p>
                                    </div>
                                </div> 

                                <div class="row">
                                    <div class="col-md-6">
                                        <label>Password</label>
                                    </div>
                                    <div class="col-md-6">
                                        <p><%= user.getPassword()%></p>
                                    </div>
                                </div>


                                <br>



                                <a href="useredit.jsp?id=<%= user.getId()%>" class="navbar-brand" id="Edit_profile"><h3>Edit</h3></a>   


                            </div>
                        </div>
                    </div>
            </form>           
        </div>



    </body>

</html>
