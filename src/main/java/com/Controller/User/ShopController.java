package com.Controller.User; /**
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

@WebServlet(name = "ShopController", value = "/shop")
public class ShopController extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String positionPage = request.getParameter("positionPage");

            if (positionPage == null) {
                  positionPage = "1";
            }
            int position = Integer.parseInt(positionPage);

            Long total = ProductDAO.getInstance().getTotal();
            int endPage = (int) (total / 8);
            if (total % 3 != 0) {
                  endPage++;
            }
            ArrayList<Product> productList = ProductDAO.getInstance().doPagination(position);

            request.setAttribute("productList", productList);
            request.setAttribute("tag", position);
            request.setAttribute("endP", endPage);
            request.getRequestDispatcher("/views/product/shopPage.jsp").forward(request, response);
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }
}
