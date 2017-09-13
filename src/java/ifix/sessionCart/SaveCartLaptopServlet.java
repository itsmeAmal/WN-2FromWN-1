/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ifix.sessionCart;

import ifix.controller.laptopPriceDetailController;
import ifix.core.Validations;
import ifix.model.laptopPriceDetail;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 *
 */
@WebServlet(name = "SaveCartLaptopServlet", urlPatterns = {"/SaveCartLaptopServlet"})
public class SaveCartLaptopServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            HttpSession hs = request.getSession();
            String laptopModelId = (String) hs.getAttribute("laptopModelId");
            String laptopQty = request.getParameter("tf_qty");

            if (hs.getAttribute("laptopModelId") != null && laptopQty != null) {
                laptopPriceDetail laptoPriceDetail = laptopPriceDetailController.getLaptopPriceDetailByLaptopModelId(laptopModelId);

                laptopCartModel cartItems = new laptopCartModel();
                cartItems.setLaptopModelIdCart(laptopModelId);
                cartItems.setLaptopQty(Validations.getBigDecimalFromString(laptopQty));
                cartItems.setLaptopSellingPrice(laptoPriceDetail.getLaptopPriceDetailSellingPrice());

                laptopCart cr = null;

                if (hs.getAttribute("cart") == null) {
                    cr = new laptopCart();
                } else {
                    cr = (laptopCart) hs.getAttribute("cart");
                }
                cr.addToCart(cartItems);
                hs.setAttribute("cart", cr);
//                response.sendRedirect("productSpecification.jsp");
            } else {
                response.sendRedirect("laptopModelAll.jsp");
            }
        } catch (IOException | SQLException e) {
        }
    }

}
