<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'player.jsp' starting page</title>
    
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
      <%
  try {  
            Class.forName("com.mysql.jdbc.Driver");  ////驱动程序名
            String url = "jdbc:mysql://localhost:3306/ex1?serverTimezone=UTC"; //数据库名
            String username = "root";  //数据库用户名
            String password = "198800";  //数据库用户密码
            Connection conn = DriverManager.getConnection(url, username, password);  //连接状态
            if(conn != null){   
                out.print("<br />");
 %> 	
  <h1 align="center">球员信息</h1>
<table   border="1" align="center">
	
  <tbody>
    <tr>
	  <td width="100">赛季</td>
      <td width="100">球员姓名</td>
      <td width="100">所在球队</td>
      <td width="100">球员号码</td>
      <td width="100">场上位置</td>
      <td width="100">场均上场时间</td>
      <td width="100">场均得分</td>
      <td width="100">场均助攻</td>
      <td width="100">场均篮板</td>
      <td width="100">场均抢断</td>
      <td width="100">场均盖帽</td>
      <td width="100">场均失误</td>
       <td width="100">场均犯规</td>
      <td width="100">场均投篮命中率</td>
      <td width="100">场均罚球命中率</td>
      <td width="100">场均三分命中率</td>
    </tr>
    <%
                Statement stmt = null;  
                ResultSet rs = null;  
                String sql = "SELECT * FROM player;";  //查询语句
                stmt = conn.createStatement();  
                rs = stmt.executeQuery(sql);    
				out.print("<br/>");
                while (rs.next()) {%>
  <tr>  
    <td width="100" ><%=rs.getString("Season") %></td>  
    <td width="100" ><%=rs.getString("Name") %></td>  
    <td width="100"><%=rs.getString("Team_Name") %></td>
    <td width="100"><%=rs.getString("Number") %></td>
    <td width="100"><%=rs.getString("Position") %></td> 
    <td width="100"><%=rs.getString("Minutes") %></td>
     <td width="100"><%=rs.getString("PTS") %></td>
     <td width="100"><%=rs.getString("Assist") %></td>
     <td width="100"><%=rs.getString("Rebound") %></td> 
     <td width="100"><%=rs.getString("Steal") %></td>
     <td width="100"><%=rs.getString("Block_Shot") %></td>
     <td width="100"><%=rs.getString("Turnover") %></td> 
       <td width="100"><%=rs.getString("Foul") %></td> 
        <td width="100"><%=rs.getString("FG") %></td> 
         <td width="100"><%=rs.getString("FT") %></td>
          <td width="100"><%=rs.getString("TP") %></td>   
  </tr>
  <%
            }  
            }else{  
                out.print("连接失败！");  
            }  
        }catch (Exception e) {        
            //e.printStackTrace();  
            out.print("数据库连接异常！");  
        }  
%> 
  </tbody>	
</table>
  </body>
</html>
