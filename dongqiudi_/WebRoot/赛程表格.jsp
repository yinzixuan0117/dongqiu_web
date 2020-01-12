<%@ page language="java" contentType="text/html; charset=UTF-8" 
		 pageEncoding="UTF-8" import="com.dao.*" import="com.hibernate.*" import="java.util.List" %>
		 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<% ScheduleDao a=new ScheduleDao();
   List<Schedule> list=a.getSchedules();
   Schedule m;
 %>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>赛程表格</title>
	<link href="./static/css/表格.css" rel="stylesheet" type="text/css">
</head>

<body>	
	<video id="v1" autoplay loop muted>
  	<source src="./static/img/AE Plexus 1080i.mp4" type="video/mp4"  />
	</video>
 <div class="navbar">
	<a href="#" class="logo">DongQiuDi</a>
	<ul class="nav">
		<li><a href="首页.jsp">Home</a></li>
		<li><a href="赛程表格.jsp">Match</a></li>
		<li><a href="球队表格.jsp">Team</a></li>
		<li><a href="球员表格.jsp">Player</a></li>
		<li><a href="管理员.jsp">Gm</a></li>
		<li><a href="http://10.10.128.99/s17010141/messageBoard-master/index.html">Comment</a></li>
		</ul>
	<ul class="nav1">
		<li><a href="登录.jsp">Login</a></li>
		<li>|</li>
		<li><a href="注册.jsp">Register</a></li>
		</ul>
	</div>
	<br>
<br>
<br>
<div class="search-box">
         <form action="show_listS" method="post">
			<input class="search-txt" type="text" placeholder="Type to search" name="teamnameS" />
			<a class="search-btn" href="#">
				<i class="fas fa-search"></i>
			</a>
		</form>
</div>
<form action="select" method="post">
	<select name="time" id="department">
		<option value="2019-11-18">2019-11-18</option>
		<option value="2019-11-19">2019-11-19</option>
		<option value="2019-11-20">2019-11-20</option>
		<option value="2019-11-21">2019-11-21</option>
		<option value="2019-11-22">2019-11-22</option>
		<option value="2019-11-23">2019-11-23</option>
		<option value="2019-11-24">2019-11-24</option>
	</select>	
	<input type="submit" value="提交"/>
</form>
<h2 align="center">赛程</h2>
<table id="box-table-a" summary="Employee Pay Sheet" >
    <thead>
    	<tr>
        	<th scope="col">球队</th>
            <th scope="col">对手</th>
            <th scope="col">结果</th>
            <th scope="col">比分</th>
			<th scope="col">地点</th>
			<th scope="col">日期</th>
        </tr>
         <%for (int i=0;i<list.size();i++){m=list.get(i); %>
        <tr>
            <th scope="col"><% out.println(m.getId().getTeamName()); %></th>
            <th scope="col"><% out.println(m.getOpponent()); %></th>
            <th scope="col"><% out.println(m.getResult()); %></th>
            <th scope="col"><% out.println(m.getScores()); %></th>
            <th scope="col"><% out.println(m.getSite()); %></th>
			<th scope="col"><% out.println(m.getId().getDateTime()); %></th>
        </tr>
        <%}%>
    </thead>
    
</table>
 

</body>
</html>
