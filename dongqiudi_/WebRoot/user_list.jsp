<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
 
       <title>登录页面</title>
 
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
       <div align="center">
       <h1>用户列表</h1>
       <table border="1">
            <tr>
              <td width="100">用户ID</td>
              <td width="100">用户名</td>
              <td width="100">密码</td>
              <td width="100">邮箱</td>
              <td width="100">手机号</td>
            </tr>
            <s:iterator  value="users">
            <tr>
              <td width="100"><s:property value="id"/></td>
              <td width="100"><s:property value="name"/></td>
              <td width="100"><s:property value="password"/></td>
              <td width="100"><s:property value="email"/></td>
              <td width="100"><s:property value="phonenum"/></td>
              </tr>
            </s:iterator>
        </table>
       </div>
     </body>
</html>

 