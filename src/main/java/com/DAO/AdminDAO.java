package com.DAO;

import com.Model.Admin;
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
public class AdminDAO implements DAO<Admin> {

      public static AdminDAO getInstance() {
            return new AdminDAO();
      }

      public static void main(String[] args) {
            add();

            System.out.println(AdminDAO.getInstance().AdminCheck("kien23423", "1234"));
      }

      public static void add() {
            Admin a1 = new Admin("kien", "1234");
            Admin a2 = new Admin("tran", "1234");
            AdminDAO.getInstance().insert(a1);
            AdminDAO.getInstance().insert(a2);
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
      public void update(int id) {

      }

      @Override
      public void delete(int id) {

      }

      @Override
      public ArrayList<Admin> selectAll() {
            return null;
      }

      @Override
      public ArrayList<Admin> selectByCondition(String condition) {
            return null;
      }

      public boolean AdminCheck(String condition1, String condition2) {
            Session session = HibernateUltils.getSessionFactory().openSession();
            Query query = session.createQuery(" FROM Admin a WHERE a.addminUsername =:u AND a.addminPassword =:p");
            query.setParameter("u", condition1);
            query.setParameter("p", condition2);
            Admin a = (Admin) query.uniqueResult();
            session.close();
            //                  if (a.getAddminUsername().equals(condition1) && a.getAddminPassword().equals(condition2))
            //                  else System.out.println("Sai");
            return a != null;
      }

//      public boolean doCheck(Admin a, String u, String p) {
//            if (a.getAddminUsername().equals(u) && a.getAddminPassword().equals(p)) {
//                  System.out.println("Dung");
//                  return true;
//            } else
//                  System.out.println("Sai");
//            return false;
//      }

      @Override
      public ArrayList<Admin> selectByTime() {
            return null;
      }
}
