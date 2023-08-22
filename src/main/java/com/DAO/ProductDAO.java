package com.DAO;

import com.Model.Category;
import com.Model.Product;
import com.hibernate.HibernateUltils;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;

/**
 * @author Will
 * @project Final_Project
 * @date 8/13/2023
 */
public class ProductDAO implements DAO<Product> {

      public static ProductDAO getInstance() {
            return new ProductDAO();
      }

      public static void main(String[] args) {
//            Phone();
//            Tablet();
//            Laptop();
            ArrayList<Product> p = ProductDAO.getInstance().doPaginationDESC(8);
            p.forEach(System.out::println);
            ArrayList<Product> p1 = ProductDAO.getInstance().doPagination(8);
//            p1.forEach(System.out::println);
            System.out.println(p1);
//            Long total = ProductDAO.getInstance().getTotal();
            System.out.println(ProductDAO.getInstance().selectAll());
      }

      public ArrayList<Product> doPaginationDESC(int positionPage) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            Query query = session.createQuery("FROM Product p ORDER BY p.productPrice");
            // (position - 1) x 8
            query.setFirstResult((positionPage - 1) * 8);
            query.setMaxResults(8);
            return (ArrayList<Product>) query.list();
      }

      public ArrayList<Product> doPagination(int positionPage) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            Query query = session.createQuery("FROM Product ");
            // (position - 1) x 8
            query.setFirstResult((positionPage - 1) * 8);
            query.setMaxResults(8);
            return (ArrayList<Product>) query.list();
      }

      public Long getTotal() {
            Session session = HibernateUltils.getSessionFactory().openSession();
            Long total = (Long) session.createQuery("select count(*) FROM Product p").uniqueResult();
            session.close();
            return total;
      }

      public static void Phone() {
            Category c1 = new Category();
            c1.setCategoryName("Phone");

            Product p1 = new Product();
            p1.setProductName("Iphone 14 Pro Black");
            p1.setProductImg("iPhone-14-plus-thumb-den-600x600.jpg");
            p1.setProductPrice(1220.0);
            p1.setCategory(c1);
            p1.setQuantity(100);
            p1.getCategory().setCategoryName("Phone");

            Product p2 = new Product();
            p2.setProductName("SamSung Galaxy s23 Ultra");
            p2.setProductImg("samsung-galaxy-s23-ultra-thumb-xanh-600x600.jpg");
            p2.setProductPrice(1500.0);
            p2.setCategory(c1);
            p2.setQuantity(200);

            Product p3 = new Product();
            p3.setProductName("SamSung Galaxy Z Fold 5");
            p3.setProductImg("samsung-galaxy-z-fold5- kem-600x600.jpg");
            p3.setProductPrice(1300.0);
            p3.setCategory(c1);
            p3.setQuantity(100);

            Product p4 = new Product();
            p4.setProductName("Iphone 14 Pro Gold");
            p4.setProductImg("iphone-14-pro-vang-thumb-600x600.jpg");
            p4.setProductPrice(1399.9);
            p4.setCategory(c1);
            p4.setQuantity(100);

            ProductDAO.getInstance().insert(p1);
            ProductDAO.getInstance().insert(p2);
            ProductDAO.getInstance().insert(p3);
            ProductDAO.getInstance().insert(p4);
      }

      public static void Tablet() {
            Category c1 = new Category();
            c1.setCategoryName("Tablet");

            Product p1 = new Product();
            p1.setProductName("Ipad Pro M1 11-inch");
            p1.setProductImg("ipad-pro-m1-11-inch-wifi-cellular-2tb-2021-(14).jpg");
            p1.setProductPrice(999.0);
            p1.setCategory(c1);
            p1.setQuantity(300);

            Product p2 = new Product();
            p2.setProductName("Xiaomi Pad 6 Blue");
            p2.setProductImg("xiaomi-pad-6-blue-thumb-600x600.jpg");
            p2.setProductPrice(400.0);
            p2.setCategory(c1);
            p2.setQuantity(300);

            Product p3 = new Product();
            p3.setProductName("SamSung Galaxy Tab S9 Grey");
            p3.setProductImg("samsung-galaxy-tab-s9-xam-thumb-600x600.jpg");
            p3.setProductPrice(850.0);
            p3.setCategory(c1);
            p3.setQuantity(300);

            Product p4 = new Product();
            p4.setProductName("SamSung Galaxy Tab S9 Beige");
            p4.setProductImg("samsung-galaxy-tab-s9-kem-thumb-600x600.jpg");
            p4.setProductPrice(899.9);
            p4.setCategory(c1);
            p4.setQuantity(300);

            ProductDAO.getInstance().insert(p1);
            ProductDAO.getInstance().insert(p2);
            ProductDAO.getInstance().insert(p3);
            ProductDAO.getInstance().insert(p4);
      }

      public static void Laptop() {
            Category c1 = new Category();
            c1.setCategoryName("Laptop");

            Product p1 = new Product();
            p1.setProductName("Macbook Pro M2");
            p1.setProductImg("apple-macbook-pro-m2-2022-16gb-600x600.jpg");
            p1.setProductPrice(2500.0);
            p1.setCategory(c1);
            p1.setQuantity(500);

            Product p2 = new Product();
            p2.setProductName("HP Envy 16");
            p2.setProductImg("hp-envy-16-h0205tx-i9-7c0t2pa-thumb-1-600x600.jpg");
            p2.setProductPrice(5000.0);
            p2.setCategory(c1);
            p2.setQuantity(500);

            Product p3 = new Product();
            p3.setProductName("Lenovo Thinkpad X1 Carbon");
            p3.setProductImg("lenovo-thinkpad-x1-carbon-gen-10-i7-21cb00a8vn-311022-104429-600x600.jpg");
            p3.setProductPrice(8050.0);
            p3.setCategory(c1);
            p3.setQuantity(500);

            Product p4 = new Product();
            p4.setProductName("Macbook Pro M2 14 Inches");
            p4.setProductImg("macbook-pro-14-inch-m2-pro-gray-thumb-600x600.jpg");
            p4.setProductPrice(19999.9);
            p4.setCategory(c1);
            p4.setQuantity(500);

            ProductDAO.getInstance().insert(p1);
            ProductDAO.getInstance().insert(p2);
            ProductDAO.getInstance().insert(p3);
            ProductDAO.getInstance().insert(p4);
      }

      @Override
      public void insert(Product product) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            try {
                  org.hibernate.Transaction ts = session.beginTransaction();
                  session.save(product);
                  ts.commit();
                  System.out.println("Done !!");
                  session.close();
            } catch (HibernateException e) {
                  session.getTransaction().rollback();
                  e.printStackTrace();
            } finally {
                  //   session.flush();
                  session.close();
            }
      }

      @Override
      public void update(int id) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            try {
                  Transaction ts = session.beginTransaction();
                  Query query = session.createQuery("UPDATE Product p SET p.productName= :name"
                          + ",p.productImg = :img "
                          + ",p.productPrice = :price "
                          + ",p.quantity = :quantity "
                          + ",p.category.categoryID = :cate " +
                          " where id= :id");
                  query.setParameter("id", id);
                  query.setParameter("id", id);
                  query.setParameter("id", id);
                  query.setParameter("id", id);
                  query.setParameter("id", id);
                  int result = query.executeUpdate();
                  ts.commit();
                  System.out.println("Product Delete Status = " + result);
                  session.close();
            } catch (HibernateException e) {
                  session.getTransaction().rollback();
                  e.printStackTrace();
            } finally {
                  //   session.flush();
                  session.close();
            }
      }

      public void updateProduct(int id, String name, String img, Double price, int quantity, int cate) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            try {
                  Transaction ts = session.beginTransaction();
                  Query query = session.createQuery("UPDATE Product p SET p.productName= :name"
                          + ",p.productImg = :img "
                          + ",p.productPrice = :price "
                          + ",p.quantity = :quantity "
                          + ",p.category.categoryID = :cate " +
                          " where id= :id");
                  query.setParameter("name", name);
                  query.setParameter("img", img);
                  query.setParameter("price", price);
                  query.setParameter("quantity", quantity);
                  query.setParameter("cate", cate);
                  query.setParameter("id", id);
                  int result = query.executeUpdate();
                  ts.commit();
                  System.out.println("Product Update Status = " + result);
                  session.close();
            } catch (HibernateException e) {
                  session.getTransaction().rollback();
                  e.printStackTrace();
            } finally {
                  //   session.flush();
                  session.close();
            }
      }

      @Override
      public void delete(int id) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            try {
                  Transaction ts = session.beginTransaction();
                  Query query = session.createQuery("delete from Product p where p.id=:id");
                  query.setParameter("id", id);
                  int result = query.executeUpdate();
                  ts.commit();
                  System.out.println("Product Delete Status = " + result);
                  session.close();
            } catch (HibernateException e) {
                  session.getTransaction().rollback();
                  e.printStackTrace();
            } finally {
                  //   session.flush();
                  session.close();
            }
      }

      @Override
      public ArrayList<Product> selectAll() {
            Session session = HibernateUltils.getSessionFactory().openSession();
            ArrayList<Product> productsList = (ArrayList<Product>) session.createQuery(" FROM Product p").list();
            session.close();
            return productsList;
      }

      @Override
      public ArrayList<Product> selectByCondition(String condition) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            Query query = session.createQuery(" from Product p where p.productName like :name");
            query.setParameter("name", "%" + condition + "%");
            ArrayList<Product> products = (ArrayList<Product>) query.getResultList();
            session.close();
            return products;
      }

      public Product selectByID(int id) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            Query query = session.createQuery(" from Product p where p.productID =:id");
            query.setParameter("id", id);
            Product product = (Product) query.uniqueResult();
            session.close();
            return product;
      }


      @Override
      public ArrayList<Product> selectByTime() {
            return null;
      }
}
