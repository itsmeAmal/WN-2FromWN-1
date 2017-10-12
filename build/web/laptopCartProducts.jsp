<%-- 
    Document   : userAll
    Created on : Sep 5, 2017, 11:02:07 AM
    Author     : 4m4l
--%>

<%@page import="ifix.sessionCart.laptopCartModel"%>
<%@page import="ifix.sessionCart.laptopCart"%>
<%@page import="java.math.BigDecimal"%>
<%@page import="java.util.ArrayList"%>
<%@page import="ifix.controller.userController"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="ifix.controller.accountStatusController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Users | iFix</title>

        <style> 
            #logo{
                position: absolute;
                left: 65%;
                width: 322px;
                height: 67px;
                top: 10%;
                background-image: url("com.official.cazzendra.images.logos/3.png");
            }
            #accounts{
                position: absolute;
                left: 10%; 
                width: 80%;
                top: 30%;
                height: 100%;
            }
            table {
                border-collapse: collapse;
                width: 100%;
                height: auto;
            }

            th, td {
                text-align: left;
                padding: 8px;
            }
            th{
                background-color: #00cccc;
                color: #ffffff;
                font-family: serif;
                font-size: 20px;
                font-weight: 300;

            }
            tr{
                height: 40px;
            }
            tr:nth-child(even){background-color: #f2f2f2}
            tr:nth-child(odd){color: #ffffff;}

        </style>
        <link rel="stylesheet" href="com.official.cazzendra.css.common/bootstrap.min.css">
    </head>
    <body style="background-color: #000000;">

        <div style="position: absolute; left: 0px; width: 100%; top: 0px; height: 100%; background-color: #000000;">
            <div id="logo"></div>
            <div style="position: absolute; left: 10%; width: 80%; top: 30%; height: content-box; background-color: #ffffff;">
                <table id="accounts">
                    <th>Laptop Model</th>
                    <th>Quantity</th>                    
                    <th>Unit Price</th>
                    <th>Sub Total</th>                        
                    <th>Action</th>
                        <%
                            HttpSession hs = request.getSession();
                            laptopCart cr = null;
                            BigDecimal subtot = BigDecimal.ZERO;
                            if (hs.getAttribute("cart") != null) {
                                cr = (laptopCart) hs.getAttribute("cart");
                                ArrayList<laptopCartModel> items = cr.getCart();

                                for (laptopCartModel ci : items) {
                                    BigDecimal tot = ci.getLaptopQty().multiply(ci.getLaptopSellingPrice());
                                    subtot = subtot.add(tot);
                        %>
                    <form action="removeLaptopFromCart">
                        <tr class="table-responsive">
                            <td><%= ci.getLaptopModelIdCart()%></td> 
                            <td><%= ci.getLaptopQty()%></td>
                            <td><%= ci.getLaptopSellingPrice()%></td>
                            <td><%= subtot%></td>                                
                            <td> <input type="submit" name="btn-1" value="REMOVE" class="btn btn-danger" style="height: 35;" />  </td>
                        <input type="hidden" name="hiddenModelId" value="<%= ci.getLaptopModelIdCart() %>"/>
                        </tr>
                    </form> 
                    <%
                            }
                        }
                    %>
                </table>
            </div>
        </div>
    </body>
</html>
