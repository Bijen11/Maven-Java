<%-- 
    Document   : AdminReport
    Created on : Jun 8, 2020, 11:16:15 AM
    Author     : acer
--%>

<%@page import="com.cw.sad.DAO.NewUserChartDAO"%>
<%@page import="com.cw.sad.connection.ConnectionPro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    NewUserChartDAO datas = new NewUserChartDAO(ConnectionPro.getConnection());
    int TotalRegisterSun = datas.getRegisterDataOfSunday();
    int TotalRegisterMon = datas.getRegisterDataOfMonday();
    int TotalRegisterTue = datas.getRegisterDataOfTuesday();
    int TotalRegisterWed = datas.getRegisterDataOfWednesday();
    int TotalRegisterThu = datas.getRegisterDataOfThursday();
    int TotalRegisterFri = datas.getRegisterDataOfFriday();
    int TotalRegisterSat = datas.getRegisterDataOfSaturday();

    request.setAttribute("TotalRegisterSun", TotalRegisterSun);
    request.setAttribute("TotalRegisterMon", TotalRegisterMon);
    request.setAttribute("TotalRegisterTue", TotalRegisterTue);
    request.setAttribute("TotalRegisterWed", TotalRegisterWed);
    request.setAttribute("TotalRegisterThu", TotalRegisterThu);
    request.setAttribute("TotalRegisterFri", TotalRegisterFri);
    request.setAttribute("TotalRegisterSat", TotalRegisterSat);

%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report</title>

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
            h2{
                margin-bottom:-6%;
                margin-left: 8%;
            }

        </style>


        <%-- navigation bar--%>
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
                        <a class="nav-link" terget="_blank" href="admin.jsp"><i class="fas fa-file-invoice"></i> <span class="d-none d-sm-inline-block d-md-inline-block">Users details</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Adminhistory.jsp"><i class="fas fa-plus-circle"></i> <span class="d-none d-sm-inline-block d-md-inline-block">History log</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link bg-primary text-white" href="AdminReport.jsp"><i class="fas fa-plus-circle"></i> <span class="d-none d-sm-inline-block d-md-inline-block">Report</span></a>
                    </li>


                </ul>

            </div>
        </div>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.charts.load("current", {packages: ['corechart']});
            google.charts.setOnLoadCallback(drawChart);
            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ["Days", "User Registered", {role: "style"}],
                    ["Sunday",<% out.println(request.getAttribute("TotalRegisterSun")); %>, "#b87333"],
                    ["Monday",<% out.println(request.getAttribute("TotalRegisterMon")); %>, "silver"],
                    ["Tuesday",<% out.println(request.getAttribute("TotalRegisterTue")); %>, "gold"],
                    ["Wednesday", <% out.println(request.getAttribute("TotalRegisterWed")); %>, "color: #e5e4e2"],
                    ["Thusday",<% out.println(request.getAttribute("TotalRegisterThu")); %>, "#b87333"],
                    ["Friday",<% out.println(request.getAttribute("TotalRegisterFri")); %>, "silver"],
                    ["Saturday",<% out.println(request.getAttribute("TotalRegisterSat"));%>, "gold"]

                ]);

                var view = new google.visualization.DataView(data);
                view.setColumns([0, 1,
                    {calc: "stringify",
                        sourceColumn: 1,
                        type: "string",
                        role: "annotation"},
                    2]);

                var options = {
                    title: "Users registerd, in week",
                    width: 600,
                    height: 400,
                    bar: {groupWidth: "95%"},
                    legend: {position: "none"}
                };
                var chart = new google.visualization.ColumnChart(document.getElementById("columnchart_values"));
                chart.draw(view, options);
            }
        </script>


    </head>
    <body>


        <div id="columnchart_values" style="width: 1100px; height: 400px;"></div>

    </body>
</html>
