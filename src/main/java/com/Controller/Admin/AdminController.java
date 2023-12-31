package com.Controller.Admin; /**
 * @author Will
 * @project Final_Project
 * @date 8/17/2023
 */

import com.DAO.ProductDAO;
import com.Model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "AdminController", value = "/admin")
public class AdminController extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            ArrayList<Product> productList = ProductDAO.getInstance().selectAll();
            request.setAttribute("productList", productList);
            request.getRequestDispatcher("/views/admin/adminPage.jsp").forward(request, response);
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }
}
