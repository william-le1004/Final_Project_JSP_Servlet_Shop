package com.DAO;

import java.util.ArrayList;

/**
 * @author Will
 * @project Final_Project
 * @date 8/13/2023
 */
public interface DAO<T> {

      public void insert(T t);

      public void update(int id);

      public void delete(int id);

      public ArrayList<T> selectAll();

      public ArrayList<T> selectByCondition(String condition);

      public ArrayList<T> selectByTime();

}