package com.DAO;

import com.Data.CategoryDATA;
import com.Model.Category;
import com.Model.Product;
import com.hibernate.HibernateUltils;
import org.hibernate.HibernateException;
import org.hibernate.Session;
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
            Category c1 = new Category();
            c1.setCategoryName("Phone");

            Product p1 = new Product();
            p1.setProductName("Iphone 14 Pro Black");
            p1.setProductImg("iPhone-14-plus-thumb-den-600x600.jpg");
            p1.setProductPrice(1220.0);
            p1.setCategory(c1);

            Product p2 = new Product();
            p2.setProductName("Samsung Galaxy s23 Ultra");
            p2.setProductImg("samsung-galaxy-s23-ultra-thumb-xanh-600x600.jpg");
            p2.setProductPrice(1500.0);
            p2.setCategory(c1);

            Product p3 = new Product();
            p3.setProductName("Samsung Galaxy Z Fold 5");
            p3.setProductImg("samsung-galaxy-z-fold5- kem-600x600.jpg");
            p3.setProductPrice(1300.0);
            p3.setCategory(c1);

            Product p4 = new Product();
            p4.setProductName("Iphone 14 Pro Gold");
            p4.setProductImg("iphone-14-pro-vang-thumb-600x600.jpg");
            p4.setProductPrice(1399.9);
            p4.setCategory(c1);

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
      public void update(Product product) {

      }

      @Override
      public void delete(String condition) {
//            Session session = HibernateUltils.getSessionFactory().openSession();
//            Query query = session.createQuery("delete from Product where productName= :name");
//            query.setS("name",  + condition + );
//            ArrayList<Product> products = (ArrayList<Product>) query.getResultList();
      }

      @Override
      public ArrayList<Product> selectAll() {
            Session session = HibernateUltils.getSessionFactory().openSession();
            return (ArrayList<Product>) session.createQuery(" FROM Product p").list();
      }

      @Override
      public ArrayList<Product> selectByCondition(String condition) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            Query query = session.createQuery(" from Product p where p.productName like :name");
            query.setParameter("name", "%" + condition + "%");
            ArrayList<Product> products = (ArrayList<Product>) query.getResultList();
            return products;
      }
}
