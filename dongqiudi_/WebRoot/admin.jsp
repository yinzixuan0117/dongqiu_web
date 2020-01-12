<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" import="com.dao.*" import="com.hibernate.*" import="java.util.List"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<% PlayerDao a=new PlayerDao();
   List<Player> list=a.getUsers();
   Player m;
   
 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>管理员页面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <h2 align="center">球员 </h2>
     <form action="insert_IP" method="post">
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
        
          <%for (int i=0;i<list.size();i++){m=list.get(i);PlayerId b=m.getId();%>
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
			<th scope="col"><a href="update?teamname=<%out.print(m.getId().getTeamName()); %>
			&season=<%out.print(m.getId().getSeason()); %>
			&number=<%out.print(m.getId().getNumber()); %>
			">修改</a></th>
        </tr>
          <%}%>
    </thead>

   
<tr>
			 <td><input type="text" name="name"></td>
			<!--<label>姓名</label>-->
			<td><input type="text" name="team_name"></td>
			<!--<label>所在球队</label>-->

			<td><input type="text" name="number"></td>
			<!--<label>号码</label>-->
			<td><input type="text" name="position"></td>
			<!--<label>场上位置</label>-->
			<td><input type="text" name="minutes"></td>
			<!--<label>场均分钟</label>-->
			<td><input type="text" name="pts"></td>
			<!--<label>场均得分</label>-->
			<td><input type="text" name="assist"></td>
			<!--<label>场均助攻</label>-->
			<td><input type="text" name="rebound"></td>
			<!--<label>场均篮板</label>-->
			<td><input type="text" name="steal"></td>
			<!--<label>场均抢断</label>-->
			<td><input type="text" name="block_shot"></td>
			<!--<label>场均盖帽</label>-->
			<td><input type="text" name="turnover"></td>
			<!--<label>场均失误</label>-->
			<td><input type="text" name="foul"></td>
			<!--<label>场均犯规</label>-->
			<td><input type="text" name="fg"></td>
			<!--<label>场均投篮命中率</label>-->
			<td><input type="text" name="ft"></td>
			<!--<label>场均罚球命中率</label>-->
			<td><input type="text" name="tp"></td>
			<!--<label>场均三分命中率</label>-->
			<td><input type="text" name="season"></td>
			<!--<label>赛季</label>-->
		</tr>
		</table>
        <input type="submit" name="" value="添加">
	 </form>
     <form action="delete_DP" method="post">
		<div class="inputbox">
			<input type="text" name="season">
			<label>赛季</label>
	    </div>
		<div class="inputbox">
			<input type="text" name="number">
			<label>号码</label>
		</div>
		<div class="inputbox">
			<input type="text" name="teamName">
			<label>球队名称</label>
		</div>
        <input type="submit" name="" value="删除">
        
        
        
	 </form>
	      
	 
 
   </body>
</html>
