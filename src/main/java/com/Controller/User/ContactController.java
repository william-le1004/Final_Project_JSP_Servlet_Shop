package com.Controller.User; /**
 * @author Will
 * @project Final_Project
 * @date 8/17/2023
 */

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "ContactComtroller", value = "/contact")
public class ContactController extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/views/user/contactPage.jsp").forward(request, response);
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }
}
