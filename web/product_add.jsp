

<%@page import="java.util.List"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            window.location.hash = "no-back-button";
            window.location.hash = "Again-No-back-button";//again because google chrome don't insert first hash into history
            window.onhashchange = function() {
                window.location.hash = "no-back-button";
            };
        </script>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <style>
            #background_img{
                position: absolute;
                left: 0px;
                width: 100%;
                height: 800px;
                background-image: url("imgs1/1.jpg");

            }
            #ram{
                position: absolute;
                left: 30%;
                width: 250px;
                height: 30px;
                top: 36%;


            }
            #vga{
                position: absolute;
                left: 30%;
                width: 250px;
                height: 30px;
                top: 30%;

            }
            #processor{
                position: absolute;
                left: 30%;
                width: 250px;
                height: 30px;
                top: 42%;

            }
            #hard{
                position: absolute;
                left: 30%;
                width: 250px;
                height: 30px;
                top: 48%;

            }
            #screen{
                position: absolute;
                left: 50%;
                width: 250px;
                height: 30px;
                top: 30%;
            }

            #img_laptop{
                position: absolute;
                left: 30%;
                width: 250px;
                height: 30px;
                top: 54%;


            }
            #brand{
                position: absolute;
                left: 50%;
                width: 250px;
                height: 30px;
                top: 36%;
            }
            #model{
                position: absolute;
                left: 50%;
                width: 250px;
                height: 30px;
                top: 42%;


            }
            #price{
                position: absolute;
                left: 50%;
                width: 250px;
                height: 30px;
                top: 48%;
            }
            #btn{
                position: absolute;
                left: 30%;
                width: 520px;
                height: 30px;
                top: 70%;
            }
            #logo{
                position: absolute;
                left: 35%;
                width: 320px;
                height: 67px;
                top: 15%;
                background-image: url("com.official.cazzendra.logos/3.png");
            }
            #backtohomelink{
                position: absolute;
                left: 7%;
                width: 300px;
                height: 30px;
                top: 30%;
            }


        </style>
    </head>
    <body>
    <center>
        <form action="fileupload" method="POST" enctype="multipart/form-data">

            <div id="background_img">

                <div id="backtohomelink" >
                    <a href="admin_panel.jsp" style="font-family: inherit; font-size: 24px; " > Back to Admin </a>
                </div>

                <div id="logo"></div>

                <div id="vga">
                    <input type="text" name="vga"  placeholder="VGA" class="form-control">
                </div>
                <div id="ram">   
                    <input type="text" name="ram" placeholder="RAM" class="form-control">
                </div>
                <div id="processor">
                    <input type="text" name="processor" placeholder="Processor" class="form-control" /> <br>
                </div>
                <div id="hard">
                    <input type="text" name="hard" placeholder="Hard Disk" class="form-control" /> <br>
                </div>
                <div id="screen">
                    <input type="text" name="screen" placeholder="Screen Size" class="form-control" /> <br>
                </div>
                <div id="brand">
                    <select name="brand" class="form-control">
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
                    <%
                        }

                    %>


                </div>
                <div id="model">
                    <select  name="model"  class="form-control">
                        <%                            Session ses2 = conn.connector.getSessionFactory().openSession();
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

                <div id="price">
                    <input type="text" name="price" placeholder="price" class="form-control">
                </div>
                <div id="img_laptop">
                    <input type="file" name="path" multiple="true" class="form-control">
                </div>
                <script>
                    function save_msg() {
                        window.alert("Saved the product");
                    }
                </script>

                <!--
                newly updating area (textarea, quantity)
                -->

<!--                <div style="position: absolute; left: 50%; top: 54%; width: 250px; height: 30px; " >
                    <input type="text" name="itemqty" placeholder="Quantity" class="form-control" maxlength="1"/>
                 </div>-->

<!--                <div style="position: absolute; left: 30%; top: 60%; width: 525px; height: 70px;">
                    <textarea type="text" name="comment" class="form-control"></textarea>  
                    
                    <input type="text" name="comment" class="form-control" />
                    
                </div>-->
                <div>
                    <div id="btn">
                        <input type="submit" onclick="save_msg()" value="Save" class="form-control" style="color: #ffffff; background-color: #0099ff;">

                    </div>
                </div>
            </div>
        </form>
       
                    
    </center>

</body>
</html>
