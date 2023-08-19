package com.Controller.Common; /**
 * @author Will
 * @project Final_Project
 * @date 8/17/2023
 */

import com.DAO.AdminDAO;
import com.DAO.UserDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/views/user/loginPage.jsp").forward(request, response);
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String name = request.getParameter("userName");
            String password = request.getParameter("password");
            if(AdminDAO.getInstance().AdminCheck(name, password)) {
                  response.sendRedirect("admin");
            }else if(UserDAO.getInstance().UserCheck(name, password)){
                  response.sendRedirect("home");
            }
            else{
                  request.setAttribute("message","Maybe Wrong User Name Or Password");
                  request.getRequestDispatcher("/views/user/loginPage.jsp").forward(request, response);
            }

      }
}
