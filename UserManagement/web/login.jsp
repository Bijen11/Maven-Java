<%-- 
    Document   : login
    Created on : May 31, 2020, 10:00:56 AM
    Author     : acer
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%-- 
    Document   : contact
    Created on : May 30, 2020, 10:28:44 PM
    Author     : acer
--%>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<title>JSP Page</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="CSS/register.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <style>




            .container {
                width: 80%;
                height: 100%;
                margin: 0 auto;
            }


            /***********************************************
                   Account Registartiona and Login
            ***********************************************/
            .box,
            .regbox{
                width: 390px;
                height: 420px;

                background: #2f3542;
                margin: 0;
                padding: 30px;
                top: 55%;
                left: 50%;
                color: #fff;
                border-radius: 15px;
                position: absolute;
                transform: translate(-50%, -50%);
                box-sizing: border-box;
            }









            .avatar {
                margin: 0;
                padding: 0;
                width: 150px;
                height: 150px;
                top: -22%;
                position: absolute;
                left: calc(50% - 75px);
                border-radius: 50%;
            }

            .box h1{
                margin: 0;
                padding: 30px;
                text-align: center;
                font-size: 30px;
            }

            .box p{
                margin: 0;
                padding: 0;
                font-weight: bold;

            }

            .box input {
                width: 100%;
                margin-bottom: 15px;
                border-radius: 5px;
            }

            .box input[type="text"],
            .box input[type="password"] {
                border: none;
                background: transparent;
                border-bottom: 1px solid #fff;
                outline: none;
                height: 35px;
                color: #fff;
                font-size: 15px;
            }

            .box input[type="submit"] {
                display: block;
                border: none;
                outline: none;
                height: 35px;
                background: #eccc68;
                color: #000;
                font-size: 20px;
                border-radius: 20px;
            }

            .box input[type="submit"]:hover {
                border: none;
                outline: none;
                height: 35px;
                background: #ff6348;
                color: #fff;
                font-size: 20px;
                border-radius: 20px;
                cursor: pointer;
                transition: .3s ease-out;
            }

            .box a {
                text-decoration: none;
                color: #fff;
                font-size: 16px;
                line-height: 20px;
            }

            .box a:hover {
                color: #eccc68;
            }




            .regbox .avatar {
                margin: 0;
                padding: 0;
                width: 150px;
                height: 150px;
                top: -19%;
                position: absolute;
                left: calc(50% - 75px);
                border-radius: 50%;
            }

            .regbox h1 {
                margin-top: 30px;
                padding: 20px 0;
                text-align: center;
                font-size: 30px;
            }

            .regbox p{
                margin: 0;
                padding: 0;
                font-weight: bold;
            }

            .regbox input {
                width: 100%;
                margin-bottom: 15px;
                border-radius: 5px;
            }

            .regbox input[type="text"],
            .regbox input[type="password"] {
                border: none;
                background: transparent;
                border-bottom: 1px solid #fff;
                outline: none;
                height: 35px;
                color: #fff;
                font-size: 15px;
            }

            .regbox input[type="submit"] {
                display: block;
                border: none;
                outline: none;
                height: 35px;
                background: #eccc68;
                color: #000;
                font-size: 20px;
                border-radius: 20px;
            }

            .regbox input[type="submit"]:hover {
                border: none;
                outline: none;
                height: 35px;
                background: #ff6348;
                color: #fff;
                font-size: 20px;
                border-radius: 20px;
                cursor: pointer;
                transition: .3s ease-out;
            }

            .regbox a {
                text-decoration: none;
                color: #fff;
                font-size: 16px;
                line-height: 20px;
            }

            .regbox a:hover {
                color: #eccc68;
            }

            #na{
                margin-left: 0%;
            }


        </style>





        <div class="container emp-profile" >

            <div class="bottom bg-light sticky-top shadow-sm" >
                <div class="container-nav">
                    <ul class="nav nav-bottom nav-fill">
                        <li class="nav-item">
                            <a class="nav-link " href="index.jsp"><i class="fas fa-user-circle"></i> <span class="d-none d-sm-inline-block d-md-inline-block">About App</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " terget="_blank" href="register.jsp"><i class="fas fa-file-invoice"></i> <span class="d-none d-sm-inline-block d-md-inline-block">Register</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link bg-primary text-white" href="login.jsp"><i class="fas fa-plus-circle"></i> <span class="d-none d-sm-inline-block d-md-inline-block">Login</span></a>
                        </li>

                        <li class="nav-item">
                            <a class="nav-link " terget="_blank" text-dark" href="contact.jsp"><i class="fas fa-cog"></i> <span class="d-none d-sm-inline-block d-md-inline-block">Contact Us</span></a>
                        </li>
                    </ul>

                </div>
            </div>


            <div class="container">
                <div class="box">
                    <img class="avatar" src="img/download.png">
                    <h1>
                        Login Account</h1>
                    <form action="LoginServlet" method="post">
                        <p>
                            Email-Address</p>
                        <input type="email" placeholder="Email" name="email" required>
                        <p>
                            Password</p>
                        <input type="password" placeholder="password" name="password" required>
                        <input type="submit" value="Login">
                        <a href="resetpassword.jsp">Forget Password?</a><br>
                        <a href="register.jsp">Create New Account</a>
                    </form>
                </div>
            </div>    



        </div>

    </body>
</html>

