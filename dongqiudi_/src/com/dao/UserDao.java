package com.dao;

import java.util.List;

import javax.swing.JOptionPane;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import com.hibernate.User;
import com.hibernate.HibernateSessionFactory;

public class UserDao {
	    String message="error";

	    HibernateSessionFactory hsf = new HibernateSessionFactory();
	
	    public void addUser(User u) {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         session.save(u);  
	         tx.commit();
	         hsf.closeSession(session);
	     }  
	   
	     public User getUser(String id) {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         User u = (User) session.get(User.class, id);  
	         tx.commit();
	         hsf.closeSession(session);
	         return u;  
	     }  

	     public List<User> getUsers() {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         Query query = session.createQuery("from User");  
	         List<User> list = query.list();  
	         tx.commit();
	         hsf.closeSession(session);
	         return list;  
	     }  
	  
	     public void updateUser(User u) {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         session.saveOrUpdate(u);  
	         tx.commit();  
	         hsf.closeSession(session);
	     }  

	     public void deleteUser(String id) {  
	         User u = getUser(id);  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         session.delete(u);  
	         tx.commit(); 
	         hsf.closeSession(session);
	     }  

	     public void printUser(User u) {  
	         System.out.print("id:" + u.getId() + "\t");  
	         System.out.print("name:" + u.getName() + "\t");  
	         System.out.print("password:" + u.getPassword() + "\t");  
	         System.out.print("Emial:" + u.getEmail() + "\t");  
	         System.out.println("Phonenum:" + u.getPhonenum());  
	     }
	     
	     public List queryInfo(Object value){
             Session session = hsf.getSession();
            
             try{
                      String hql = "from User as u where u.name = ?";
                      Query query = session.createQuery(hql);
                      query.setParameter(0, value);
                      List list = query.list();
                      Transaction tx= session.beginTransaction();
                      tx.commit();
                      session.close();
                      return list;
                     
             }catch (Exception e) {
                      e.printStackTrace();
                      session.close();
             }
             return null;
            
       }
	     
	     
}

