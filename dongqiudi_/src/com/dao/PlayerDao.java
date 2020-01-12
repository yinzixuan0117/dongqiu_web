package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.HibernateSessionFactory;
import com.hibernate.Player;
import com.hibernate.PlayerId;

public class PlayerDao {
	 String message="error";

	    HibernateSessionFactory hsf = new HibernateSessionFactory();
	
	    public void addUser(Player u) {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         session.save(u);  
	         tx.commit();
	         hsf.closeSession(session);
	     }  
	   
	     public Player getUser(PlayerId id) {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         Player u = (Player) session.get(Player.class, id);  
	         tx.commit();
	         hsf.closeSession(session);
	         return u;  
	     }  



	     public List<Player> getUsers() {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         Query query = session.createQuery("from Player");  
	         List<Player> list = query.list();  
	         tx.commit();
	         hsf.closeSession(session);
	         return list;  
	     }  
	  
	     public void updateUser(Player u) {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         session.saveOrUpdate(u);  
	         tx.commit();  
	         hsf.closeSession(session);
	     }  

	     public void deleteUser(PlayerId id) {  
	    	 Player u = getUser(id);  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         session.delete(u);  
	         tx.commit(); 
	         hsf.closeSession(session);
	     }  

	     public void printUser(Player u) {  
	         System.out.print("id:" + u.getId() + "\t");  
	         System.out.print("name:" + u.getName() + "\t");  
	         System.out.print("password:" + u.getPosition() + "\t");  
	         System.out.print("Emial:" + u.getFoul() + "\t");  
	         System.out.println("Phonenum:" + u.getRebound());  
	     }
	     
	     public List queryInfo(Object value){
          Session session = hsf.getSession();
         
          try{
                   String hql = "from Player as u where u.name = ?";
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
