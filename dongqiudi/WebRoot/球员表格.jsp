<%@ page language="java" contentType="text/html; charset=UTF-8" 
		 pageEncoding="UTF-8" import="com.dao.*" import="com.hibernate.*" import="java.util.List"%>
<% PlayerDao a=new PlayerDao();
   List<Player> list=a.getUsers();
   Player m;
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
<title>球员表格</title>
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
         <form action="show_list" method="post">
			<input class="search-txt" type="text" placeholder="Type to search" name="name" />
			<a class="search-btn" href="#">
				<i class="fas fa-search"></i>
			</a>
		</form>
</div>
<h2 align="center">球员</h2>
<table id="box-table-a" summary="Employee Pay Sheet" >
    <thead>
    	<tr>
        	<th scope="col">姓名</th>
            <th scope="col">所在球队</th>
            <th scope="col">号码</th>
            <th scope="col">场上位置</th>
			<th scope="col">场均分钟</th>
			<th scope="col">场均得分</th>
			<th scope="col">场均助攻</th>
			<th scope="col">场均篮板</th>
			<th scope="col">场均抢断</th>
			<th scope="col">场均盖帽</th>
			<th scope="col">场均失误</th>
			<th scope="col">场均犯规</th>
			<th scope="col">场均投篮命中率</th>
			<th scope="col">场均罚球命中率</th>
			<th scope="col">场均三分命中率</th>
			<th scope="col">赛季</th>
        </tr>
          <%for (int i=0;i<list.size();i++){m=list.get(i); %>
       <tr>
            <th scope="col"><% out.println(m.getName()); %></th>
            <th scope="col"><% out.println(m.getId().getTeamName()); %></th>
            <th scope="col"><% out.println(m.getId().getNumber()); %></th>
            <th scope="col"><% out.println(m.getPosition());%></th>
            <th scope="col"><% out.println(m.getMinutes()); %></th>
			<th scope="col"><% out.println(m.getPts()); %></th>
			<th scope="col"><% out.println(m.getAssist()); %></th>
			<th scope="col"><% out.println(m.getRebound()); %></th>
            <th scope="col"><% out.println(m.getSteal()); %></th>
            <th scope="col"><% out.println(m.getBlockShot()); %></th>
            <th scope="col"><% out.println(m.getTurnover()); %></th>
            <th scope="col"><% out.println(m.getFoul()); %></th>
            <th scope="col"><% out.println(m.getFg()); %></th>
            <th scope="col"><% out.println(m.getFt()); %></th>
            <th scope="col"><% out.println(m.getTp()); %></th>
			<th scope="col"><% out.println(m.getId().getSeason()); %></th>
        </tr>
          <%}%>
    </thead>
    
</table>
 

</body>
</html>
