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

<title>JSP Page</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="CSS/desc.css" rel="stylesheet" type="text/css"/>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>




<!DOCTYPE html>
<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>


        <style>
            .nav-link.text-dark:hover {
                color: #999 !important;
            }

            .custom-badge {
                position: relative;
                top: -7px;
                right: -13px;
                font-size: .7em;
            }
            .container-nav {
                max-width: 1140px;
                padding-right: 15px;
                padding-left: 15px;
                margin-right: auto;
                margin-left: auto;
            }

            @media (max-width: 767.98px) { 
                .container-nav {
                    max-width: 100%;
                    padding-right: 0;
                    padding-left: 0;
                }
                .topheader {
                    padding-right: 15px;
                    padding-left: 15px;
                }
            }
            .mt-4{
                font-size: 12px;
            }
        </style>  




        <div class="container emp-profile">




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


            <div class='container example-three'>
                <div class="main">
                    <main class="mt-4 ">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ultricies pharetra lorem. Donec sed dolor quis orci scelerisque varius. Pellentesque pulvinar quam ultricies nisl sagittis ultricies. Nulla sagittis, nulla non facilisis blandit, nisl velit venenatis mauris, eu egestas enim magna in metus. Vivamus cursus egestas augue eget tempus. Sed porta non mauris et rutrum. Morbi luctus ex viverra risus tristique interdum. Cras volutpat sit amet enim et rutrum. Duis tincidunt porttitor efficitur. Nullam accumsan tempus maximus. Duis hendrerit sem eget nisl volutpat imperdiet. Ut imperdiet blandit porttitor. Proin pretium lobortis mollis. Praesent ac commodo dolor, posuere egestas diam. Donec eros justo, dignissim et velit a, varius viverra velit. Mauris at magna nisl.</p>
                        <p>In at malesuada magna, a pellentesque justo. Sed ac lorem a lectus faucibus hendrerit. Nam sit amet tortor a ante efficitur cursus. Cras vitae imperdiet magna. Mauris pellentesque sed felis eget scelerisque. Donec mollis lacus nec tortor viverra egestas. Proin et feugiat orci, ut tincidunt erat. Vestibulum lobortis placerat libero quis volutpat. Mauris quis metus est. Pellentesque in nisl aliquet, finibus ante in, convallis mi. Duis blandit sem ut lorem pharetra, a feugiat ex bibendum.</p>
                        <p>Morbi pulvinar, nulla eu lacinia placerat, velit nisi sollicitudin leo, vel viverra lorem tortor in turpis. Curabitur vitae diam vitae enim scelerisque elementum. Maecenas faucibus massa vel pulvinar bibendum. Sed nunc magna, fermentum at luctus in, varius nec leo. Nunc elementum, ipsum in posuere semper, libero nisi interdum ante, in tincidunt turpis odio ac libero. Sed nisl sem, tempus fringilla ante in, condimentum molestie erat. Donec vitae justo odio. Cras nec urna at libero posuere mollis. Nullam euismod urna quis ex ultrices, nec efficitur lectus viverra. Ut dui neque, lacinia lacinia risus a, congue cursus arcu. Vestibulum suscipit purus eu erat porttitor maximus.</p>
                        <p>Vestibulum malesuada imperdiet est. In ac metus pellentesque, volutpat urna a, condimentum metus. In fringilla sem ligula, et mollis nunc finibus semper. Sed placerat molestie nunc, et suscipit nunc condimentum eu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam sed dolor efficitur, volutpat libero vitae, scelerisque quam. Vestibulum tempus varius urna non maximus. Vivamus volutpat eros ut urna maximus, et accumsan nibh venenatis. Praesent feugiat tortor nec arcu faucibus auctor nec nec enim. Nullam arcu augue, ornare laoreet libero nec, ullamcorper porttitor nulla. Maecenas vitae mattis odio, condimentum efficitur eros. Nam laoreet nisi eu facilisis commodo. Sed id ex sed neque ultricies mollis. Aenean nisl arcu, efficitur eget turpis at, semper venenatis risus. Sed porttitor leo ut erat venenatis, nec sagittis massa pharetra. Sed a lacus pharetra, vestibulum nisi at, porta erat.</p>
                        <p>Nulla suscipit eu urna ut dapibus. Pellentesque tincidunt auctor aliquet. Curabitur a magna metus. Nulla eget volutpat dolor. In in purus id sapien sodales cursus. Mauris a elit elit. Suspendisse ornare sodales nibh, sed bibendum libero commodo a. Ut a sodales leo, et ultricies nisi.</p>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ultricies pharetra lorem. Donec sed dolor quis orci scelerisque varius. Pellentesque pulvinar quam ultricies nisl sagittis ultricies. Nulla sagittis, nulla non facilisis blandit, nisl velit venenatis mauris, eu egestas enim magna in metus. Vivamus cursus egestas augue eget tempus. Sed porta non mauris et rutrum. Morbi luctus ex viverra risus tristique interdum. Cras volutpat sit amet enim et rutrum. Duis tincidunt porttitor efficitur. Nullam accumsan tempus maximus. Duis hendrerit sem eget nisl volutpat imperdiet. Ut imperdiet blandit porttitor. Proin pretium lobortis mollis. Praesent ac commodo dolor, posuere egestas diam. Donec eros justo, dignissim et velit a, varius viverra velit. Mauris at magna nisl.</p>
                        <p>In at malesuada magna, a pellentesque justo. Sed ac lorem a lectus faucibus hendrerit. Nam sit amet tortor a ante efficitur cursus. Cras vitae imperdiet magna. Mauris pellentesque sed felis eget scelerisque. Donec mollis lacus nec tortor viverra egestas. Proin et feugiat orci, ut tincidunt erat. Vestibulum lobortis placerat libero quis volutpat. Mauris quis metus est. Pellentesque in nisl aliquet, finibus ante in, convallis mi. Duis blandit sem ut lorem pharetra, a feugiat ex bibendum.</p>
                        <p>Morbi pulvinar, nulla eu lacinia placerat, velit nisi sollicitudin leo, vel viverra lorem tortor in turpis. Curabitur vitae diam vitae enim scelerisque elementum. Maecenas faucibus massa vel pulvinar bibendum. Sed nunc magna, fermentum at luctus in, varius nec leo. Nunc elementum, ipsum in posuere semper, libero nisi interdum ante, in tincidunt turpis odio ac libero. Sed nisl sem, tempus fringilla ante in, condimentum molestie erat. Donec vitae justo odio. Cras nec urna at libero posuere mollis. Nullam euismod urna quis ex ultrices, nec efficitur lectus viverra. Ut dui neque, lacinia lacinia risus a, congue cursus arcu. Vestibulum suscipit purus eu erat porttitor maximus.</p>
                        <p>Vestibulum malesuada imperdiet est. In ac metus pellentesque, volutpat urna a, condimentum metus. In fringilla sem ligula, et mollis nunc finibus semper. Sed placerat molestie nunc, et suscipit nunc condimentum eu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam sed dolor efficitur, volutpat libero vitae, scelerisque quam. Vestibulum tempus varius urna non maximus. Vivamus volutpat eros ut urna maximus, et accumsan nibh venenatis. Praesent feugiat tortor nec arcu faucibus auctor nec nec enim. Nullam arcu augue, ornare laoreet libero nec, ullamcorper porttitor nulla. Maecenas vitae mattis odio, condimentum efficitur eros. Nam laoreet nisi eu facilisis commodo. Sed id ex sed neque ultricies mollis. Aenean nisl arcu, efficitur eget turpis at, semper venenatis risus. Sed porttitor leo ut erat venenatis, nec sagittis massa pharetra. Sed a lacus pharetra, vestibulum nisi at, porta erat.</p>
                        <p>Nulla suscipit eu urna ut dapibus. Pellentesque tincidunt auctor aliquet. Curabitur a magna metus. Nulla eget volutpat dolor. In in purus id sapien sodales cursus. Mauris a elit elit. Suspendisse ornare sodales nibh, sed bibendum libero commodo a. Ut a sodales leo, et ultricies nisi.</p>
                    </main>
                </div>
            </div>

            <script defer src="https://use.fontawesome.com/releases/v5.7.2/js/all.js" integrity="sha384-0pzryjIRos8mFBWMzSSZApWtPl/5++eIfzYmTgBBmXYdhvxPc+XcFEk+zJwDgWbP" crossorigin="anonymous"></script>    

        </div>



    </body>

</html>

