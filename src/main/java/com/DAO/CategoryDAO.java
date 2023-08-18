package com.DAO;

import com.Model.Category;
import com.hibernate.HibernateUltils;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import java.util.ArrayList;
import java.util.List;

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
//            Category c1 = new Category();
//            c1.setCategoryName("Phone");
//            Category c2 = new Category();
//            c2.setCategoryName("Tablet");
//            Category c3 = new Category();
//            c3.setCategoryName("Laptop");
//            CategoryDAO.getInstance().insert(c1);
//            CategoryDAO.getInstance().insert(c2);
//            CategoryDAO.getInstance().insert(c3);
//            CategoryDAO.getInstance().doSearch("Phone");
            System.out.println(CategoryDAO.getInstance().selectAll());

//
      }

      @Override
      public void insert(Category category) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            try {
                  Transaction ts = session.beginTransaction();
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
      public void update(int id) {

      }

      @Override
      public void delete(int id) {

      }

      @Override
      public ArrayList<Category> selectAll() {
            Session session = HibernateUltils.getSessionFactory().openSession();
            ArrayList<Category> categoryList = (ArrayList<Category>) session.createQuery(" FROM Category c").list();
            session.close();
            return categoryList;
      }

      @Override
      public ArrayList<Category> selectByCondition(String condition) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            Query query = session.createQuery(" FROM Category c WHERE c.categoryName =:u ");
            query.setParameter("u", condition);
            Category c = (Category) query.uniqueResult();
            session.close();
            return null;
      }

      public Category doSearch(int condition) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            Query query = session.createQuery(" FROM Category c WHERE c.categoryID =:u ");
            query.setParameter("u", condition);
            Category c = (Category) query.uniqueResult();
            session.close();
            return c;
      }

      @Override
      public ArrayList<Category> selectByTime() {
            return null;
      }
}
