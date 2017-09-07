<%-- 
    Document   : commonPageTemplate
    Created on : Sep 2, 2017, 9:37:36 AM
    Author     : 4m4l
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="ifix.controller.accountStatusController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Account Status | iFix</title>

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
                left: 20%; 
                width: 60%;
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
    <body style="background-color: #000000;">
        <div style="position: absolute; left: 0px; width: 100%; top: 0px; height: 100%; background-color: #000000;">
            <div id="logo"></div>
            <%
                accountStatusController acStatusController = new accountStatusController();
                ResultSet rset = acStatusController.getAllRecords();

            %>
            <div style="position: absolute; left: 10%; width: 80%; top: 30%; height: content-box; background-color: #ffffff;">
                <table id="accounts">
                    <th>Product As Invoice</th>
                    <th>Quantity</th>
                    <th>Unit Price</th>
                    <th>Expense</th>
                    <th>Income</th>

                    <% while (rset.next()) {%>

                    <tr class="colomn-purp">
                        <td><%= rset.getString(1)%> </td>
                        <td><%= rset.getInt(2)%> </td>
                        <td><%= rset.getBigDecimal(3)%> </td>
                        <td><%= rset.getBigDecimal(4)%> </td>
                        <td><%= rset.getBigDecimal(5)%> </td>
                    </tr>
                    <%
                        }
                    %>
                </table>
            </div>

        </div>

    </body>
</html>
