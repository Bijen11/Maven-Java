<%-- 
    Document   : display
    Created on : May 27, 2020, 2:50:03 PM
    Author     : Rai jee
--%>

<%@page import="com.cw.sad.model.User"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<% User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }


%>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="CSS/profile.css" rel="stylesheet" type="text/css"/>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 


        <%            int imageid = Integer.parseInt(request.getParameter("id"));

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/file_upload", "root", "");
                Statement st = con.createStatement();
                String sql = "SELECT filename, bio, additional_info FROM image where id=" + imageid + "";
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {
                    String filename = rs.getString("filename");
                    String bio = rs.getString("bio");
                    String add_info = rs.getString("additional_info");


        %>          












        <div class="container emp-profile">

            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">

                            <image src="<%= request.getContextPath()%>/images/<%=filename%>"/>




                            <div>
                            </div>
                        </div>
                    </div>







                    <div class="col-md-6">
                        <div class="profile-head">
                            <h5>
                                <%= user.getName()%>
                            </h5>
                            <h6>
                                Web Developer and Designer
                            </h6>

                            <br>
                            <h4> <%=bio%> </h4>
                            <h5> <%=add_info%> </h5>

                            <ul class="nav nav-tabs" id="myTab" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="" role="tab" aria-controls="home" aria-selected="true">About</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="timeline.jsp" role="tab" aria-controls="profile" aria-selected="false">Timeline</a>
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





                            <p>WORK LINK</p>
                            <a href="">Website Link</a><br/>
                            <a href="">Bootsnipp Profile</a><br/>
                            <a href="">Bootply Profile</a>
                            <p>SKILLS</p>
                            <a href="">Web Designer</a><br/>
                            <a href="">Web Developer</a><br/>
                            <a href="">WordPress</a><br/>
                            <a href="">WooCommerce</a><br/>
                            <a href="">PHP, .Net</a><br/>

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

                                <div class="row">
                                    <div class="col-md-12">
                                        <p>Your Bio</p>
                                        <p>Your detail description</p>
                                    </div>
                                </div>



                            </div>
                        </div>
                    </div>
            </form>           
        </div>

        <%
                }
            } catch (Exception e) {
                System.out.println(e);

            }


        %>

    </body>
</html>
