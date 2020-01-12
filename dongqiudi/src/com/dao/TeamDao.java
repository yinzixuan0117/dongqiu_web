 package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.HibernateSessionFactory;
import com.hibernate.Team;

public class TeamDao {
	 String message="error";

	    HibernateSessionFactory hsf = new HibernateSessionFactory();
	
	    public void addTeam(Team u) {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         session.save(u);  
	         tx.commit();
	         hsf.closeSession(session);
	     }  
	   
	     public Team getTeam(String id) {  //根据球队名字
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         Team u = (Team) session.get(Team.class, id);  
	         tx.commit();
	         hsf.closeSession(session);
	         return u;  
	     }  

	     public List<Team> getTeams() {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         Query query = session.createQuery("from Team");  
	         List<Team> list = query.list();  
	         tx.commit();
	         hsf.closeSession(session);
	         return list;  
	     }  
	  
	     public void updateTeam(Team u) {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         session.saveOrUpdate(u);  
	         tx.commit();  
	         hsf.closeSession(session);
	     }  

	     public void deleteTeam(String id) {  
	    	 Team u = getTeam(id);  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         session.delete(u);  
	         tx.commit(); 
	         hsf.closeSession(session);
	     }  


	     
	     public List queryInfo(Object value){
       Session session = hsf.getSession();
      
       try{
                String hql = "from Team as u where u.zone = ?";
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
