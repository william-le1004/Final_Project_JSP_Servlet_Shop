package com.Controller.User; /**
 * @author Will
 * @project Final_Project - Copy
 * @date 8/21/2023
 */

import com.DAO.UserDAO;
import com.Model.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "CheckoutController", value = "/checkout")
public class CheckoutController extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            HttpSession session = request.getSession();
            if (session.getAttribute("uName") != null) {
                  String uname = session.getAttribute("uName").toString();
                  String upass = session.getAttribute("uPass").toString();

                  User u = UserDAO.getInstance().selectUser(uname, upass);
                  session.setAttribute("userOB", u);

            }

            request.getRequestDispatcher("/views/product/checkoutPage.jsp").forward(request, response);


      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }
}
