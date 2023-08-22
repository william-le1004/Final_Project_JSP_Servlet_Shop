package com.DAO;

import com.Data.CategoryDATA;
import com.hibernate.HibernateUltils;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import java.util.ArrayList;

/**
 * @author Will
 * @project Final_Project
 * @date 8/13/2023
 */
public class CategoryDAO implements DAO<Category> {

      public static CategoryDAO getInstance() {
            return new CategoryDAO();
      }

      public static void main(String[] args) {

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

            Category c1 = new Category();
            c1.setCategoryName("Phone");
            Category c2 = new Category();
            c2.setCategoryName("Tablet");
            Category c3 = new Category();
            c3.setCategoryName("Laptop");
            CategoryDAO.getInstance().insert(c1);
            CategoryDAO.getInstance().insert(c2);
            CategoryDAO.getInstance().insert(c3);

      }

      @Override
      public void insert(Category category) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            try {
                  org.hibernate.Transaction ts = session.beginTransaction();
                  session.save(category);
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
      public void update(Category category) {

      }

      @Override
      public void delete(String condition) {

      }

      @Override
      public ArrayList<Category> selectAll() {
            Session session = HibernateUltils.getSessionFactory().openSession();
            return (ArrayList<Category>) session.createQuery(" FROM Category c").list();
      }

      @Override
      public ArrayList<Category> selectByCondition(String condition) {
            return null;
      }
}
