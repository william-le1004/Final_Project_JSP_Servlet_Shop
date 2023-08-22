package com.DAO;

import com.hibernate.HibernateUltils;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import java.util.ArrayList;

/**
 * @author Will
 * @project Final_Project
 * @date 8/13/2023
 */
public class AdminDAO implements DAO<Admin> {

      public static AdminDAO getInstance() {
            return new AdminDAO();
      }

      public static void main(String[] args) {

      }

      @Override
      public void insert(Admin admin) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            try {
                  org.hibernate.Transaction ts = session.beginTransaction();
                  session.save(admin);
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
      public void update(Admin admin) {

      }

      @Override
      public void delete(String condition) {

      }

      @Override
      public ArrayList<Admin> selectAll() {
            return null;
      }

      @Override
      public ArrayList<Admin> selectByCondition(String condition) {
            return null;
      }
}
