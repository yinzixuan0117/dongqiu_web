package com.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.PlayerDao;
import com.hibernate.Player;
import com.hibernate.PlayerId;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class DeleteAction extends ActionSupport{
                      private String season;
                      private String number;
                      private String teamName;
                      private String message="fail";
					private String getSeason() {
						return season;
					}
					private void setSeason(String season) {
						this.season = season;
					}
					private String getNumber() {
						return number;
					}
					private void setNumber(String number) {
						this.number = number;
					}
					private String getTeamName() {
						return teamName;
					}
					private void setTeamName(String teamName) {
						this.teamName = teamName;
					}
					public String DP(){
						PlayerDao ud = new PlayerDao();
						HttpServletRequest request = ServletActionContext.getRequest();
						String Season = request.getParameter("season");
						String Number = request.getParameter("number");
						String TeamName = request.getParameter("teamName");
						PlayerId m=new PlayerId(Season,Number,TeamName);
                        ud.deleteUser(m);
                        message="success";
						return message;
					}
					public String execute() throws Exception {
						
						return "success";
					}
}
