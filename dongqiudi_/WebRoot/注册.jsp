<%@ page language="java" contentType="text/html; charset=UTF-8" 
		 pageEncoding="UTF-8"%>
		 <%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Register</title>

<link href="./static/css/注册.css" rel="stylesheet" type="text/css">
</head>

<body>
	<video id="v1" autoplay loop muted>
  	<source src="./static/img/星空.mp4" type="video/mp4"  />
	</video>
	<div class="box">
	<h2>Register</h2>
		<form action="register" method="post">
		<div class="inputbox">
			<input type="text" name="id" required="">
			<label>Id</label>
		    </div>
		<div class="inputbox">
			<input type="text" name="username" required="">
			<label>Username</label>
			</div>
		<div class="inputbox">
			<input type="password" name="password" required="">
			<label>password</label>
			</div>
		<div class="inputbox">
			<input type="text" name="phonenum" required="">
			<label>phonenum</label>
			</div>
		<div class="inputbox">
			<input type="text" name="email" required="">
			<label>email</label>
			</div>
        <input type="submit" name="" value="Submit">
		</form>
	</div>
</body>
</html>