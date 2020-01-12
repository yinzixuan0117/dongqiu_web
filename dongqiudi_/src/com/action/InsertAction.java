package com.action;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.dao.PlayerDao;
import com.hibernate.Player;
import com.hibernate.PlayerId;
import com.opensymphony.xwork2.ActionSupport;

public class InsertAction extends ActionSupport{
	private String message;
	public String IP(){
		PlayerDao ud = new PlayerDao();
		HttpServletRequest request = ServletActionContext.getRequest();
		String Season = request.getParameter("season");
		String Number = request.getParameter("number");
		String TeamName = request.getParameter("team_name");
		String Name = request.getParameter("name");
		String Position = request.getParameter("position");
		String Minutes = request.getParameter("minutes");
		String Pts = request.getParameter("pts");
		String Assist = request.getParameter("assist");
		String Rebound = request.getParameter("rebound");
		String Steal = request.getParameter("steal");
		String Block_shot = request.getParameter("block_shot");
		String Turnover = request.getParameter("turnover");
		String Foul = request.getParameter("foul");
		String Fg = request.getParameter("fg");
		String Ft = request.getParameter("ft");
		String Tp = request.getParameter("tp");
		PlayerId m=new PlayerId(Season,Number,TeamName);
		Player n=new Player(m,Name,Position,Minutes,Pts,Assist,Rebound,
			             Steal,Block_shot,Turnover,Foul,Fg,Ft,Tp);
        ud.addUser(n);
        message="success";
		return message;
	}
}
