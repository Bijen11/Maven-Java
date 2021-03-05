<%-- 
    Document   : upload
    Created on : May 27, 2020, 1:20:13 PM
    Author     : Rai jee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>User Information</title>
<link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
<link href="CSS/user_info.css" rel="stylesheet" type="text/css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    </head>
    <body>

        <form action="imageuploadservelet" method="post" enctype="multipart/form-data">
            <div class="container">
                <div class="regbox box">
                    <img class="avatar" src="img/information.png">

                    <p>
                        Id</p>
                    <input type="text" placeholder="id" name="id" required>
                    <p>
                        Bio</p>
                    <input type="text" placeholder="Short Bio" name="bio" required>
                    <p>
                        Additional Info</p>
                    <input type="text" placeholder="More Info" name="add_info">
                    <p>
                        Upload photo</p><br>
                    <input type="file" name="file" /> 
                    <p>

                        <input type="submit" name="submit" /> 

                        </form>
                </div>
            </div>






        </form>

    </body>
</html>
