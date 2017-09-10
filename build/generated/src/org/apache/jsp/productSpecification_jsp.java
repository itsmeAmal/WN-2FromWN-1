package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title> Specifications | iFix</title>\n");
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
                    String laptopId = (String) hs.getAttribute("idLaptop");
                    laptopId = "Dell 3521 Core i3";

                    laptopModelDaoImpl laptopModelDaoImpl1 = new laptopModelDaoImpl();
                    LaptopModel laptopModel = laptopModelDaoImpl1.getLaptopModelById(laptopId);
                
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 13%; top: 40%; width: 250px; height: 250px; background-color: #0033cc;\"></div>\n");
      out.write("                <div style=\"position: absolute; left: 13%; top: 25%; width: 40%; height: 10%; font-size: 34px;\">");
      out.print( laptopModel.getLaptopModelLaptopId());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 40%; width: 10%; height: 30px;  \">Hard Disk  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 40%; width: 20%; height: 30px; font-weight: 600; \">");
      out.print( laptopModel.getLaptopModelHardDisk());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 45%; width: 10%; height: 30px;  \">RAM  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 45%; width: 20%; height: 30px; font-weight: 600; \">");
      out.print( laptopModel.getLaptopModelRam());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 50%; width: 10%; height: 30px;  \">VGA  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 50%; width: 20%; height: 30px; font-weight: 600; \">");
      out.print( laptopModel.getLaptopModelVga());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 55%; width: 10%; height: 30px;  \">Processor  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 55%; width: 20%; height: 30px; font-weight: 600; \">");
      out.print( laptopModel.getLaptopModelProcessor());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 60%; width: 10%; height: 30px;  \">USB Type 1  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 60%; width: 20%; height: 30px; font-weight: 600; \">");
      out.print( laptopModel.getLaptopModelUsbType1());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 65%; width: 10%; height: 30px;  \">USB Type 2  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 65%; width: 20%; height: 30px; font-weight: 600; \">");
      out.print( laptopModel.getLaptopModelUsbType2());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 70%; width: 10%; height: 30px;  \">HDMI O/P  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 70%; width: 20%; height: 30px; font-weight: 600; \">");
      out.print( laptopModel.getLaptopModelHdmi());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 75%; width: 10%; height: 30px;  \">VGA O/P  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 75%; width: 20%; height: 30px; font-weight: 600; \">");
      out.print( laptopModel.getLaptopModelVgaUotput());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 80%; width: 10%; height: 30px;  \">Screen Size  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 80%; width: 20%; height: 30px; font-weight: 600; \">");
      out.print( laptopModel.getLaptopModelScreenSize());
      out.write("</div>\n");
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 40%; top: 85%; width: 10%; height: 30px;  \">Cache  :</div>\n");
      out.write("                <div style=\"position: absolute; left: 50%; top: 85%; width: 20%; height: 30px; font-weight: 600; \">");
      out.print( laptopModel.getLaotopModelCacheMemory());
      out.write("</div>\n");
      out.write("\n");
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
