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
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;

@WebServlet(name = "UpdateProduct", value = "/update")
@MultipartConfig()
public class UpdateProduct extends HttpServlet {

      @Override
      protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            String tmpID = request.getParameter("id");
            int id = Integer.parseInt(tmpID);
            Product p = ProductDAO.getInstance().selectByID(id);
            request.setAttribute("product", p);
            request.getRequestDispatcher("views/admin/updateProduct.jsp").forward(request, response);
//            request.getRequestDispatcher("/views/admin/updateProduct.jsp").forward(request, response);
      }

      @Override
      protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            try {
                  String idTmp = request.getParameter("id");
                  int id = Integer.parseInt(idTmp);

                  String name = request.getParameter("productName");

                  String categoryTmp = request.getParameter("category");
                  int categoryID = Integer.parseInt(categoryTmp);

                  String priceTmp = request.getParameter("price");
                  Double price = Double.parseDouble(priceTmp);


                  String quantityTmp = request.getParameter("quantity");
                  int quantity = Integer.parseInt(quantityTmp);


                  Category c = CategoryDAO.getInstance().doSearch(categoryID);
                  int cate = c.getCategoryID();
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

                  // fix id , and update
                  ProductDAO.getInstance().updateProduct(id, name, fileName, price, quantity, cate);

            } catch (IOException e) {
                  e.printStackTrace();
            } catch (ServletException e) {
                  e.printStackTrace();
            }
//            request.setAttribute("message","Add Success");
            request.getRequestDispatcher("/views/admin/updateProduct.jsp").forward(request, response);
      }
}

