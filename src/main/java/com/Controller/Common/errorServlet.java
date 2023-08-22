package com.Controller.Common; /**
 * @author Will
 * @project Final_Project - Copy
 * @date 8/22/2023
 */

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "errorServlet", value = "/errorServlet")
public class errorServlet extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
          request.setAttribute("ERROR", "Not Found");
          request.getRequestDispatcher("views/error.jsp").forward(request, response);
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }
}
