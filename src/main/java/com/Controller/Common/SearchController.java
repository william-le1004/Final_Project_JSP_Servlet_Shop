package com.Controller.Common; /**
 * @author Will
 * @project Final_Project
 * @date 8/17/2023
 */

import com.DAO.ProductDAO;
import com.Model.Product;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "SearchController", value = "/search")
public class SearchController extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String keyword = request.getParameter("searchResult");
            ArrayList<Product> productList = ProductDAO.getInstance().selectByCondition(keyword);
            int amountOfProduct = productList.size();
            request.setAttribute("amountOfProduct", amountOfProduct);
            request.setAttribute("productList", productList);
            request.setAttribute("keyword", keyword);
            System.out.println(keyword);
            RequestDispatcher rd = request.getRequestDispatcher("/views/product/resultSearch.jsp");
            rd.forward(request, response);
      }
}
