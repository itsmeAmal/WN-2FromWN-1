<%-- 
    Document   : laptopModelAll
    Created on : Sep 1, 2017, 5:12:11 AM
    Author     : 4m4l
--%>

<%@page import="ifix.controller.laptopPriceDetailController"%>
<%@page import="ifix.dao.Impl.laptopPriceDetailDaoImpl"%>
<%@page import="ifix.model.laptopPriceDetail"%>
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
                background-image: url("com.official.cazzendra.images.logos/3.png");
            }
        </style>
        <link rel="stylesheet" href="com.official.cazzendra.css.common/bootstrap.min.css">
    </head>
    <body style="background-color: #000000;">
        <div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;">
            <div style="position: absolute; left: 10%; width: 80%; top: 5%; height: 100%;"></div>  
            <div id="logo"></div>
            <%
                SessionFactory sf = ifix.hib.connection.connector.getSessionFactory();
                Session ses = sf.openSession();
                Transaction tr = ses.beginTransaction();
                Criteria cr = ses.createCriteria(pojos.LaptopModel.class);
                List<pojos.LaptopModel> li = cr.list();
                //------------------------------------

                for (pojos.LaptopModel laps : li) {
            %>

            <div style="position: relative; left: 20%; width: 60%; top: 30%; height: 300px; background-color: #ffffff; padding-top: 100px;">
                <div style="position: absolute; left: 95%; top: 0%; width: 64px; height: 64px; background-image: url('com.official.cazzendra.images.paymentgateway/label3.png')"></div>

                <div style="position: absolute; left: 5%; width: 250px; height: 250px; top: 10%;"><img src="<%= laps.getLaptopModelImagePath()%>"></div>

                <div style="position: absolute; left: 38%; width: 250px; height: 40px; top: 15%; font-family: inherit; font-weight: 400; font-size: 20px; color: #999999;">Laptop Model   :</div>
                <div style="position: absolute; left: 58%; width: 250px; height: 40px; top: 15%; font-family: inherit; font-weight: 400; font-size: 20px;"><%= laps.getLaptopModelLaptopId()%></div>
                <div style="position: absolute; left: 38%; width: 250px; height: 40px; top: 25%; color: #999999; ">Processor  :</div>
                <div style="position: absolute; left: 58%; width: 250px; height: 40px; top: 25%;"><%= laps.getLaptopModelProcessor()%></div>
                <%
                    laptopPriceDetail lapPriceDetail = laptopPriceDetailController.getLaptopPriceDetailByLaptopModelId(String.valueOf(laps.getLaptopModelLaptopId()));
                %>

                <div style="position: absolute; left: 38%; top: 65%; width: 250px; height: 40px; font-size: 24px; ">                     
                    Rs   <%= lapPriceDetail.getLaptopPriceDetailSellingPrice()%> </div>                

                <!--bottom black line-->
                <div style="position: absolute; left: 0%; top: 98%; width: 100%; height: 5px; background-color: #000000; padding-bottom: 0px;"></div>
                <!--end of bottom line--> 
                <form action="laptopModelRedirectToProductSpec"> 
                    <%
                        if (lapPriceDetail.getLaptopPriceDetailQty() == 0) {
                        } else {
                    %>
                    <div style="position: absolute; left: 38%; top: 45%; width: 200px; height: 30px; color: #ffffff; ">                        
                        <!--more detail button-->
                        <input type="submit" class="btn btn-info" name="btn-view-detail" value="More Details"/>
                        <input type="hidden" name="hidden_tf_laptop_model_id" value="<%= laps.getLaptopModelLaptopId()%>"/>
                    </div>
                    <%
                        }
                    %>
                </form>
                <%
                    if (lapPriceDetail.getLaptopPriceDetailQty() == 0) {


                %>
                <div style="background-color: #ccccff; position: absolute; left: 60%; top: 45%; width: 25%; height: 30%;">
                    <div style="position: absolute; left: 10%; top: 10%; width: 80%; height: 80%; color: #cc0000; ">
                        <p>
                            Stocks are not available at this moment. 
                        </p>                           
                    </div>
                </div>
                <%     } else if (lapPriceDetail.getLaptopPriceDetailQty() < 10) {
                %>
                <div style="background-color: #ccccff; position: absolute; left: 60%; top: 45%; width: 25%; height: 30%;">
                    <div style="position: absolute; left: 10%; top: 10%; width: 80%; height: 80%; color: #000099; ">
                        <p>
                            Stocks are limited. This price valid until stock last. <br>
                            Available Quantity  : <%= lapPriceDetail.getLaptopPriceDetailQty()%>
                        </p>                           
                    </div>
                </div>

                <%
                    }
                %>

            </div>
            <%
                }
                tr.commit();
                ses.close();
                tr = null;
            %>

        </div>
    </body>
</html>
