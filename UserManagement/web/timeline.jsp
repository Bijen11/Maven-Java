<%-- 
    Document   : timeline
    Created on : May 23, 2020, 10:27:35 PM
    Author     : acer
--%>

<%@page import="com.cw.sad.DAO.ClientChartDAO"%>
<%@page import="com.cw.sad.model.User"%>
<%@page import="com.cw.sad.DAO.DashboardChartDAO"%>
<%@page import="com.cw.sad.connection.ConnectionPro"%>
<%@page import="com.cw.sad.connection.ConnectionPro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<%
    User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
    DashboardChartDAO datas = new DashboardChartDAO(ConnectionPro.getConnection());
    int Totaldatasun = datas.getSunData(user.getEmail());
    int Totaldatamon = datas.getMonData(user.getEmail());
    int Totaldatatue = datas.getTueData(user.getEmail());
    int Totaldatawed = datas.getWedData(user.getEmail());
    int Totaldatathu = datas.getThuData(user.getEmail());
    int Totaldatafri = datas.getFriData(user.getEmail());
    int Totaldatasat = datas.getSatData(user.getEmail());

    request.setAttribute("Totaldatasun", Totaldatasun);
    request.setAttribute("Totaldatamon", Totaldatamon);
    request.setAttribute("Totaldatatue", Totaldatatue);
    request.setAttribute("Totaldatawed", Totaldatawed);
    request.setAttribute("Totaldatathu", Totaldatathu);
    request.setAttribute("Totaldatafri", Totaldatafri);
    request.setAttribute("Totaldatasat", Totaldatasat);


%> 
<html>
    <style>
        body {
            background: #81D4FA;

        }

        .geopin {
            width: 30px;
            height: 30px;
            border-radius: 50% 50% 50% 0;
            background: #2196F3;
            position: absolute;
            transform: rotate(-45deg);
            left: 50%;
            top: 50%;
            margin: -20px 0 0 -20px
        }

        .geopin:after {
            content: "";
            width: 14px;
            height: 14px;
            margin: 8px 0 0 8px;
            background: #e6e6e6;
            position: absolute;
            border-radius: 50%
        }

        .bounce {
            animation-name: bounce;
            animation-fill-mode: both;
            animation-duration: 0.9s
        }

        .geopulse {
            background: #d6d4d4;
            border-radius: 50%;
            height: 14px;
            width: 14px;
            position: absolute;
            left: 50%;
            top: 50%;
            margin: 11px 0px 0px -12px;
            transform: rotateX(55deg);
            z-index: -2
        }

        .geopulse:after {
            content: "";
            border-radius: 50%;
            height: 40px;
            width: 40px;
            position: absolute;
            margin: -13px 0 0 -13px;
            animation: pulsate 1s ease-out;
            animation-iteration-count: infinite;
            opacity: 0;
            box-shadow: 0 0 1px 2px #2196F3;
            animation-delay: 0.1s
        }



        @keyframes pulsate {

            0%,
            100% {
                transform: scale(0.1, 0.1);
                opacity: 0
            }

            50% {
                opacity: 1
            }

            100% {
                transform: scale(1.2, 1.2);
                opacity: 0
            }
        }

        @keyframes bounce {
            0% {
                opacity: 0;
                transform: translateY(-1000px) rotate(-45deg)
            }

            60% {
                opacity: 1;
                transform: translateY(5px) rotate(-45deg)
            }

            80% {
                transform: translateY(-10px) rotate(-45deg)
            }

            100% {
                transform: translateY(0) rotate(-45deg)
            }
        }

        .bouncediv {
            -moz-animation: bounce .40s linear;
            -webkit-animation: bounce .40s linear
        }

        @-moz-keyframes bounce {
            0% {
                -moz-transform: scale(0);
                opacity: 0
            }

            50% {
                -moz-transform: scale(1.3);
                opacity: 0.4
            }

            75% {
                -moz-transform: scale(0.9);
                opacity: 0.7
            }

            100% {
                -moz-transform: scale(1);
                opacity: 1
            }
        }

        @-webkit-keyframes bounce {
            0% {
                -webkit-transform: scale(0);
                opacity: 0
            }

            50% {
                -webkit-transform: scale(1.3);
                opacity: 0.4
            }

            75% {
                -webkit-transform: scale(0.9);
                opacity: 0.7
            }

            100% {
                -webkit-transform: scale(1);
                opacity: 1
            }
        }

        @keyframes drop {
            0% {
                transform: translateY(-40px) rotate(-45deg)
            }

            80% {
                transform: translateY(3px) rotate(-45deg)
            }

            100% {
                transform: translateY(0) rotate(-45deg)
            }
        }

        .drop {
            animation-name: drop;
            animation-fill-mode: both;
            animation-duration: 0.5s
        }
        #curve_chart{

            margin-top: 5%;
            margin-left:30%;
        }
    </style>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <link href="CSS/dashboard.css" rel="stylesheet" type="text/css"/>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Usage</title>


    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">

            <a class="navbar-brand" href="dashboard.jsp">
                <h1>User Dashboard</h1>
            </a>
        </div>
        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">
            <li><a href="timeline.jsp" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Stats"><i class="fa fa-bar-chart-o"></i>
                </a>
            </li>            
            <li class="dropdown">
                <a href="LogoutServlet">Logout  </a>

            </li>
        </ul>
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">

                <li>
                    <a href="Historylog.jsp" ><i class="fa fa-fw fa-star"></i> History Log </a>

                </li>
                <li>
                    <a href="mainprofile3.jsp"><i class="fa fa-fw fa-user-plus"></i>  EDIT PROFILE DETAILS </a>
                </li>

                <li>
                    <a href="timeline.jsp"><i class="fa fa-fw fa fa-question-circle"></i> DAILY USAGE</a>
                </li>

            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages': ['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Year', 'Login number'],
                ['Sunday', <% out.println(request.getAttribute("Totaldatasun")); %>],
                ['Monday', <% out.println(request.getAttribute("Totaldatamon")); %>],
                ['Tuesday', <% out.println(request.getAttribute("Totaldatatue")); %>],
                ['Wednesday', <% out.println(request.getAttribute("Totaldatawed")); %>],
                ['Thursday', <% out.println(request.getAttribute("Totaldatathu")); %>],
                ['Friday', <% out.println(request.getAttribute("Totaldatafri")); %>],
                ['Saturday', <% out.println(request.getAttribute("Totaldatasat"));%>]
            ]);

            var options = {
                title: 'Company Performance',
                curveType: 'function',
                legend: {position: 'bottom'}
            };

            var chart = new google.visualization.LineChart(document.getElementById('curve_chart'));

            chart.draw(data, options);
        }
    </script>
</head>
<body>


    <div id="curve_chart" style="width: 900px; height: 550px ;"></div>



</body>
</html>
