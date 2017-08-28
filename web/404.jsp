<%-- 
    Document   : 404
    Created on : Jan 23, 2017, 2:28:44 AM
    Author     : 4m4l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>404 error</title>
        <script type="text/javascript">
            window.location.hash = "no-back-button";
            window.location.hash = "Again-No-back-button";//again because google chrome don't insert first hash into history
            window.onhashchange = function() {
                window.location.hash = "no-back-button";
            }
        </script>
        <style type="text/css">
            #error_img{
                position: absolute;
                left: 0px;
                width: 100%;
                height: 100%;
                top: 0px;
                background-color: #999999;
            }
            #404_img{
                position: absolute;
                left: 20%;
                top: 200px;
                width: 60%;
                height: 400px;
                font-family: fantasy;
                font-size: 40px;
                font-weight: 400;
                color: #0000cc;
            }
        </style>
    </head>
    <body>
        <div id="error_img">
            <div id="404_img">
                Sorry...! 404.. :) 
            </div>
        </div>
    </body>
</html>
