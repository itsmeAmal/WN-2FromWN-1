<%-- 
    Document   : commonPageTemplate
    Created on : Sep 2, 2017, 9:37:36 AM
    Author     : 4m4l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Page Title | iFix</title>

        <style>
            #logo{
                position: absolute;
                left: 65%;
                width: 322px;
                height: 67px;
                top: 10%;
                background-image: url("com.official.cazzendra.images.logos/3.png");
            }
        </style>
        <link rel="stylesheet" href="com.official.cazzendra.css.common/bootstrap.min.css">

    </head>
    <body>
        <form action="userLogin">
            <div style="position: absolute; left: 0px; width: 100%; top: 0px; height: 100%; background-color: #000000;">
                <div style="position: absolute; left: 10%; width: 80%; top: 10%; height: 80%; background-color: #ffffff;">
                    <div id="logo"></div>
                    <div style="position: absolute; left: 35%; width: 250px; height: 40px; top: 30%;">
                        <input type="text" placeholder="User Name" class="form-control" name="uname" />
                    </div>
                    <div style="position: absolute; left: 35%; width: 250px; height: 40px; top: 40%;">
                        <input type="password" placeholder="Password" class="form-control" name="password" />
                    </div>
                    <div style="position: absolute; left: 35%; width: 250px; height: 50px; top: 50%;">
                        <input type="submit" name="btn-1" value="Login" class="btn btn-info" style="width: 250px;"/>  
                    </div>
                    <%
                        HttpSession hs = request.getSession();
                        String status = (String) hs.getAttribute("loginStatus");
                        if (status.equals("false") && status != null && status != "firstlogin") {
                    %>
                    <script>
                        alert("Username or Password is incorrect");
                    </script>

                    <%
                        }
                    %>
                    <div></div>
                    <div></div>
                </div>
            </div>
        </form>
    </body>
</html>
