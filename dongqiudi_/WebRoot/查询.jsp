<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="/struts-tags" prefix="s"%> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Query.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	--><%@ taglib uri="/struts-tags" prefix="s"%> 
  </head>
  <script type="text/javascript" src="scripts/ajax1.js"></script>
  <script src="scripts/jquery-3.4.1.min.js"></script>
  <body>
     <s:form action="show_list" method="post">
     <s:textfield name="name" label="球员姓名"></s:textfield>
     <s:submit value="查询"></s:submit>
      </s:form>
  </body>

</html>
