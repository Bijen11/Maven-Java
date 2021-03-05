<%-- 
    Document   : History log
    Created on : Jun 7, 2020, 6:04:59 PM
    Author     : acer
--%>

<%@page import="java.util.List"%>
<%@page import="com.cw.sad.model.history"%>
<%@page import="com.cw.sad.DAO.HistoryDAO"%>
<%@page import="com.cw.sad.connection.ConnectionPro"%>
<%@page import="com.cw.sad.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }
    

%>
<%
    HistoryDAO userdata = new HistoryDAO(ConnectionPro.getConnection());
    List<history> history = userdata.getClientHistory(user.getEmail());
    request.setAttribute("history", history);
    



%> 
<html>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="CSS/dashboard.css" rel="stylesheet" type="text/css"/>


<link href='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css'>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
     <style>
body {
    background: #81D4FA
}
.container{
    padding-left: 15%;
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
</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Hisotry Log</title>
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
                <%--  
                <li>
                    <a href="display.jsp?id=109"><i class="fa fa-fw fa fa-search"></i> TIMELINE 5</a>
                </li>
                --%>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>
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
                                <% for (history h: history)
                                {%>
                            

                                    <tr>
                                        <td><%= h.getEmail() %></td>
                                        <td><%= h.getActivity() %></td>
                                        <td><%= h.getDate() %></td>

                                        
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
