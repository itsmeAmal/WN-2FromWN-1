<%-- 
    Document   : AdvancedSearch
    Created on : Feb 8, 2017, 6:06:11 PM
    Author     : 4m4l
--%>

<%@page import="pojos.Laptops"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div style="position: absolute; left: 0px; width: 100%; height: 100%; top: 0px;">
            <div style="position: absolute; left: 10%; top: 15%; width: 200px; height: 50px; font-family: sans-serif; font-size: 24px;">Search</div>
            <div style="position: absolute; left: 20%; top: 15%; width: 200px; height: 50px; font-size: 18px; font-weight: 300;">
                <select class="form-control" name="brnd">
                    <%
                        Session ses = conn.connector.getSessionFactory().openSession();
                        Criteria cr = ses.createCriteria(pojos.LaptopBrands.class);
                        List<pojos.LaptopBrands> lst = cr.list();
                        if (lst.size() > 0) {
                            for (pojos.LaptopBrands p : lst) {
                                out.write("<option>" + p.getBname() + "</option>");
                            }


                    %>
                </select>

                <%                    }
                %>


            </div>
            <%
                //SessionFactory sf = controller.connection.getSessionFactory();
                SessionFactory sf = conn.connector.getSessionFactory();
                Session s = sf.openSession();
                Transaction tr = s.beginTransaction();

                //src.Qqq st = (src.Qqq) s.load(src.Qqq.class, 3);
                pojos.Laptops lpt = (pojos.Laptops) s.load(pojos.Laptops.class, 3);

                Criteria c = s.createCriteria(pojos.Laptops.class);
                List<pojos.Laptops> lis = c.list();

                for (pojos.Laptops pr : lis) {

                    String modelname = pr.getModel();
                    String ram = pr.getRam();
                    String vga = pr.getVga();
                    String img = pr.getLaptopimg();
                    Integer id = pr.getId();
                    String brand = pr.getBrand();
                    String processor = pr.getProcessor();
                    String Screen = pr.getScreensize();
                    Integer price = pr.getPriceLap();
                    String hard = pr.getHarddisk();
            %>

            <div style="position: absolute; left: 10%; top: 25%; width: 60%; height: 60%; ">
                <table class="table table-responsive">
                    <tr>
                        <th style="width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; " >Product Brand</th>
                        <th style="width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; " >Product Model</th>
                        <th style="width: 300px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; " >Image</th>
                        <th style="width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; " >Specifications</th>
                        <th style="width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; " >Price</th>
                    </tr>


                    <tr>

                    </tr>
                </table>
                <%
                }
                %>


            </div>

            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
            <div></div>
        </div>
    </body>
</html>
