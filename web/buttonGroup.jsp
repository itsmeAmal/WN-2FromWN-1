<%-- 
    Document   : buttonGroup
    Created on : Aug 9, 2017, 11:08:58 PM
    Author     : 4m4l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>
            a.form-control:hover, a.form-control :active{
                background: #ff0000;
                font-size: 130%;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div style="position: absolute; left: 20%; width: 530px; height: 500px; top: 90px;">
            <div style="position: absolute; left: 3%; width: 200px; height: 50px; top: 20px;">
                <a class="form-control" href="view_products_admin.jsp" style="background: linear-gradient(to right, rgba(0, 0, 51, 255), red ); color: #ffffff; font-weight: 400;" >Products</a>
            </div>
            <div style="position: absolute; left: 3%; width: 200px; height: 50px; top: 60px;" >
                <a href="admin_users.jsp" class="form-control" style="background: linear-gradient(to right, rgba(0, 0, 102, 255), red); color: #ffffff; font-weight: 400;" >Users</a>
            </div>
            <div style="position: absolute; left: 3%; width: 200px; height: 50px; top: 100px;" >
                <a href="#" class="form-control" style="background: linear-gradient(to right, rgba(0, 0, 153, 255), red); color: #ffffff; font-weight: 400;" >Deactivated Users</a>
            </div>
            <div style="position: absolute; left: 3%; width: 200px; height: 50px; top: 140px;">
                <a href="delivery_info.jsp" class="form-control" style="background: linear-gradient(to right, rgba(0, 0, 204, 255), red) ; color: #ffffff; font-weight: 400;" >Delivery Info</a>
            </div>
            <div style="position: absolute; left: 3%; width: 200px; height: 50px; top: 180px;">
                <a href="product_add.jsp" class="form-control" style="background: linear-gradient(to right, rgba(0 ,0, 255, 255), red); color: #ffffff; font-weight: 400;" >Add Products</a>
            </div>
            <div style="position: absolute; left: 3%; width: 200px; height: 50px; top: 220px;">
                <a href="admin_update_qty_comment.jsp" class="form-control" style="background: linear-gradient(to right, rgba(51, 51, 255, 255), red); color: #ffffff; font-weight: 400;" >Update Product Qty</a>
            </div> 
        </div>
    </body>
</html>
