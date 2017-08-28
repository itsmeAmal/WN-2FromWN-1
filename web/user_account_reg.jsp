<%-- 
    Document   : user_account_reg
    Created on : Dec 28, 2016, 6:37:12 PM
    Author     : 4m4l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Account | Softlogic</title>
        <script type="text/javascript">
            window.location.hash = "no-back-button";
            window.location.hash = "Again-No-back-button";//again because google chrome don't insert first hash into history
            window.onhashchange = function() {
                window.location.hash = "no-back-button";
            };
        </script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>

            #email{
                position: absolute;
                left: 35%;
                width: 250px;
                height: 30px;
                top: 30%;
            }
            #fname{
                position: absolute;
                left: 35%;
                width: 250px;
                height: 30px;
                top: 36%;
            }
            #lname{
                position: absolute;
                left: 35%;
                width: 250px;
                height: 30px;
                top: 42%;
            }
            #pw{
                position: absolute;
                left: 35%;
                width: 250px;
                height: 30px;
                top: 48%;

            }
            #agreement{
                position: absolute;
                left: 35%;
                width: 250px;
                height: 100px;
                top: 54%;

            }
            #btn_2{
                position: absolute;
                left: 35%;
                width: 250px;
                height: 30px;
                top: 73%;
            }
            #background_img{
                position: absolute;
                left: 0px;
                top: 0px;
                width: 100%;
                height: 100%;
                /*background-image: url("images/1.jpg");*/

            }
            #backtohomelink{
                position: absolute;
                left: 7%;
                width: 300px;
                height: 30px;
                top: 30%;
            }
            #logo{
                position: absolute;
                left: 35%;
                width: 336px;
                height: 67px;
                top: 15%;
                background-image: url("com.official.cazzendra.logos/3.png");
            }


        </style>
    </head>
    <body>
        <form action="userRegisterServlet" method="post">

            <div id="background_img"></div>
            <div id="logo"></div>
            <div id="backtohomelink">
                <a href="index.jsp" style="font-family: inherit; font-size: 24px; " >Back to Home </a>

            </div>

<!--
            <div id="email">
                <input type="text" name="email" placeholder="Email or Phone no" class="form-control"/>
            </div>-->
            <div id="fname">
                <input type="text" name="Address" placeholder="Address" class="form-control" />
            </div>
            <div id="lname">
                <input type="text" name="contact" placeholder="Contact" class="form-control" />
            </div>
             <div id="email">
                <input type="text" name="uname" placeholder="Name" class="form-control"/>
            </div> 

<!--            <div id="pw">
                <input type="password" name="password" placeholder="password" class="form-control" />
            </div>-->
            <div id="agreement">
                <p style="color: #000000;">
                    By Registering, you agree that you've read and accepted our user agreement,
                    you're at least 18 years old, and consent to our privacy notice and receiving
                    marketing communications from us.
                </p>
            </div>
            <div id="btn_2">
                <input type="Submit" value="Submit" class="form-control" style="color: #ffffff; background-color: #0099ff; alignment-adjust: middle; "  />
            </div>
        </form>

    </body>
</html>
