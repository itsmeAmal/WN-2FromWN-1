<%-- 
    Document   : seller_company
    Created on : Dec 28, 2016, 7:17:07 PM
    Author     : 4m4l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Company | Softlogic</title>
        <script type="text/javascript">
            window.location.hash = "no-back-button";
            window.location.hash = "Again-No-back-button";//again because google chrome don't insert first hash into history
            window.onhashchange = function() {
                window.location.hash = "no-back-button";
            };
        </script>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <style>
            #com_name{
                position: absolute;
                left: 35%;
                width: 250px;
                height: 30px;
                top: 30%;

            }
            #com_email{
                position: absolute;
                left: 35%;
                width: 250px;
                height: 30px;
                top: 36%;

            }
            #com_address{
                position: absolute;
                left: 35%;
                width: 250px;
                height: 30px;
                top: 42%;
            }
            #com_tp{
                position: absolute;
                left: 35%;
                width: 250px;
                height: 30px;
                top: 48%;
            }
            #com_btn{
                position: absolute;
                left: 35%;
                width: 250px;
                height: 30px;
                top: 54%;
            }
        </style>
    </head>
    <body>
        <form action="seller_company">
            <div id="com_name">
                <input type="text" name="company_name" placeholder="Company Name" class="form-control" />
            </div>
            <div id="com_email">
                <input type="text" name="email_com" placeholder="Company Email" class="form-control" />
            </div>
            <div id="com_address">
                <input type="text" name="add_com" placeholder="Address" class="form-control" />
            </div>

            <div id="com_tp">
                <input type="text" name="tp_com" placeholder="Contact" class="form-control" />
            </div>
            <div id="com_btn">
                <input type="submit" name="btn_3" value="Submit" class="form-control" style="color: #ffffff; background-color: #0099ff; "  />
            </div>

        </form>
    </body>
</html>
