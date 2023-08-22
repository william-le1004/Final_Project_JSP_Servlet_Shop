package com.Controller.Admin; /**
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
import java.util.ArrayList;

@WebServlet(name = "ProductManaController", value = "/productManagement")
public class ProductManaController extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            String positionPage = request.getParameter("positionPage");

            if (positionPage == null) {
                  positionPage = "1";
            }
            int position = Integer.parseInt(positionPage);

            Long total = ProductDAO.getInstance().getTotal();
            int endPage = (int) (total / 8);
            if (total % 8 != 0) {
                  endPage++;
            }
            ArrayList<Product> productList = ProductDAO.getInstance().doPagination(position);
            int amountOfProduct = productList.size();
//
//            request.setAttribute("productList", productList);
            request.setAttribute("tag", position);
            request.setAttribute("endP", endPage);
            request.setAttribute("productList", productList);
            request.setAttribute("amountOfProduct", amountOfProduct);
            request.getRequestDispatcher("/views/admin/productManagement.jsp").forward(request, response);
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }
}
