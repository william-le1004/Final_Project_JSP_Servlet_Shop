package com.Controller.Common; /**
 * @author Will
 * @project Final_Project
 * @date 8/20/2023
 */

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "LogoutController", value = "/logout")
public class LogoutController extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession();
            session.invalidate();
            response.sendRedirect("login");
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }
}
