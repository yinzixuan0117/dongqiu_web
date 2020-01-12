package com.action;

import java.util.List;
import java.util.Map;
import org.apache.struts2.interceptor.ServletRequestAware;
import com.dao.UserDao;
import com.hibernate.User;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {
	private String username;
	private String password;
	private String message = "error";
	private List<User> users;
	private Map<String,Object> session;
	private String prePage;
	
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

	public String execute() throws Exception {
		   validateUser();
		   return message;
	}
	public void validateUser() {
		if (this.getUsername() == null || this.getUsername().length() == 0) {
		addFieldError("username", "用户名不能为空");
		} else {
		UserDao ud = new UserDao();
		List list = ud.queryInfo(this.getUsername());

		if (list.size() == 0) {
		    addFieldError("username", "该用户尚未注册");
		} else {
		User u = new User();
		int count = 0;
		for (int i = 0; i < list.size(); i++) {
		   count++;
		   u= (User) list.get(i);
		   if (this.getUsername().equals(u.getName())) {
		      if (u.getPassword().equals(this.getPassword())) {
		    	  // 获取ActionContext
		            ActionContext actionContext = ActionContext.getContext();
		            // 获取Session
		            Map<String, Object> session = actionContext.getSession();
		            session.put("currentUser", u);
		         message = "succlogin";
		      } else {
		       
		       addFieldError("password", "密码错误");
		      }
		   }
		 }
	   }
    }
  }
	public String list(){
		UserDao ud = new UserDao();
		this.users = ud.getUsers();
		return "list";
	}
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	private Map<String, Object> getSession() {
		return session;
	}
	private void setSession(Map<String, Object> session) {
		this.session = session;
	}
	private String getPrePage() {
		return prePage;
	}
	private void setPrePage(String prePage) {
		this.prePage = prePage;
	}
	
}
