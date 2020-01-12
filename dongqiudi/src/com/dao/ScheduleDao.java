package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.hibernate.HibernateSessionFactory;
import com.hibernate.Schedule;
import com.hibernate.ScheduleId;

public class ScheduleDao {
	    String message="error";

	    HibernateSessionFactory hsf = new HibernateSessionFactory();
	  
	    public void addSchedule(Schedule u) {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         session.save(u);  
	         tx.commit();
	         hsf.closeSession(session);
	     }  
	   
	    /* public Schedule getSchedule(String team_name,String date_time) {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();
	 	     ScheduleId id=ScheduleId(team_name,date_time);
	         Schedule u = (Schedule) session.get(Schedule.class,id);  
	         tx.commit();
	         hsf.closeSession(session);
	         return u;  
	     } */ 

	     public List<Schedule> getSchedules() {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         Query query = session.createQuery("from Schedule");  
	         List<Schedule> list = query.list();  
	         tx.commit();
	         hsf.closeSession(session);
	         return list;  
	     }  
	  
	     public void updateSchedule(Schedule u) {  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         session.saveOrUpdate(u);  
	         tx.commit();  
	         hsf.closeSession(session);
	     }  

	    /* public void deleteSchedule(String id) {  
	    	 Schedule u = getSchedule(id);  
	         Session session = hsf.getSession();  
	         Transaction tx = session.beginTransaction();  
	         session.delete(u);  
	         tx.commit(); 
	         hsf.closeSession(session);
	     }  */


	     
	     public List queryInfo(Object value){
    Session session = hsf.getSession();
   
    try{
             String hql = "from Schedule as u where u.id.teamName = ?";
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
	     public List queryByTime(String dateTime){
    Session session = hsf.getSession();
   
    try{
             String hql = "from Schedule as u where u.id.dateTime like  '%"+dateTime+"%' ";
             Query query = session.createQuery(hql);
             //query.setParameter(0, value);
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
