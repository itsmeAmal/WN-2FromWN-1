<%-- 
    Document   : view_products_admin
    Created on : Mar 22, 2017, 8:33:50 PM
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
        <title>products</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
    </head>
    <body>
        <div style="position: absolute; left: 0px; width: 100%; height: 100%; top: 0px;">
            <div style="position: absolute; left: 20%; top: 5%; width: 300px; height: 100px; background-image: url('com.official.cazzendra.logos/products.png');"></div>

            <hr/>
           

            <div  class="table container" style="position: absolute; left: 10%; top: 20%; width: 80%; height: 100%; ">
                <table class="table table-responsive">
                    <tr>
                        <th style="background-color: #99ccff;  width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; ">PID</th>
                       
                        <th style="background-color: #99ccff;  width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; ">Brand</th>
                        <th style="background-color: #99ccff;  width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; ">Model</th>
                        <th style="background-color: #99ccff;  width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; ">Price</th>
                      
                    </tr>
                    <%
                    Session ses = conn.connector.getSessionFactory().openSession();
                    Criteria cr = ses.createCriteria(pojos.Laptops.class);
                    List<pojos.Laptops> lp = cr.list();
                    
                    if(lp.size() >0){
                        for(pojos.Laptops bb : lp){
                            
                            
                            %>
                            <tr class="table-condensed">
                                <td><%= bb.getId() %></td>
                                <td><%= bb.getBrand() %></td>
                                <td><%= bb.getModel() %></td>
                                <td><%= bb.getPriceLap() %></td>
                                
                                
                                
                                
                            </tr>
                            
                            
                            
                            
                            <%
                            
                            
                        
                        
                        
                        
                        }
                    
                    }
                    
                    
                    
                    
                   
                    
                    
                    %>
                    
                    
                    
                    
                </table>
            </div>


        </div>
    </body>
</html>
