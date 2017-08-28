<%-- 
    Document   : test_page
    Created on : Feb 2, 2017, 12:07:38 AM
    Author     : 4m4l
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Test Page </title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>

        <form action="final_pay_2">
            
            card  <input type="text" name="tf-1" style="position: absolute; width: 350px;" />
            <br>
            <br>
            Name <input type="text" name="tf-2" style="position: absolute; width: 350px;" />
            <br>
            <br>
            Add 1 <input type="text" name="tf-3" style="position: absolute; width: 350px;" />
            <br>
            <br>
            Add 2 <input type="text" name="tf-4" style="position: absolute; width: 350px;" />
            <br>
            <br>
            City <input type="text" name="tf-5" style="position: absolute; width: 350px;" />
            <br>
            <br>
            Card No <input type="text" name="tf-6" style="position: absolute; width: 350px;" />
            <br>
            <br>
            Exp month <input type="text" name="tf-7" style="position: absolute; width: 350px;" />
            <br>
            <br>
            Exp year <input type="text" name="tf-8" style="position: absolute; width: 350px;" />
            <br>
            <br>
            <input type="submit" name="Submit" value="Submit Query" />
        </form>

        
        
        
        
         <%
            HttpSession hs = request.getSession();
          
            %>
            
            
            
            <div style="position: absolute; left: 10%; top: 170px; width: 60%; height: 30px;">Name : <% hs.getAttribute("cust_name");  %></div>
            <div style="position: absolute; left: 10%; top: 200px; width: 60%; height: 30px;" >Address :  <% hs.getAttribute("add_1");  %></div>
            <div style="position: absolute; left: 20%; top: 230px; width: 60%; height: 30px;"  > <% hs.getAttribute("add_2"); %>  </div>
            <div style="position: absolute; left: 10%; top: 260px; width: 60%; height: 30px;"  >Invoice Total : <% hs.getAttribute("tot");  %>   </div>
            <div style="position: absolute; left: 10%; top: 290px; width: 60%; height: 30px;" >Paid Through : <% hs.getAttribute("card_no"); %></div>
            <div style="position: absolute; left: 10%; top: 390px; width: 60%; height: 30px;" >Thank you..... </div>
      

        
        
        
        
        
        
        
        
        
        
        



    </body>
</html>
