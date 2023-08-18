package com.DAO;

import com.Model.Admin;
import com.Model.Product;
import com.Model.User;
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
public class UserDAO implements DAO<User> {

      public static UserDAO getInstance() {
            return new UserDAO();
      }

      public static void main(String[] args) {
            System.out.println(UserDAO.getInstance().UserCheck("nguye123n le","1234"));
      }
      @Override
      public void insert(User user) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            try {
                  org.hibernate.Transaction ts = session.beginTransaction();
                  session.save(user);
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
      public ArrayList<User> selectAll() {
            Session session = HibernateUltils.getSessionFactory().openSession();
            ArrayList<User> productsList = (ArrayList<User>) session.createQuery(" FROM User u").list();
            session.close();
            return productsList;
      }
      public boolean UserCheck(String condition1, String condition2) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            Query query = session.createQuery(" FROM User u WHERE u.username =:u AND u.password =:p");
            query.setParameter("u", condition1);
            query.setParameter("p", condition2);
            User user = (User) query.uniqueResult();
            session.close();
            //                  if (a.getAddminUsername().equals(condition1) && a.getAddminPassword().equals(condition2))
            //                  else System.out.println("Sai");
            return user != null;
      }

      @Override
      public ArrayList<User> selectByCondition(String condition) {
            return null;
      }

      @Override
      public ArrayList<User> selectByTime() {
            return null;
      }
}
