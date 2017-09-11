package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ifix.controller.laptopPriceDetailController;
import ifix.model.laptopPriceDetail;
import ifix.controller.laptopModelController;
import ifix.dao.Impl.laptopModelDaoImpl;
import ifix.model.LaptopModel;

public final class productSpecification_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> Specifications | iFix</title>\n");
      out.write("        <style>\n");
      out.write("            #logo{\n");
      out.write("                position: absolute;\n");
      out.write("                left: 65%;\n");
      out.write("                width: 322px;\n");
      out.write("                height: 67px;\n");
      out.write("                top: 10%;\n");
      out.write("                background-image: url(\"com.official.cazzendra.images.logos/3.png\");\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("        <link rel=\"stylesheet\" href=\"com.official.cazzendra.css.common/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div style=\"position: absolute; left: 0px; width: 100%; top: 0px; height: 100%; background-color: #000000;\">\n");
      out.write("            <div style=\"position: absolute; left: 10%; width: 80%; top: 10%; height: 80%; background-color: #ffffff;\">\n");
      out.write("                <div id=\"logo\"></div>\n");
      out.write("                ");

                    HttpSession hs = request.getSession();
                    String laptopId = (String) hs.getAttribute("laptopModelId");
                    if (hs.getAttribute("laptopModelId") == null) {
                        response.sendRedirect("laptopModelAll.jsp");
                    } else {
                        LaptopModel laptopModel = new laptopModelController().getLaptopModelByLaptopModelId(laptopId);
                
      out.write("\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 32%; width: 15%; height: 30px; color: #6699ff;\" >Item Description</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 13%; top: 40%; width: 250px; height: 250px; \"><img src=\"");
      out.print( laptopModel.getLaptopImagePath() );
      out.write("\"></div>\n");
      out.write("                <div style=\"position: absolute; left: 13%; top: 25%; width: 40%; height: 10%; font-size: 34px; color: #666666;\">");
      out.print( laptopModel.getLaptopModelLaptopId());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 40%; width: 10%; height: 30px; color: #999999; \">Hard Disk  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 40%; width: 20%; height: 30px; font-weight: 600;  \">");
      out.print( laptopModel.getLaptopModelHardDisk());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 45%; width: 10%; height: 30px; color: #999999; \">RAM  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 45%; width: 20%; height: 30px; font-weight: 600;  \">");
      out.print( laptopModel.getLaptopModelRam());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 50%; width: 10%; height: 30px; color: #999999; \">VGA  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 50%; width: 20%; height: 30px; font-weight: 600; \">");
      out.print( laptopModel.getLaptopModelVga());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 55%; width: 10%; height: 30px; color: #999999; \">Processor  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 55%; width: 20%; height: 30px; font-weight: 600;  \">");
      out.print( laptopModel.getLaptopModelProcessor());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 60%; width: 10%; height: 30px; color: #999999; \">USB Type 1  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 60%; width: 20%; height: 30px; font-weight: 600;  \">");
      out.print( laptopModel.getLaptopModelUsbType1());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 65%; width: 10%; height: 30px; color: #999999; \">USB Type 2  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 65%; width: 20%; height: 30px; font-weight: 600;  \">");
      out.print( laptopModel.getLaptopModelUsbType2());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 70%; width: 10%; height: 30px; color: #999999; \">HDMI O/P  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 70%; width: 20%; height: 30px; font-weight: 600;  \">");
      out.print( laptopModel.getLaptopModelHdmi());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 75%; width: 10%; height: 30px; color: #999999; \">VGA O/P  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 75%; width: 20%; height: 30px; font-weight: 600; \">");
      out.print( laptopModel.getLaptopModelVgaUotput());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 80%; width: 10%; height: 30px; color: #999999; \">Screen Size  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 80%; width: 20%; height: 30px; font-weight: 600; \">");
      out.print( laptopModel.getLaptopModelScreenSize());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 85%; width: 10%; height: 30px; color: #999999; \">Cache (Mb) :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 85%; width: 20%; height: 30px; font-weight: 600; \">");
      out.print( laptopModel.getLaotopModelCacheMemory());
      out.write("</div>\n");
      out.write("\n");
      out.write("                ");

                        laptopPriceDetail lapPriceDetail = laptopPriceDetailController.getLaptopPriceDetailByLaptopModelId(String.valueOf(laptopModel.getLaptopModelLaptopId()));                  
                
      out.write("\n");
      out.write("                <!--all are brand new--> \n");
      out.write("                <div style=\"position: absolute; left: 65%; width: 25%; top: 40%; height: 20%; color: #333333; background-color: #ccccff;\">\n");
      out.write("                    <p style=\"position: relative; left: 10%; top: 10%; width: 80%; height: 80%; color: #000099;\">\n");
      out.write("                        Important : All products are sold here in brand new condition. Used or Re-Conditioned laptops are not sold.\n");
      out.write("                    </p>\n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <!--available qty-->\n");
      out.write("                <div style=\"position: absolute; left: 65%; width: 25%; height: 30px; top: 61%; color: #999999; font-size: 14px; \">\n");
      out.write("                    Available quantity          :    ");
      out.print(lapPriceDetail.getLaptopPriceDetailQty() );
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <!--selling price-->\n");
      out.write("                <div style=\"position: absolute; left: 65%; top: 67%; width: 25%; height: 30px; font-weight: 600; font-size: 20px;\">\n");
      out.write("                    Rs \n");
      out.write("                </div>\n");
      out.write("                \n");
      out.write("                <div style=\"position: absolute; left: 68%; top: 67%; width: 25%; height: 30px; font-weight: 600; font-size: 20px; \">\n");
      out.write("                    ");
      out.print(lapPriceDetail.getLaptopPriceDetailSellingPrice() );
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <!--two buttons for add to cart and buy now-->\n");
      out.write("                <div style=\"position: absolute; left: 65%; top: 73%; width: 25%; height: 30px;\">\n");
      out.write("                    <input type=\"submit\" name=\"btn_add_to_cart\" value=\"Add to cart\" class=\"btn btn-info\" style=\"width: 200px;\" /> \n");
      out.write("                </div>\n");
      out.write("                <div style=\"position: absolute; left: 65%; top: 81%; width: 25%; height: 30px;\">\n");
      out.write("                    <input type=\"submit\" name=\"btn_buy_now\" value=\"Buy now\" class=\"btn btn-info\" style=\"width: 200px;\"/> \n");
      out.write("                </div>\n");
      out.write("                ");

//                    hs.invalidate();
                    }              
                
      out.write("\n");
      out.write("\n");
      out.write("                <!--free delivery msg-->\n");
      out.write("                \n");
      out.write("                <div style=\"position: absolute; left: 40%; width: 40%; top: 93%; height: 30px; color: #ff0033; \">\n");
      out.write("                    Free Island wide Delivery\n");
      out.write("                </div>\n");
      out.write("                <!--<div style=\"position: absolute; left: 65%; width: 188px; top: 91%; height: 40px; background-image: url('com.official.cazzendra.images.paymentgateway/payableCards.png') \"></div>-->\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
