<%-- 
    Document   : Adminhistory
    Created on : Jun 6, 2020, 1:40:22 PM
    Author     : acer
--%>

<%@page import="com.cw.sad.DAO.HistoryDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.cw.sad.connection.ConnectionPro"%>
<%@page import="com.cw.sad.model.history"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    HistoryDAO userdata = new HistoryDAO(ConnectionPro.getConnection());
    List<history> history = userdata.getHistory();
    request.setAttribute("history", history);


%> 
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>History log</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="CSS/desc.css" rel="stylesheet" type="text/css"/>
        <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> 
        <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>

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
                        <a class="nav-link" terget="_blank" href="admin.jsp"><i class="fas fa-file-invoice"></i> <span class="d-none d-sm-inline-block d-md-inline-block">User Details</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link bg-primary text-white" href="Adminhistory.jsp"><i class="fas fa-plus-circle"></i> <span class="d-none d-sm-inline-block d-md-inline-block">History log</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AdminReport.jsp"><i class="fas fa-plus-circle"></i> <span class="d-none d-sm-inline-block d-md-inline-block">Report</span></a>
                    </li>


                </ul>

            </div>
        </div>
    </head>

    <body>

        <div class="container">
            <div class="inner">
                <div class="row">
                    <div class="col-md-9">
                        <h1>
                            History log</h1>
                        <table class="table">
                            <thead class="bg-light">

                                <tr>

                                    <th scope="col">Email</th>
                                    <th scope="col">Activity</th>
                                    <th scope="col">Date</th>


                                </tr>

                            </thead>

                            <tbody>
                                <% for (history h : history) {%>


                                <tr>
                                    <td><%= h.getEmail()%></td>
                                    <td><%= h.getActivity()%></td>
                                    <td><%= h.getDate()%></td>


                                </tr>
                                <%}%>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
