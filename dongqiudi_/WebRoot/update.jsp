<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" import="com.dao.*" import="com.hibernate.*" import="java.util.List"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>修改页面</title>
    
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
   <body>
  <%
  Player u = (Player)request.getAttribute("player");
  out.print(u.getName());
  %>
  <form action="delete" method="post">
		<div class="inputbox">
			<input type="text" name="name">
			<label>姓名</label>
	    </div>
		<div class="inputbox">
			<input type="text" name="team_name">
			<label>所在球队</label>
		</div>
		<div class="inputbox">
			<input type="text" name="number">
			<label>号码</label>
		</div>
				<div class="inputbox">
			<input type="text" name="position">
			<label>场上位置</label>
	    </div>
		<div class="inputbox">
			<input type="text" name="minutes">
			<label>场均分钟</label>
		</div>
		<div class="inputbox">
			<input type="text" name="pts">
			<label>场均得分</label>
		</div>
				<div class="inputbox">
			<input type="text" name="assist">
			<label>场均助攻</label>
	    </div>
		<div class="inputbox">
			<input type="text" name="rebound">
			<label>场均篮板</label>
		</div>
		<div class="inputbox">
			<input type="text" name="steal">
			<label>场均抢断</label>
		</div>
				<div class="inputbox">
			<input type="text" name="block_shot">
			<label>场均盖帽</label>
	    </div>
		<div class="inputbox">
			<input type="text" name="turnover">
			<label>场均失误</label>
		</div>
		<div class="inputbox">
			<input type="text" name="foul">
			<label>场均犯规</label>
		</div>
				<div class="inputbox">
			<input type="text" name="fg">
			<label>场均投篮命中率</label>
	    </div>
		<div class="inputbox">
			<input type="text" name="ft">
			<label>场均罚球命中率</label>
		</div>
		<div class="inputbox">
			<input type="text" name="tp">
			<label>场均三分命中率</label>
		</div>
				<div class="inputbox">
			<input type="text" name="season">
			<label>赛季</label>
		</div>
        <input type="submit" name="" value="提交修改">
	 </form>
 
  </body>
</html>
