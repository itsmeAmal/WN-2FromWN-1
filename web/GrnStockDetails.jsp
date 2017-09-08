<%-- 
    Document   : commonPageTemplate
    Created on : Sep 2, 2017, 9:37:36 AM
    Author     : 4m4l
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="ifix.controller.laptopPriceDetailController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Stock | iFix</title>

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

            tr:nth-child(even){background-color: #f2f2f2}
            tr:nth-child(odd){color: #ffffff;}

        </style>
        <link rel="stylesheet" href="com.official.cazzendra.css.common/bootstrap.min.css">

    </head>
    <body>
        <div style="position: absolute; left: 0px; width: 100%; top: 0px; height: 100%; background-color: #000000;">
            <div id="logo"></div>
            <%
                laptopPriceDetailController lapPriceDetailController = new laptopPriceDetailController();
                ResultSet rset = lapPriceDetailController.getAlllaptopPriceDetails();
            %>
            <div style="position: absolute; left: 10%; width: 80%; top: 30%; height: content-box; background-color: #ffffff;">
                <table id="accounts">
                    <th>Laptop Model</th>
                    <th>Buying Price</th>
                    <th>Selling Price</th>
                    <th>Min. Selling Price</th>
                    <th>Quantity</th>
                        <%                
                            while (rset.next()) {

                        %>

                    <tr class="colomn-purp">
                        <td><%= rset.getString(2)%></td>
                        <td><%= rset.getBigDecimal(3)%></td>
                        <td><%= rset.getBigDecimal(4)%></td>
                        <td><%= rset.getBigDecimal(5)%></td>
                        <td><%= rset.getInt(7)%></td>
                    </tr>
                    <%                        }
                    %>
                </table>
            </div>

        </div>


        <!--        
                
                
                
                
                <div style="position: absolute; left: 0px; width: 100%; top: 0px; height: 100%; background-color: #000000;">
                    <div style="position: absolute; left: 10%; width: 80%; top: 10%; height: 80%; background-color: #ffffff;">
                        <div id="logo"></div>
        
                        <table>
                            <th>Laptop Model</th>
                            <th>Buying Price</th>
                            <th>Selling Price</th>
                            <th>Min. Selling Price</th>
                            <th>Quantity</th>
                        
                            <tr>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </table>
        
                    </div>
        
                </div>-->

    </body>
</html>
