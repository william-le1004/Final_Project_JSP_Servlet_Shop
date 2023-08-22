package com.Controller.User; /**
 * @author Will
 * @project Final_Project - Copy
 * @date 8/20/2023
 */

import com.DAO.ProductDAO;
import com.Model.Item1;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "AddCart", value = "/addCart")
public class AddCart extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

            String action = request.getParameter("action");

            if (action == null) {
                  doDisplayCart(request, response);
            } else {
                  if (action.equals("addCart")) {
                        doAddCart(request, response);
                  } else if (action.equals("delete")) {
                        doRemove(request, response);
                  }
            }
//            if (action.equals("addCart")) {
//                  if (session.getAttribute("cart") == null) {
//                        List<Item1> cart = new ArrayList<Item1>();
//                        cart.add(new Item1(ProductDAO.getInstance().selectByID(id), 1));
//                        session.setAttribute("cart", cart);
//                  } else {
//                        List<Item1> cart = (List<Item1>) session.getAttribute("cart");
//                        int index = isExisting(id, cart);
//                        if (index == -1) {
//                              cart.add(new Item1(ProductDAO.getInstance().selectByID(id), 1));
//                        } else {
//                              int quantity = cart.get(index).getQuantity() + 1;
//                              cart.get(index).setQuantity(quantity);
//                        }
//                        session.setAttribute("cart", cart);
//                  }
//                  request.getRequestDispatcher("/views/product/cartPage.jsp").forward(request, response);
//            } else if (action.equals("delete")) {
//                  List<Item1> cart = (List<Item1>) session.getAttribute("cart");
//                  int index = isExisting(id, cart);
//                  cart.remove(index);
//                  session.setAttribute("cart", cart);
//                  request.getRequestDispatcher("/views/product/cartPage.jsp").forward(request, response);
//            }


      }

      protected void doDisplayCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/views/product/cartPage.jsp").forward(request, response);
      }

      protected void doRemove(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession();
            int id = Integer.parseInt(request.getParameter("id"));
            List<Item1> cart = (List<Item1>) session.getAttribute("cart");
            int index = isExisting(id, cart);
            cart.remove(index);
            session.setAttribute("cart", cart);
            response.sendRedirect("addCart");
      }

      protected void doAddCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            HttpSession session = request.getSession();
            int id = Integer.parseInt(request.getParameter("id"));
            if (session.getAttribute("cart") == null) {
                  List<Item1> cart = new ArrayList<Item1>();
                  cart.add(new Item1(ProductDAO.getInstance().selectByID(id), 1));
                  session.setAttribute("cart", cart);
            } else {
                  List<Item1> cart = (List<Item1>) session.getAttribute("cart");
                  int index = isExisting(id, cart);
                  if (index == -1) {
                        cart.add(new Item1(ProductDAO.getInstance().selectByID(id), 1));
                  } else {
                        int quantity = cart.get(index).getQuantity() + 1;
                        cart.get(index).setQuantity(quantity);
                  }
                  session.setAttribute("cart", cart);
            }
            response.sendRedirect("addCart");
      }

      private int isExisting(int id, List<Item1> cart) {
            for (int i = 0; i < cart.size(); i++) {
                  if (cart.get(i).getProduct().getProductID() == id) {
                        return i;
                  }
            }
            return -1;
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

      }
}
