<%-- 
    Document   : mainprofile2
    Created on : May 29, 2020, 9:51:00 AM
    Author     : Rai jee
--%>

<%@page import="com.cw.sad.model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if (user == null) {
        response.sendRedirect("index.jsp");
    }


%>
<!DOCTYPE html>



<html>
    <style>
        body {
            background: #81D4FA
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
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="CSS/system_info.css" rel="stylesheet" type="text/css"/>





    </head>
    <div class="container emp-profile">

        <form method="post">
            <div class="row">








                <div class="col-md-6">
                    <div class="profile-head">
                        <h5>
                            <%= user.getName()%>
                        </h5>
                        <h6>
                            Web Developer and Designer
                        </h6>
                        <p class="proile-rating">RANKINGS : <span>8/10</span></p>
                        <ul class="nav nav-tabs" id="myTab" role="tablist">
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="" role="tab" aria-controls="home" aria-selected="true">Your Information</a>
                            </li>

                        </ul>
                    </div>
                </div>

                <a href="dashboard.jsp" class="navbar-brand" ><h3>Dashboard</h3></a>      


            </div>
            <div class="row">

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
                                    <p><%= user.getName()%></p>
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
            </div>
        </form>           
    </div>


</body>

</html>
