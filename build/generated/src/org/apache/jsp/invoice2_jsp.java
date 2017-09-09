package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.hibernate.Transaction;
import org.hibernate.Session;
import java.util.ArrayList;
import servlets.CartItems;
import servlets.Cart;

public final class invoice2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Invoice</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"com.official.cazzendra.css.common/bootstrap.min.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div style=\"position: absolute; left: 20%; top: 10%; width: 60%; height: 80%; border-style: ridge;\">\n");
      out.write("            \n");
      out.write("            <div style=\"position: absolute; left: 10%; top: 10%; width: 107px; height: 15px; background-image: url('com.official.cazzendra.images.logos/4.png')\"  ></div>\n");
      out.write("            <div style=\"position: absolute; left: 10%; top: 15%; width: 107px; height: 15px;\">Date :</div>\n");
      out.write("            <div style=\"position: absolute; left: 80%; top: 20%; width: 107px; height: 15px;\">Invoice # :</div>    \n");
      out.write("            ");

            Session ses = conn.connector.getSessionFactory().openSession();
            Transaction tr = ses.beginTransaction();
            // pojos.PaymentHistory ph = (pojos.PaymentHistory)ses.load(pojos.PaymentHistory.class);
            pojos.PaymentHistory ph = (pojos.PaymentHistory)ses.load(pojos.PaymentHistory.class, 1);
            
            
            
            
      out.write("\n");
      out.write(" \n");
      out.write("            <div style=\"position: absolute; left: 80%; top: 15%; width: 200px; height: 60px; font-family: monospace; font-size: 20px;  \"> Invoice   </div>\n");
      out.write("            \n");
      out.write("            <div style=\"position: absolute; left: 10%; top: 25%; width: 75%; height: 60%; \">\n");
      out.write("                   <table class=\"table table-responsive\" >\n");
      out.write("                    <tr>\n");
      out.write("                        <th style=\"width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; \">Brand</th>\n");
      out.write("                        <th style=\"width: 200px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; \" >Model</th>\n");
      out.write("                        <th style=\"width: 100px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; \" >Price</th>\n");
      out.write("                        <th style=\"width: 100px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; \" >Quantity</th>\n");
      out.write("                        <th style=\"width: 100px; height: 30px; color: #000000; font-size: 18px; font-weight: 300; \" >Total</th>\n");
      out.write("                      \n");
      out.write("                    </tr> \n");
      out.write("                    ");

                        HttpSession hs = request.getSession();
                        Cart cr = null;
                        double subtot = 0;

                        if (hs.getAttribute("cart") != null) {
                            cr = (Cart) hs.getAttribute("cart");
                            ArrayList<CartItems> items = cr.getCart();

                            for (CartItems ci : items) {

                                double tot = ci.getQty() * ci.getPrice();
                                subtot += tot;
                    
      out.write("\n");
      out.write("                    <form method=\"POST\" action=\"RemoveProduct\">\n");
      out.write("                        <tr class=\"table-condensed\">\n");
      out.write("                            <td> ");
      out.print( ci.getBrand());
      out.write(" </td>\n");
      out.write("                            <td> ");
      out.print( ci.getModel());
      out.write(" </td>\n");
      out.write("                            <td> ");
      out.print( ci.getPrice());
      out.write(" </td>\n");
      out.write("                            <td> ");
      out.print( ci.getQty());
      out.write(" </td>\n");
      out.write("                            <td> ");
      out.print( tot);
      out.write("   </td>\n");
      out.write("                            \n");
      out.write("                    </form>\n");
      out.write("\n");
      out.write("                    </tr>\n");
      out.write("\n");
      out.write("                    ");

                            }
                        }
                    
      out.write("\n");
      out.write("\n");
      out.write("                 \n");
      out.write("                </table>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("            <div></div>\n");
      out.write("            <div></div>\n");
      out.write("            <div></div>\n");
      out.write("            <div></div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
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
