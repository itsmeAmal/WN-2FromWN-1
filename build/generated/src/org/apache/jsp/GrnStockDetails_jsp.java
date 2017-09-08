package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import ifix.controller.laptopPriceDetailController;

public final class GrnStockDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> Stock | iFix</title>\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            #logo{\n");
      out.write("                position: absolute;\n");
      out.write("                left: 65%;\n");
      out.write("                width: 322px;\n");
      out.write("                height: 67px;\n");
      out.write("                top: 10%;\n");
      out.write("                background-image: url(\"com.official.cazzendra.images.logos/3.png\");\n");
      out.write("            }\n");
      out.write("            #accounts{\n");
      out.write("                position: absolute;\n");
      out.write("                left: 10%; \n");
      out.write("                width: 80%;\n");
      out.write("                top: 30%;\n");
      out.write("                height: 100%;\n");
      out.write("            }\n");
      out.write("            table {\n");
      out.write("                border-collapse: collapse;\n");
      out.write("                width: 100%;\n");
      out.write("                height: auto;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            th, td {\n");
      out.write("                text-align: left;\n");
      out.write("                padding: 8px;\n");
      out.write("            }\n");
      out.write("            th{\n");
      out.write("                background-color: #00cccc;\n");
      out.write("                color: #ffffff;\n");
      out.write("                font-family: serif;\n");
      out.write("                font-size: 20px;\n");
      out.write("                font-weight: 300;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            tr:nth-child(even){background-color: #f2f2f2}\n");
      out.write("            tr:nth-child(odd){color: #ffffff;}\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("        <link rel=\"stylesheet\" href=\"com.official.cazzendra.css.common/bootstrap.min.css\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div style=\"position: absolute; left: 0px; width: 100%; top: 0px; height: 100%; background-color: #000000;\">\n");
      out.write("            <div id=\"logo\"></div>\n");
      out.write("            ");

                laptopPriceDetailController lapPriceDetailController = new laptopPriceDetailController();
                ResultSet rset = lapPriceDetailController.getAlllaptopPriceDetails();
            
      out.write("\n");
      out.write("            <div style=\"position: absolute; left: 10%; width: 80%; top: 30%; height: content-box; background-color: #ffffff;\">\n");
      out.write("                <table id=\"accounts\">\n");
      out.write("                    <th>Laptop Model</th>\n");
      out.write("                    <th>Buying Price</th>\n");
      out.write("                    <th>Selling Price</th>\n");
      out.write("                    <th>Min. Selling Price</th>\n");
      out.write("                    <th>Quantity</th>\n");
      out.write("                        ");
                
                            while (rset.next()) {

                        
      out.write("\n");
      out.write("\n");
      out.write("                    <tr class=\"colomn-purp\">\n");
      out.write("                        <td>");
      out.print( rset.getString(2));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( rset.getBigDecimal(3));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( rset.getBigDecimal(4));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( rset.getBigDecimal(5));
      out.write("</td>\n");
      out.write("                        <td>");
      out.print( rset.getInt(7));
      out.write("</td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
                        }
                    
      out.write("\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--        \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                <div style=\"position: absolute; left: 0px; width: 100%; top: 0px; height: 100%; background-color: #000000;\">\n");
      out.write("                    <div style=\"position: absolute; left: 10%; width: 80%; top: 10%; height: 80%; background-color: #ffffff;\">\n");
      out.write("                        <div id=\"logo\"></div>\n");
      out.write("        \n");
      out.write("                        <table>\n");
      out.write("                            <th>Laptop Model</th>\n");
      out.write("                            <th>Buying Price</th>\n");
      out.write("                            <th>Selling Price</th>\n");
      out.write("                            <th>Min. Selling Price</th>\n");
      out.write("                            <th>Quantity</th>\n");
      out.write("                        \n");
      out.write("                            <tr>\n");
      out.write("                                <td></td>\n");
      out.write("                                <td></td>\n");
      out.write("                                <td></td>\n");
      out.write("                                <td></td>\n");
      out.write("                                <td></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </table>\n");
      out.write("        \n");
      out.write("                    </div>\n");
      out.write("        \n");
      out.write("                </div>-->\n");
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
