<%-- 
    Document   : changepassword
    Created on : May 13, 2020, 10:12:23 PM
    Author     : sasmi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Change Password</title>
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    <body class="bg-primary">
        <div id="layoutAuthentication">
            <div id="layoutAuthentication_content">
                <main>
                    <div class="container">
                        <div class="row justify-content-center">
                            <div class="col-lg-7">
                                <div class="card shadow-lg border-0 rounded-lg mt-5">
                                    <div class="card-header"><h3 class="text-center font-weight-light my-4">Change Password</h3></div>
                                    <div class="card-body">
                                        
                                        <form action="ChangePasswordServlet" method="post">
                                                <div class="col-md-6">
                                                <div class="form-group"><label class="small mb-1" for="inputPassword">Username</label><input class="form-control py-4" id="inputPassword" type="text" placeholder="Enter username" name="uname"/></div>
                                                </div>
<!--                                                <div class="col-md-6">
                                                <div class="form-group"><label class="small mb-1" for="inputPassword">Current Password</label><input class="form-control py-4" id="inputPassword" type="password" placeholder="Enter current password" name="cpword"/></div>
                                                </div>-->
                                                <div class="col-md-6">
                                                <div class="form-group"><label class="small mb-1" for="inputPassword">New Password</label><input class="form-control py-4" id="inputPassword" type="password" placeholder="Enter new password" name="npword"/></div>
                                                </div>
                                                <div class="col-md-6">
                                                <div class="form-group"><label class="small mb-1" for="inputConfirmPassword">Confirm Password</label><input class="form-control py-4" id="inputConfirmPassword" type="password" placeholder="Confirm password" name="pwordconf"/></div>
                                                </div>
                                            <div class="form-group d-flex align-items-center justify-content-between mt-4 mb-0"><a class="small" href="login.jsp"></a>
                                                
                                                <input type="submit" class="btn btn-primary btn-block" value="Submit"></div>
                                        </form>
                                    </div>
                                    </div>
                                <div class="card-footer text-center">
                                        <div class="small"><a href="login.jsp"></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </main>
            </div>
            <div id="layoutAuthentication_footer">
<!--                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Your Website 2019</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
                            </div>
                        </div>
                    </div>
                </footer>-->
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
    </body>
</html>
