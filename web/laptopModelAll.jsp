<%-- 
    Document   : laptopModelAll
    Created on : Sep 1, 2017, 5:12:11 AM
    Author     : 4m4l
--%>

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Models | iFix</title>
        <style>
            #logo{
                position: absolute;
                left: 65%;
                width: 322px;
                height: 67px;
                top: 10%;
                background-image: url("com.official.cazzendra.logos/3.png");
            }
        </style>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; background-color: #000000;">
            <div style="position: absolute; left: 10%; width: 80%; top: 5%; height: 90%; background-color: #ffffff;"></div>  
            <div id="logo"></div>
            <%
                SessionFactory sf = ifix.hib.connection.connector.getSessionFactory();
                Session ses = sf.openSession();
                Transaction tr = ses.beginTransaction();
                pojos.LaptopModel laptopModels = new pojos.LaptopModel();
                Criteria cr = ses.createCriteria(pojos.LaptopModel.class);
                List<pojos.LaptopModel> li = cr.list();

                for (pojos.LaptopModel laps : li) {
            %>
            <div style="position: absolute; left: 30%; width: 250px; height: 250px; top: 30%;"><img src="<%= laps.getLaptopModelImagePath()  %>"></div>
            <div style="position: absolute; left: 30%; width: 250px; height: 40px; top: 60%; font-family: inherit; font-weight: 400; font-size: 20px;"><%= laps.getLaptopModelLaptopId() %></div>
            <div style="position: absolute; left: 30%; width: 250px; height: 40px; top: 65%;"><%= laps.getLaptopModelProcessor() %></div>


            <%
                }
            %>

        </div>
    </body>
</html>
