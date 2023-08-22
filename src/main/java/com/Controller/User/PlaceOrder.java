package com.Controller.User; /**
 * @author Will
 * @project Final_Project - Copy
 * @date 8/21/2023
 */

import com.DAO.UserDAO;
import com.Model.Mail;
import com.Model.User;
import com.Model.UserName;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "PlaceOrder", value = "/placeOrder")
public class PlaceOrder extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }

//      @Override
//      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//            HttpSession session = request.getSession();
//            if (session.getAttribute("uName") == null) {
//                  String fName = request.getParameter("firstname");
//                  String lName = request.getParameter("lastname");
//                  UserName name = new UserName(fName, lName);
//                  String username = request.getParameter("username");
//                  String password = request.getParameter("password");
//                  String email = request.getParameter("email");
//                  String phoneNumber = request.getParameter("phone");
//                  String address = request.getParameter("streetAddress");
//
//                  UserDAO.getInstance().insert(new User(name, username, password, email, phoneNumber, address));
//                  User u = UserDAO.getInstance().selectUser(username, password);
//
//                  request.setAttribute("user", u);
//                  request.getRequestDispatcher("/views/product/invoicePage.jsp").forward(request, response);
//            }
//
//            String fName = request.getParameter("firstname");
//            String lName = request.getParameter("lastname");
//            UserName name = new UserName(fName, lName);
//            String username = request.getParameter("username");
//            String password = request.getParameter("password");
//            String email = request.getParameter("email");
//            String phoneNumber = request.getParameter("phone");
//            String address = request.getParameter("streetAddress");
//
//            String nameSession = session.getAttribute("uName").toString();
//            String passSession = session.getAttribute("uPass").toString();
//            User user = UserDAO.getInstance().selectUser(nameSession, passSession);
//            System.out.println(user);
//            int usrerID = user.getUserID();
//            UserDAO.getInstance().updateUser(usrerID, name, username, password, email, phoneNumber, address);
//
//            request.setAttribute("user", user);
//            request.getRequestDispatcher("/views/product/invoicePage.jsp").forward(request, response);
//
//      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession();
            String fName = request.getParameter("firstname");
            String lName = request.getParameter("lastname");
            UserName name = new UserName(fName, lName);
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String phoneNumber = request.getParameter("phone");
            String address = request.getParameter("streetAddress");

            UserDAO.getInstance().insert(new User(name, username, password, email, phoneNumber, address));

            User u = UserDAO.getInstance().selectUser(username, password);
            long upperBound = 99999999;
            long lowerBound = 1000000;

            // upperBound 20 will also be included
            long range = (upperBound - lowerBound) + 1;
            long orderNumber = (long)(Math.random() * range) + lowerBound;
            String html = "<div class=\"container text-center\">\n" +
                    "        <h1>Thank you.</h1>\n" +
                    "        <p class=\"lead w-lg-50 mx-auto\">Your order has been placed successfully.</p>\n" +
                    "        <p class=\"w-lg-50 mx-auto\">Your order number is " + orderNumber +  ". We will immediatelly process your and it will be delivered in 2 - 5 business days.</p>\n" +
                    "    </div>";
            Mail.sendEmail(email, "Order Success", html);
            request.setAttribute("user", u);

            request.getRequestDispatcher("/views/product/invoicePage.jsp").forward(request, response);
      }
}
