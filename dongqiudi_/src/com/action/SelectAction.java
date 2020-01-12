package com.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.ScheduleDao;
import com.hibernate.Schedule;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class SelectAction extends ActionSupport{
	private String time; 
	private String getTime() {
		return time;
	}
	private void setTime(String time) {
		this.time = time;
	}
    public String execute() throws Exception {
    	HttpServletRequest request = ServletActionContext.getRequest();
    	String times = request.getParameter("time");
    	//System.out.print("ÈÕÆÚ"+times);
    	ScheduleDao ud = new ScheduleDao();
		List list = ud.queryByTime(times);
		System.out.print(list.size());
		List <Schedule> schedule = new ArrayList<Schedule>();
		for(int i=0;i<list.size();i++)
		{
			schedule.add((Schedule)list.get(i));
		}
		ActionContext actionContext = ActionContext.getContext();
		actionContext.put("schedule", schedule);   	
    	return "success";
	}


}
