package com.Controller.Admin; /**
 * @author Will
 * @project Final_Project
 * @date 8/18/2023
 */

import com.DAO.CategoryDAO;
import com.DAO.ProductDAO;
import com.Model.Category;
import com.Model.Product;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

@WebServlet(name = "AddProductController", value = "/addProduct")
public class AddProductController extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            request.getRequestDispatcher("/views/admin/addProduct.jsp").forward(request, response);
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            try {
                  String name = request.getParameter("productName");

                  String categoryTmp = request.getParameter("category");
                  int categoryID = Integer.parseInt(categoryTmp);

                  String priceTmp = request.getParameter("price");
                  Double price = Double.parseDouble(priceTmp);
                  System.out.println(price);

                  String quantityTmp = request.getParameter("quantity");
                  int quantity = Integer.parseInt(quantityTmp);
                  System.out.println(quantity);

                  Category c = CategoryDAO.getInstance().doSearch(categoryID);
                  // Upload Image File
                  String fileName = "";

                  Part part = request.getPart("file_img");
                  String pathUpload = request.getServletContext().getRealPath("/images");
                  System.out.println("Upload Path : " + pathUpload);
                  fileName = Paths.get(part.getSubmittedFileName()).getFileName().toString();
                  System.out.println("File Name : " + fileName);

                  if (!Files.exists(Paths.get(pathUpload))) {
                        Files.createDirectories(Paths.get(pathUpload));
                  }
                  part.write(pathUpload + "/" + fileName);
                  Product product = new Product();
                  product.setProductName(name);
                  product.setCategory(c);
                  product.setProductPrice(price);
                  product.setQuantity(quantity);
                  product.setProductImg(fileName);
                  ProductDAO.getInstance().insert(product);
                  System.out.println(categoryID);
            } catch (IOException e) {
                  e.printStackTrace();
            } catch (ServletException e) {
                  e.printStackTrace();
            }
//            request.setAttribute("message","Add Success");
            request.getRequestDispatcher("/views/admin/addProduct.jsp").forward(request, response);
      }
}
