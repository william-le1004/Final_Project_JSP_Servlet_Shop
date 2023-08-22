package com.DAO;

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


      //      public void updateUser(int id, UserName name, String username, String pass, String email, String phone, String address) {
//            Session session = HibernateUltils.getSessionFactory().openSession();
//            try {
//                  Transaction ts = session.beginTransaction();
//                  Query query = session.createQuery("UPDATE User s SET s.name= :name"
//                          + ",s.username = :username "
//                          + ",s.password = :pass "
//                          + ",s.email = :email "
//                          + ",s.phoneNumber = :phone "
//                          + ",s.address = :address " +
//                          " where id= :id");
//                  query.setParameter("name", name);
//                  query.setParameter("username", username);
//                  query.setParameter("pass", pass);
//                  query.setParameter("email", email);
//                  query.setParameter("phone", phone);
//                  query.setParameter("address", address);
//                  query.setParameter("id", id);
//                  int result = query.executeUpdate();
//                  ts.commit();
//                  System.out.println("User Update Status = " + result);
//                  session.close();
//            } catch (HibernateException e) {
//                  session.getTransaction().rollback();
//                  e.printStackTrace();
//            } finally {
//                  //   session.flush();
//                  session.close();
//            }
//      }

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
            return user != null;
      }

      public User selectUser(String condition1, String condition2) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            Query query = session.createQuery(" FROM User u WHERE u.username =:u AND u.password =:p");
            query.setParameter("u", condition1);
            query.setParameter("p", condition2);
            User user = (User) query.uniqueResult();
            session.close();
            return user;
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
