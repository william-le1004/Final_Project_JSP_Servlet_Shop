package com.Controller.Common; /**
 * @author Will
 * @project Final_Project
 * @date 8/17/2023
 */

import com.DAO.UserDAO;
import com.Model.User;
import com.Model.UserName;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "RegisterController", value = "/register")
public class RegisterController extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/views/user/registerPage.jsp").forward(request, response);
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String fName = request.getParameter("fName");
            String lName = request.getParameter("lName");
            UserName name = new UserName(fName, lName);
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String phoneNumber = request.getParameter("phoneNumber");
            String address = request.getParameter("address");

            UserDAO.getInstance().insert(new User(name, username, password, email, phoneNumber, address));

            request.setAttribute("message", "Register Success");
            request.setAttribute("username", username);
            request.setAttribute("password", password);

            request.getRequestDispatcher("/views/user/registerSuccess.jsp").forward(request, response);

      }
}
