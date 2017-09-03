package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import ifix.controller.laptopPriceDetailController;
import ifix.dao.Impl.laptopPriceDetailDaoImpl;
import ifix.model.laptopPriceDetail;
import java.util.List;
import org.hibernate.Criteria;
import org.hibernate.Transaction;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

public final class laptopModelAll_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Models | iFix</title>\n");
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
      out.write("    </head>\n");
      out.write("    <body style=\"background-color: #000000;\">\n");
      out.write("        <div style=\"position: absolute; left: 0px; top: 0px; width: 100%; height: 100%;\">\n");
      out.write("            <div style=\"position: absolute; left: 10%; width: 80%; top: 5%; height: 100%;\"></div>  \n");
      out.write("            <div id=\"logo\"></div>\n");
      out.write("            ");

                SessionFactory sf = ifix.hib.connection.connector.getSessionFactory();
                Session ses = sf.openSession();
                Transaction tr = ses.beginTransaction();
                pojos.LaptopModel laptopModels = new pojos.LaptopModel();
                Criteria cr = ses.createCriteria(pojos.LaptopModel.class);
                List<pojos.LaptopModel> li = cr.list();
                //------------------------------------

                for (pojos.LaptopModel laps : li) {
            
      out.write("\n");
      out.write("            <div style=\"position: relative; left: 20%; width: 60%; top: 30%; height: 300px; background-color: #ffffff; padding-top: 100px;\">\n");
      out.write("                <div style=\"position: absolute; left: 5%; width: 250px; height: 250px; top: 10%;\"><img src=\"");
      out.print( laps.getLaptopModelImagePath());
      out.write("\"></div>\n");
      out.write("                <div style=\"position: absolute; left: 38%; width: 250px; height: 40px; top: 15%; font-family: inherit; font-weight: 400; font-size: 20px;\">");
      out.print( laps.getLaptopModelLaptopId());
      out.write("</div>\n");
      out.write("                <div style=\"position: absolute; left: 38%; width: 250px; height: 40px; top: 25%;\">");
      out.print( laps.getLaptopModelProcessor());
      out.write("</div>\n");
      out.write("                ");

                    laptopPriceDetail lapPriceDetail = laptopPriceDetailController.getLaptopPriceDetailByLaptopModelId(String.valueOf(laps.getLaptopModelLaptopId()));
                
      out.write("\n");
      out.write("                <div style=\"position: absolute; left: 38%; top: 35%; width: 250px; height: 40px;\"> ");
      out.print( lapPriceDetail.getLaptopPriceDetailSellingPrice());
      out.write(" </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("                <div style=\"position: relative; left: 0%; top: 98%; width: 100%; height: 5px; background-color: #000000; padding-bottom: 0px;\" ></div>\n");
      out.write("            </div>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("\n");
      out.write("        </div>\n");
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
