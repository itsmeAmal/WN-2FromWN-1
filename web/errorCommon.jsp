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
        <title> Error | iFix</title>

        <style>
            #logo{
                position: absolute;
                left: 65%;
                width: 322px;
                height: 67px;
                top: 10%;
                background-image: url("com.official.cazzendra.images.logos/3.png");
            }
            #errorImage{
                position: relative;
                left: 10%;
                width: 60%;
                top: 20%;
                height: 80%;
                background-image: url("com.official.cazzendra.images.error/error.jpg");
            }
            #customMsg{
                position: absolute;
                left: 60%;
                width: 35%;
                top: 30%;
                height: 65%;
                
            }
        </style>
        <link rel="stylesheet" href="com.official.cazzendra.css.common/bootstrap.min.css">

    </head>
    <body>
        <div style="position: absolute; left: 0px; width: 100%; top: 0px; height: 100%; background-color: #000000;">
            <div style="position: absolute; left: 10%; width: 80%; top: 10%; height: 80%; background-color: #ffffff;">
                <div id="logo"></div>
                <div id="errorImage"></div>
                <div id="customMsg">
                    <div style="position: relative; left: 10%; top: 10%; width: 80%; height: 30%; font-family: monospace; font-size: 60px; font-weight: 300; color: #0033cc;">
                        SORRY
                    </div>
                    <div style="position: relative; left: 10%; top: 10%; width: 80%; height: 20%; font-family: monospace; font-size: 24px; font-weight: 100; color: #0033cc;">
                        The page is under Construction.
                    </div>
                </div>
            </div>

        </div>

    </body>
</html>
