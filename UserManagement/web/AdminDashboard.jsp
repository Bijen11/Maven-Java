<%-- 
    Document   : AdminDashboard
    Created on : Jun 6, 2020, 5:28:24 PM
    Author     : acer
--%>

<%@page import="com.cw.sad.model.User"%>
<%@page import="com.cw.sad.DAO.DashboardChartDAO"%>
<%@page import="com.cw.sad.connection.ConnectionPro"%>
<%@page import="com.cw.sad.connection.ConnectionPro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
    DashboardChartDAO datas = new DashboardChartDAO(ConnectionPro.getConnection());
    int TotalLogin = datas.getLoginData();
    int TotalReset = datas.getPasswordchangeData();
    int TotalRegister = datas.getRegisterData();

    request.setAttribute("TotalLogin", TotalLogin);
    request.setAttribute("TotalReset", TotalReset);
    request.setAttribute("TotalRegister", TotalRegister);

%> 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dashboard</title>

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
        <h2>Welcome Admin, <%= user.getName()%>, </h2>


        <div  class="container-fluid">

            <nav class="navbar navbar-light"> 
                <a href="LogoutServlet" class="navbar-brand" ><h2><b>Logout</b></h2></a>

                <form class="form-inline">
                </form>
            </nav>
        </div>


        <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>

        <div class="bottom bg-light sticky-top shadow-sm">
            <div class="container-nav">
                <ul class="nav nav-bottom nav-fill">
                    <li class="nav-item">
                        <a class="nav-link bg-primary text-white" terget="_blank" href="AdminDashboard.jsp"><i class="fas fa-user-circle"></i> <span class="d-none d-sm-inline-block d-md-inline-block">Dashboard</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" terget="_blank" href="admin.jsp"><i class="fas fa-file-invoice"></i> <span class="d-none d-sm-inline-block d-md-inline-block">Users details</span></a>
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
        <%-- pie chart script--%>
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            <%-- pie chart script--%>
            google.charts.load('current', {'packages': ['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {

                var data = google.visualization.arrayToDataTable([
                    ['Task', 'percent'],
                    ['Login', <% out.println(request.getAttribute("TotalLogin")); %>],
                    ['Reset', <% out.println(request.getAttribute("TotalReset")); %>],
                    ['Register', <% out.println(request.getAttribute("TotalRegister"));%>],
                ]);

                var options = {
                    title: 'Activity on site'
                };

                var chart = new google.visualization.PieChart(document.getElementById('piechart'));

                chart.draw(data, options);
            }




        </script>

    </head>

    <div id="piechart" style="width: 500px; height: 500px; margin-left: auto; margin-right: auto;"></div>


</div>


</body>
</html>
