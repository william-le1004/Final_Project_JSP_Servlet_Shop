package com.Controller.User; /**
 * @author Will
 * @project Final_Project
 * @date 8/18/2023
 */

import com.DAO.ProductDAO;
import com.Model.Product;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DetailProduct", value = "/detail")
public class DetailProduct extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String tmpID = request.getParameter("id");
            int id = Integer.parseInt(tmpID);
            Product p = ProductDAO.getInstance().selectByID(id);
            request.setAttribute("product", p);
            request.getRequestDispatcher("/views/product/productDetails.jsp").forward(request, response);
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }
}
