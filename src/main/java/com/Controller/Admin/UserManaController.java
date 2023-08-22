package com.Controller.Admin; /**
 * @author Will
 * @project Final_Project - Copy
 * @date 8/22/2023
 */

import com.DAO.UserDAO;
import com.Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "UserManaController", value = "/userManagement")
public class UserManaController extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            ArrayList<User> usertList = UserDAO.getInstance().selectAll();
            int amountOfUser = usertList.size();

            request.setAttribute("userList", usertList);
            request.setAttribute("amountOfUser", amountOfUser);
            request.getRequestDispatcher("/views/admin/userManagement.jsp").forward(request, response);
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }
}
