package com.Controller.User; /**
 * @author Will
 * @project Final_Project
 * @date 8/18/2023
 */

import com.DAO.ProductDAO;
import com.Model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

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
