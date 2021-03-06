<%-- 
    Document   : controlPanel
    Created on : Aug 4, 2017, 6:41:33 AM
    Author     : 4m4l
--%>

<%@page import="ifix.core.sessionHandler"%>
<%@page import="ifix.controller.laptopPriceDetailController"%>
<%@page import="ifix.controller.userController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Control Panel</title>
        <style>
            #divOuter{               
                position: absolute;
                left: 0px;
                width: 100%;
                height: 100%;
                top: 0px;    
                background-color: #cccccc;
            }
            #divTopBlueLine{
                position: absolute;
                left: 0px;
                width: 100%;
                height: 5%;
                top: 0px;
                background-color: #0066ff;
            }
            #divLeftBlackSpace{
                position: absolute;
                left: 0px;
                width: 15%;
                height: 100%;
                top: 5%;  
                background-color: #333333;
            }
            #divTopWhiteSpece{
                position: absolute;
                left: 15%;
                width: 85%;
                height: 6%;
                top: 5%;
                background-color: #ffffff;
            }
            #divMenuBox1{
                position: absolute;
                left: 17%;
                top: 13%;
                width: 19%;
                height: 9%;
                background-color: #cc66ff;
            }
            #divMenuBox1_infoBox{
                position: absolute;
                top: 23%;
                width: 19%;
                height: 18%;
                left: 17%;
                background-color: #660066;
                color: #ffffff;
                font-size: 40px;
            }
            #divMenuBox1_infoBox_value{
                position: relative;
                left: 40%;
                top: 35%;

            }
            #divMenuBox2{
                position: absolute;
                left: 38%;
                top: 13%;
                width: 19%;
                height: 9%;
                background-color: #33ccff;
            }
            #divMenuBox2_infoBox{
                position: absolute;
                top: 23%;
                width: 19%;
                height: 18%;
                left: 38%;
                background-color: #006666;
                color: #ffffff;
                font-size: 40px;
            }
            #divMenuBox3_infoBox{
                position: absolute;
                top: 23%;
                width: 19%;
                height: 18%;
                left: 59%;
                background-color: #cc0066;
                color: #ffffff;
                font-size: 40px;

            }
            #divMenuBox2_infoBox_value{
                position: relative;
                left: 40%;
                top: 35%;
            }
            #divMenuBox3_infoBox_value{
                position: relative;
                left: 40%;
                top: 35%;
            }
            #divMenuBox2_menuTxt{
                position: relative;
                left: 40%;
                top: 25%;
                width: 60%;
                height: 60%;
                font-size: 24px;
                font-weight: 400;               
            }
            #divMenuBox3{
                position: absolute;
                left: 59%;
                top: 13%;
                height: 9%;
                width: 19%;
                background-color: #ff6666;
            }
            #divMenuBox3_menuTxt{
                position: relative;
                left: 20%;
                top: 25%;
                width: 60%;
                height: 60%;
                font-size: 24px;
                font-weight: 400;               
            }
            #divMenuBox4{
                position: absolute;
                left: 80%;
                width: 19%;
                height: 9%;
                top: 13%;
                background-color: #ffcc00;
            }
            #divTopWhiteSpece_lblDashBoard{
                position: absolute;
                left: 2%;
                top: 10%;
                width: 30%;
                height: 70%;
                font-size: 24px;
                font-weight: 500;
                color: #666666;
            }
            #divMenuBox1_worldIcon{
                position: absolute;
                left: 80%;
                top: 20%;
                width: 48px;
                height: 48px;
                background-image: url('com.official.cazzendra.images.cpanel/world.png');               
            }
            #divMenuBox2_mailIcon{
                position: absolute;
                left: 80%;
                top: 20%;
                width: 48px;
                height: 48px;
                background-image: url('com.official.cazzendra.images.cpanel/mail.png'); 
            }
            #divMenuBox3_fieldsIcon{
                position: absolute;
                left: 80%;
                top: 20%;
                width: 48px;
                height: 48px;
                background-image: url('com.official.cazzendra.images.cpanel/fields.png'); 
            }
            #divMenuBox4_dataBases{
                position: absolute;
                left: 80%;
                top: 20%;
                width: 48px;
                height: 48px;
                background-image: url('com.official.cazzendra.images.cpanel/db.png'); 
            }
            #divTopBlueLine_cloudControl{
                position: absolute;
                left: 0px;
                width: 15%;
                height: 5%;
                top: 0px;
                background-color: #003399;
            }
            #divTopBlueLine_cloudControl_comIcon{
                position: absolute;
                left: 5%;
                width: 32px;
                height: 32px;
                top: 0px;
                background-image: url('com.official.cazzendra.images.cpanel/cloudcontrol.png');
            }
            #divTopBlueLine_cloudControl_txtCoudControl{
                position: absolute;
                left: 30%;
                width: 60%;
                height: 5%;
                top: 20%; 
                font-size: 20px;
                font-weight: 500;
                color: #ffffff;
            }
            #divLeftBlackSpace_management{
                position: absolute;
                left: 10%;
                top: 5%;
                width: 80%;
                height: 30px;
                color: #0099ff;
                font-size: 22px;
                font-weight: 300;
            }
            #divLeftBlackSpace_stock_management{
                position: absolute;
                left: 10%;
                top: 30%;
                width: 80%;
                height: 30px;
                color: #0099ff;
                font-size: 22px;
                font-weight: 300;                
            }
            #allUsers{
                position: absolute;
                left: 25%;
                width: 80%;
                height: 30px;
                top: 10%;
                color: #ffffff;
                font-weight: 200;
                font-family: serif;
            }
            #addProducts{
                position: absolute;
                left: 25%;
                width: 80%;
                height: 30px;
                top: 35%;
                color: #ffffff;
                font-weight: 200;
                font-family: serif;
            }
            #addUser{
                position: absolute;
                left: 25%;
                width: 80%;
                height: 30px;
                top: 15%;
                color: #ffffff;
                font-weight: 200;
                font-family: serif;
            }
            #addGrn{
                position: absolute;
                left: 25%;
                width: 80%;
                height: 30px;
                top: 40%;
                color: #ffffff;
                font-weight: 200;
                font-family: serif;
            }
            #viewGrnAll{
                position: absolute;
                left: 25%;
                width: 80%;
                height: 30px;
                top: 45%;
                color: #ffffff;
                font-weight: 200;
                font-family: serif;               
            }
            #allProducts{
                position: absolute;
                left: 25%;
                width: 80%;
                height: 30px;
                top: 50%;
                color: #ffffff;
                font-weight: 200;
                font-family: serif; 
            }
            #searchUser{
                position: absolute;
                left: 25%;
                width: 80%;
                height: 30px;
                top: 20%;
                color: #ffffff;
                font-weight: 200;
                font-family: serif;
            }
            #accounts{
                position: absolute;
                left: 25%;
                width: 80%;
                height: 30px;
                top: 65%;
                color: #ffffff;
                font-weight: 200;
                font-family: serif;
            }
            #divLeftBlackSpace_accounts_management{
                position: absolute;
                left: 10%;
                top: 60%;
                width: 80%;
                height: 30px;
                color: #0099ff;
                font-size: 22px;
                font-weight: 300;                 
            }
            #divMenuBox1_menuTxt{
                position: relative;
                left: 10%;
                top: 25%;
                width: 70%;
                height: 60%;
                font-size: 24px;
                font-weight: 400;
            }

        </style>
    </head>
    <body>

        <div id="divOuter"> 
            <%--<jsp:include page='buttonGroup.jsp'></jsp:include>--%>
            <div id="divTopBlueLine"></div>
            <div id="divTopBlueLine_cloudControl">
                <div id="divTopBlueLine_cloudControl_comIcon"></div>
                <div id="divTopBlueLine_cloudControl_txtCoudControl">Cloud Control</div>
            </div>
            <div id="divLeftBlackSpace">
                <div id="divLeftBlackSpace_management">User Management</div>
                <div id="allUsers"> <a style="color: #ffffff;" href="userAll.jsp">Users All</a></div>
                <div id="addUser"> <a style="color: #ffffff;" href="userAdd.jsp">User Add</a></div>
                <div id="searchUser"> <a style="color: #ffffff;" href="userSearchFromControlPanel.jsp">User Search / View / Update</a> </div>

                <div id="divLeftBlackSpace_stock_management">Stock & GRN</div>
                <div id="addProducts"> <a style="color: #ffffff;" href="laptopModelAdd.jsp">Laptop Model Add</a></div>
                <div id="addGrn"> <a style="color: #ffffff;" href="GRN.jsp">GRN Add</a></div>
                <div id="viewGrnAll"> <a style="color: #ffffff;" href="GrnStockDetails.jsp">Stock Records</a> </div>
                <div id="allProducts"> <a style="color: #ffffff;" href="laptopModelAll.jsp">Products - Cust.View</a> </div>
                <div id="divLeftBlackSpace_accounts_management">Accounts</div>
                <div id="accounts"> <a style="color: #ffffff;" href="accountStatusViewAll.jsp">Income / Expenses</a> </div>
            </div>
            <div id="divTopWhiteSpece">
                <div id="divTopWhiteSpece_lblDashBoard">Dashboard   /</div>
            </div>
            <div id="divMenuBox1">
                <div id="divMenuBox1_menuTxt">Registered Users</div>
                <div id="divMenuBox1_worldIcon"></div>               
            </div>
            <div id="divMenuBox2"> 
                <div id="divMenuBox2_menuTxt">Online..</div>
                <div id="divMenuBox2_mailIcon"></div>
            </div>
            <div id="divMenuBox3">
                <div id="divMenuBox3_menuTxt">Low Stocks</div>
                <div id="divMenuBox3_fieldsIcon"></div>
            </div>
            <div id="divMenuBox4">
                <div id="divMenuBox4_dataBases"></div>
            </div>
            <div id="divMenuBox1_infoBox">
                <%
                    int count = userController.getUserCount();
                %>   
                <div id="divMenuBox1_infoBox_value">
                    <%= count%>
                </div>
            </div>
            <div id="divMenuBox2_infoBox">
                <% int sessionCount = sessionHandler.getActiveSessions();%>
                <div id="divMenuBox2_infoBox_value">
                    <%=sessionCount%>
                </div>
            </div>
            <div id="divMenuBox3_infoBox">
                <%
                    int qty = laptopPriceDetailController.loptopLowQtyDetails();
                %>
                <div id="divMenuBox3_infoBox_value">
                    <%=qty%>
                </div>
            </div>
        </div>
    </body>
</html>
