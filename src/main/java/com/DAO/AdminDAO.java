package com.DAO;

import com.Model.Admin;
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

      public static void main(String[] args) {
            add();
      }
      public static void add(){
            Admin a1 = new Admin("kien","1234");
            Admin a2 = new Admin("tran","1234");
            AdminDAO.getInstance().insert(a1);
            AdminDAO.getInstance().insert(a2);
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
