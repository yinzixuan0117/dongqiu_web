package com.action;

import com.dao.UserDao;
import com.hibernate.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport {
	private String id;
	private String username;
	private String password;
	private String email;
	private String phonenum;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenum() {
		return phonenum;
	}
	public void setPhonenum(String phonenum) {
		this.phonenum = phonenum;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String list(){
		UserDao ud = new UserDao();
		
		User user;
		user = ud.getUser(getId());
		ActionContext actionContext = ActionContext.getContext();   
		actionContext.put("user", user);
		return "list";
	}
	public String execute() throws Exception {
		
		User u = new User(getId(),getUsername(), getPassword(),getEmail(),getPhonenum());
		UserDao ua=new UserDao();
		ua.addUser(u);
		return "success";
	}

}
