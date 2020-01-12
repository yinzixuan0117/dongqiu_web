<%@ page language="java" contentType="text/html; charset=UTF-8" 
		 pageEncoding="UTF-8" import="com.dao.*" import="com.hibernate.*" import="java.util.List" %>
<% TeamDao a=new TeamDao();
   List<Team> list=a.getTeams();
   Team m;
 %>
 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>球队表格</title>
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
<h2 align="center">球队</h2>
<div class="search-box">
         <form action="show_listT" method="post">
			<input class="search-txt" type="text" placeholder="Type to search" name="teamname" />
			<a class="search-btn" href="#">
				<i class="fas fa-search"></i>
			</a>
		</form>
</div>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<table id="box-table-a" summary="Employee Pay Sheet" >
    <thead>
    	<tr>
        	<th scope="col">球队名</th>
            <th scope="col">分区</th>
            <th scope="col">主教练</th>
            <th scope="col">主场球馆</th>
			<th scope="col">场均得分</th>
			<th scope="col">场均助攻</th>
			<th scope="col">场均篮板</th>
			<th scope="col">场均抢断</th>
			<th scope="col">场均盖帽</th>
			<th scope="col">场均投篮命中率</th>
			<th scope="col">场均罚球命中率</th>
			<th scope="col">场均三分命中率</th>
        </tr>  
        <tr>
            <th scope="col"><s:property value="#team.teamName"/></th>
            <th scope="col"><s:property value="#team.zone"/></th>
            <th scope="col"><s:property value="#team.coach"/></th>
            <th scope="col"><s:property value="#team.arena"/></th>
            <th scope="col"><s:property value="#team.ppg"/></th>
			<th scope="col"><s:property value="#team.apg"/></th>
			<th scope="col"><s:property value="#team.rpg"/></th>
			<th scope="col"><s:property value="#team.spg"/></th>
            <th scope="col"><s:property value="#team.bpg"/></th>
            <th scope="col"><s:property value="#team.afg"/></th>
            <th scope="col"><s:property value="#team.aft"/></th>
			<th scope="col"><s:property value="#team.atp"/></th>
        </tr>

    </thead>
    
</table>
 

</body>
</html>
