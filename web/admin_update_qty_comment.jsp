<%-- 
    Document   : admin_update_qty_comment
    Created on : Apr 30, 2017, 5:04:45 PM
    Author     : 4m4l
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Test Page </title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>

        <form action="update_qty" method="POST">


            <div style="position: absolute; left: 100px; top: 10px; width: 450px; height: 50px;" >
                <h2>Update Product Quantity</h2>
            </div>

            <div style="position: absolute; left: 100px; top: 100px; width: 250px; height: 50px;">
                Qty:<br>
                <input type="text" name="qty" style="position: absolute; width: 350px;" required />
            </div>

            <div style="position: absolute; left: 100px; top: 150px; width: 250px; height: 50px;">
                Model:<br>
                <select class="form-control" name="model">
                    <%
                        Session ses2 = conn.connector.getSessionFactory().openSession();
                        Criteria cr2 = ses2.createCriteria(pojos.LaptopModel.class);
                        List<pojos.LaptopModel> lst2 = cr2.list();
                        if (lst2.size() > 0) {
                            for (pojos.LaptopModel p2 : lst2) {
                                out.write("<option>" + p2.getModelName() + "</option>");

                            }
                    %>
                </select>
                <%
                        }
                %>
            </div>

            <div style="position: absolute; left: 100px; top: 200px; width: 250px; height: 50px;" >
                Comment:<br>
                <input type="text" name="comment" style="position: absolute; width: 350px;" required />
            </div>

            <div style="position: absolute; left: 100px; top: 300px; width: 250px; height: 50px;" >
                <input type="submit" name="Submit" value="Submit Query" />
            </div>


        </form>


    </body>
</html>
