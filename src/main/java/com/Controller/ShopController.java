package com.Controller; /**
 * @author Will
 * @project Final_Project
 * @date 8/17/2023
 */

import com.DAO.ProductDAO;
import com.Model.Product;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "ShopController", value = "/shop")
public class ShopController extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          ArrayList<Product> productList = ProductDAO.getInstance().selectAll();
          request.setAttribute("productList",productList);
          request.getRequestDispatcher("/views/product/shopPage.jsp").forward(request,response);
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }
}
