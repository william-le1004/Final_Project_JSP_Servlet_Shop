package com.Controller.Admin; /**
 * @author Will
 * @project Final_Project
 * @date 8/18/2023
 */

import com.DAO.ProductDAO;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "DeleteProduct", value = "/deleteProduct")
public class DeleteProduct extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String tmpID = request.getParameter("id");
            int id = Integer.parseInt(tmpID);
            ProductDAO.getInstance().delete(id);
            response.sendRedirect("productManagement");
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }
}
