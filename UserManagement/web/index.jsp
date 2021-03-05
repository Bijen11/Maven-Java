<%-- 
    Document   : mainprofile3
    Created on : May 29, 2020, 11:16:16 AM
    Author     : Rai jee
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>JSP Page</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="CSS/desc.css" rel="stylesheet" type="text/css"/>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>




<!DOCTYPE html>
<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>







        <div class="container emp-profile">


            <link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>

            <div class="bottom bg-light sticky-top shadow-sm">
                <div class="container-nav">
                    <ul class="nav nav-bottom nav-fill">
                        <li class="nav-item">
                            <a class="nav-link bg-primary text-white" terget="_blank" href="index.jsp"><i class="fas fa-user-circle"></i> <span class="d-none d-sm-inline-block d-md-inline-block">About App</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" terget="_blank" href="register.jsp"><i class="fas fa-file-invoice"></i> <span class="d-none d-sm-inline-block d-md-inline-block">Register</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="login.jsp"><i class="fas fa-plus-circle"></i> <span class="d-none d-sm-inline-block d-md-inline-block">Login</span></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link" href="contact.jsp"><i class="fas fa-cog"></i> <span class="d-none d-sm-inline-block d-md-inline-block">Contact Us</span></a>
                        </li>
                    </ul>

                </div>
            </div>


            <style>
                body {
                    font-family: 'Roboto';font-size: 16px;
                }

                .aboutus-section {
                    padding: 90px 0;
                }
                .aboutus-title {
                    font-size: 30px;
                    letter-spacing: 0;
                    line-height: 32px;
                    margin: 0 0 39px;
                    padding: 0 0 11px;
                    position: relative;
                    text-transform: uppercase;
                    color: #000;
                }
                .aboutus-title::after {
                    background: #fdb801 none repeat scroll 0 0;
                    bottom: 0;
                    content: "";
                    height: 2px;
                    left: 0;
                    position: absolute;
                    width: 54px;
                }
                .aboutus-text {
                    color: #606060;
                    font-size: 13px;
                    line-height: 22px;
                    margin: 0 0 35px;
                }

                a:hover, a:active {
                    color: #ffb901;
                    text-decoration: none;
                    outline: 0;
                }
                .aboutus-more {
                    border: 1px solid #fdb801;
                    border-radius: 25px;
                    color: #fdb801;
                    display: inline-block;
                    font-size: 14px;
                    font-weight: 700;
                    letter-spacing: 0;
                    padding: 7px 20px;
                    text-transform: uppercase;
                }
                .feature .feature-box .iconset {
                    background: #fff none repeat scroll 0 0;
                    float: left;
                    position: relative;
                    width: 18%;
                }
                .feature .feature-box .iconset::after {
                    background: #fdb801 none repeat scroll 0 0;
                    content: "";
                    height: 150%;
                    left: 43%;
                    position: absolute;
                    top: 100%;
                    width: 1px;
                }

                .feature .feature-box .feature-content h4 {
                    color: #0f0f0f;
                    font-size: 18px;
                    letter-spacing: 0;
                    line-height: 22px;
                    margin: 0 0 5px;
                }


                .feature .feature-box .feature-content {
                    float: left;
                    padding-left: 28px;
                    width: 78%;
                }
                .feature .feature-box .feature-content h4 {
                    color: #0f0f0f;
                    font-size: 18px;
                    letter-spacing: 0;
                    line-height: 22px;
                    margin: 0 0 5px;
                }
                .feature .feature-box .feature-content p {
                    color: #606060;
                    font-size: 13px;
                    line-height: 22px;
                }
                .icon {
                    color : #f4b841;
                    padding:0px;
                    font-size:40px;
                    border: 1px solid #fdb801;
                    border-radius: 100px;
                    color: #fdb801;
                    font-size: 28px;
                    height: 70px;
                    line-height: 70px;
                    text-align: center;
                    width: 70px;
                }

            </style>

            <div class="aboutus-section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="aboutus">
                                <h2 class="aboutus-title">About App</h2>
                                <p class="aboutus-text">Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in.</p>
                                <p class="aboutus-text">This is Photoshop's version of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem</p>
                                <a class="aboutus-more" href="try1.jsp">read more</a>
                            </div>
                        </div>
                        <div class="col-md-3 col-sm-6 col-xs-12">
                            <div class="aboutus-banner">
                                <img src="http://themeinnovation.com/demo2/html/build-up/img/home1/about1.jpg" alt="">
                            </div>
                        </div>
                        <div class="col-md-5 col-sm-6 col-xs-12">
                            <div class="feature">
                                <div class="feature-box">
                                    <div class="clearfix">
                                        <div class="iconset">
                                            <span class="glyphicon glyphicon-cog icon"></span>
                                        </div>
                                        <div class="feature-content">
                                            <h4>Work with heart</h4>
                                            <p>Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in.</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="feature-box">
                                    <div class="clearfix">
                                        <div class="iconset">
                                            <span class="glyphicon glyphicon-cog icon"></span>
                                        </div>
                                        <div class="feature-content">
                                            <h4>Reliable services</h4>
                                            <p>Donec vitae sapien ut libero venenatis faucibu. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="feature-box">
                                    <div class="clearfix">
                                        <div class="iconset">
                                            <span class="glyphicon glyphicon-cog icon"></span>
                                        </div>
                                        <div class="feature-content">
                                            <h4>Great support</h4>
                                            <p>Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in.</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        </div>



    </body>

</html>

