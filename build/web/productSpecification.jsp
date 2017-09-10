<%-- 
    Document   : commonPageTemplate
    Created on : Sep 2, 2017, 9:37:36 AM
    Author     : 4m4l
--%>

<%@page import="ifix.dao.Impl.laptopModelDaoImpl"%>
<%@page import="ifix.model.LaptopModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Specifications | iFix</title>

        <style>
            #logo{
                position: absolute;
                left: 65%;
                width: 322px;
                height: 67px;
                top: 10%;
                background-image: url("com.official.cazzendra.images.logos/3.png");
            }
        </style>
        <link rel="stylesheet" href="com.official.cazzendra.css.common/bootstrap.min.css">

    </head>
    <body>
        <div style="position: absolute; left: 0px; width: 100%; top: 0px; height: 100%; background-color: #000000;">
            <div style="position: absolute; left: 10%; width: 80%; top: 10%; height: 80%; background-color: #ffffff;">
                <div id="logo"></div>
                <%
                    HttpSession hs = request.getSession();
                    String laptopId = (String) hs.getAttribute("idLaptop");
                    

                    laptopModelDaoImpl laptopModelDaoImpl1 = new laptopModelDaoImpl();
                    LaptopModel laptopModel = laptopModelDaoImpl1.getLaptopModelById(laptopId);
                %>
                <div style="position: absolute; left: 13%; top: 40%; width: 250px; height: 250px; background-color: #0033cc;"></div>
                <div style="position: absolute; left: 13%; top: 25%; width: 40%; height: 10%; font-size: 34px;"><%= laptopModel.getLaptopModelLaptopId()%></div>

                <div style="position: absolute; left: 40%; top: 40%; width: 10%; height: 30px;  ">Hard Disk  :</div>
                <div style="position: absolute; left: 50%; top: 40%; width: 20%; height: 30px; font-weight: 600; "><%= laptopModel.getLaptopModelHardDisk()%></div>

                <div style="position: absolute; left: 40%; top: 45%; width: 10%; height: 30px;  ">RAM  :</div>
                <div style="position: absolute; left: 50%; top: 45%; width: 20%; height: 30px; font-weight: 600; "><%= laptopModel.getLaptopModelRam()%></div>

                <div style="position: absolute; left: 40%; top: 50%; width: 10%; height: 30px;  ">VGA  :</div>
                <div style="position: absolute; left: 50%; top: 50%; width: 20%; height: 30px; font-weight: 600; "><%= laptopModel.getLaptopModelVga()%></div>

                <div style="position: absolute; left: 40%; top: 55%; width: 10%; height: 30px;  ">Processor  :</div>
                <div style="position: absolute; left: 50%; top: 55%; width: 20%; height: 30px; font-weight: 600; "><%= laptopModel.getLaptopModelProcessor()%></div>

                <div style="position: absolute; left: 40%; top: 60%; width: 10%; height: 30px;  ">USB Type 1  :</div>
                <div style="position: absolute; left: 50%; top: 60%; width: 20%; height: 30px; font-weight: 600; "><%= laptopModel.getLaptopModelUsbType1()%></div>

                <div style="position: absolute; left: 40%; top: 65%; width: 10%; height: 30px;  ">USB Type 2  :</div>
                <div style="position: absolute; left: 50%; top: 65%; width: 20%; height: 30px; font-weight: 600; "><%= laptopModel.getLaptopModelUsbType2()%></div>

                <div style="position: absolute; left: 40%; top: 70%; width: 10%; height: 30px;  ">HDMI O/P  :</div>
                <div style="position: absolute; left: 50%; top: 70%; width: 20%; height: 30px; font-weight: 600; "><%= laptopModel.getLaptopModelHdmi()%></div>

                <div style="position: absolute; left: 40%; top: 75%; width: 10%; height: 30px;  ">VGA O/P  :</div>
                <div style="position: absolute; left: 50%; top: 75%; width: 20%; height: 30px; font-weight: 600; "><%= laptopModel.getLaptopModelVgaUotput()%></div>

                <div style="position: absolute; left: 40%; top: 80%; width: 10%; height: 30px;  ">Screen Size  :</div>
                <div style="position: absolute; left: 50%; top: 80%; width: 20%; height: 30px; font-weight: 600; "><%= laptopModel.getLaptopModelScreenSize()%></div>

                <div style="position: absolute; left: 40%; top: 85%; width: 10%; height: 30px;  ">Cache  :</div>
                <div style="position: absolute; left: 50%; top: 85%; width: 20%; height: 30px; font-weight: 600; "><%= laptopModel.getLaotopModelCacheMemory()%></div>

            </div>

        </div>

    </body>
</html>
