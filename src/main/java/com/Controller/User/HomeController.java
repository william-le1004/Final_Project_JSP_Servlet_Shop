package com.Controller.User;
/**
 * @author Will
 * @project Final_Project
 * @date 8/16/2023
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

@WebServlet(name = "HomeController", value = "/home")
public class HomeController extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            ArrayList<Product> productList = ProductDAO.getInstance().selectAll();
            request.setAttribute("productList", productList);
            request.getRequestDispatcher("/views/user/homePage.jsp").forward(request, response);
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }
}
