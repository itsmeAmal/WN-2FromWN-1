<%-- 
    Document   : commonPageTemplate
    Created on : Sep 2, 2017, 9:37:36 AM
    Author     : 4m4l
--%>

<%@page import="ifix.controller.laptopPriceDetailController"%>
<%@page import="ifix.model.laptopPriceDetail"%>
<%@page import="ifix.controller.laptopModelController"%>
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
                    String laptopId = (String) hs.getAttribute("laptopModelId");
                    if (hs.getAttribute("laptopModelId") == null) {
                        response.sendRedirect("laptopModelAll.jsp");
                    } else {
                        LaptopModel laptopModel = new laptopModelController().getLaptopModelByLaptopModelId(laptopId);
                %>

                <div style="position: absolute; left: 40%; top: 32%; width: 15%; height: 30px; color: #6699ff;" >Item Description</div>

                <div style="position: absolute; left: 13%; top: 40%; width: 250px; height: 250px; "><img src="<%= laptopModel.getLaptopImagePath() %>"></div>
                <div style="position: absolute; left: 13%; top: 25%; width: 40%; height: 10%; font-size: 34px; color: #666666;"><%= laptopModel.getLaptopModelLaptopId()%></div>

                <div style="position: absolute; left: 40%; top: 40%; width: 10%; height: 30px; color: #999999; ">Hard Disk  :</div>
                <div style="position: absolute; left: 50%; top: 40%; width: 20%; height: 30px; font-weight: 600;  "><%= laptopModel.getLaptopModelHardDisk()%></div>

                <div style="position: absolute; left: 40%; top: 45%; width: 10%; height: 30px; color: #999999; ">RAM  :</div>
                <div style="position: absolute; left: 50%; top: 45%; width: 20%; height: 30px; font-weight: 600;  "><%= laptopModel.getLaptopModelRam()%></div>

                <div style="position: absolute; left: 40%; top: 50%; width: 10%; height: 30px; color: #999999; ">VGA  :</div>
                <div style="position: absolute; left: 50%; top: 50%; width: 20%; height: 30px; font-weight: 600; "><%= laptopModel.getLaptopModelVga()%></div>

                <div style="position: absolute; left: 40%; top: 55%; width: 10%; height: 30px; color: #999999; ">Processor  :</div>
                <div style="position: absolute; left: 50%; top: 55%; width: 20%; height: 30px; font-weight: 600;  "><%= laptopModel.getLaptopModelProcessor()%></div>

                <div style="position: absolute; left: 40%; top: 60%; width: 10%; height: 30px; color: #999999; ">USB Type 1  :</div>
                <div style="position: absolute; left: 50%; top: 60%; width: 20%; height: 30px; font-weight: 600;  "><%= laptopModel.getLaptopModelUsbType1()%></div>

                <div style="position: absolute; left: 40%; top: 65%; width: 10%; height: 30px; color: #999999; ">USB Type 2  :</div>
                <div style="position: absolute; left: 50%; top: 65%; width: 20%; height: 30px; font-weight: 600;  "><%= laptopModel.getLaptopModelUsbType2()%></div>

                <div style="position: absolute; left: 40%; top: 70%; width: 10%; height: 30px; color: #999999; ">HDMI O/P  :</div>
                <div style="position: absolute; left: 50%; top: 70%; width: 20%; height: 30px; font-weight: 600;  "><%= laptopModel.getLaptopModelHdmi()%></div>

                <div style="position: absolute; left: 40%; top: 75%; width: 10%; height: 30px; color: #999999; ">VGA O/P  :</div>
                <div style="position: absolute; left: 50%; top: 75%; width: 20%; height: 30px; font-weight: 600; "><%= laptopModel.getLaptopModelVgaUotput()%></div>

                <div style="position: absolute; left: 40%; top: 80%; width: 10%; height: 30px; color: #999999; ">Screen Size  :</div>
                <div style="position: absolute; left: 50%; top: 80%; width: 20%; height: 30px; font-weight: 600; "><%= laptopModel.getLaptopModelScreenSize()%></div>

                <div style="position: absolute; left: 40%; top: 85%; width: 10%; height: 30px; color: #999999; ">Cache (Mb) :</div>
                <div style="position: absolute; left: 50%; top: 85%; width: 20%; height: 30px; font-weight: 600; "><%= laptopModel.getLaotopModelCacheMemory()%></div>

                <%
                        laptopPriceDetail lapPriceDetail = laptopPriceDetailController.getLaptopPriceDetailByLaptopModelId(String.valueOf(laptopModel.getLaptopModelLaptopId()));                  
                %>
                <!--all are brand new--> 
                <div style="position: absolute; left: 65%; width: 25%; top: 40%; height: 20%; color: #333333; background-color: #ccccff;">
                    <p style="position: relative; left: 10%; top: 10%; width: 80%; height: 80%; color: #000099;">
                        Important : All products are sold here in brand new condition. Used or Re-Conditioned laptops are not sold.
                    </p>
                </div>
                
                <!--available qty-->
                <div style="position: absolute; left: 65%; width: 25%; height: 30px; top: 61%; color: #999999; font-size: 14px; ">
                    Available quantity          :    <%=lapPriceDetail.getLaptopPriceDetailQty() %>
                </div>
                <!--selling price-->
                <div style="position: absolute; left: 65%; top: 67%; width: 25%; height: 30px; font-weight: 600; font-size: 20px;">
                    Rs 
                </div>
                
                <div style="position: absolute; left: 68%; top: 67%; width: 25%; height: 30px; font-weight: 600; font-size: 20px; ">
                    <%=lapPriceDetail.getLaptopPriceDetailSellingPrice() %>
                </div>

                <!--two buttons for add to cart and buy now-->
                <div style="position: absolute; left: 65%; top: 73%; width: 25%; height: 30px;">
                    <input type="submit" name="btn_add_to_cart" value="Add to cart" class="btn btn-info" style="width: 200px;" /> 
                </div>
                <div style="position: absolute; left: 65%; top: 81%; width: 25%; height: 30px;">
                    <input type="submit" name="btn_buy_now" value="Buy now" class="btn btn-info" style="width: 200px;"/> 
                </div>
                <%
//                    hs.invalidate();
                    }              
                %>

                <!--free delivery msg-->
                
                <div style="position: absolute; left: 40%; width: 40%; top: 93%; height: 30px; color: #ff0033; ">
                    Free Island wide Delivery
                </div>
                <!--<div style="position: absolute; left: 65%; width: 188px; top: 91%; height: 40px; background-image: url('com.official.cazzendra.images.paymentgateway/payableCards.png') "></div>-->
                
                
            </div>

        </div>

    </body>
</html>
