package com.Controller.Admin; /**
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
import java.util.ArrayList;

@WebServlet(name = "ProductManaController", value = "/productManagement")
public class ProductManaController extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            ArrayList<Product> productList = ProductDAO.getInstance().selectAll();
            int amountOfProduct = productList.size();
            request.setAttribute("productList", productList);
            request.setAttribute("amountOfProduct", amountOfProduct);
            request.getRequestDispatcher("/views/admin/productManagement.jsp").forward(request, response);
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }
}
