<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body  >
    <center>
      <table   width="80%" background="image/top.jpg" height="600px">
        <tr><td align="center"><h1>学生信息管理系统</h1></td></tr>
        <tr>
          <td align="center"><font size="6px">
            <p><a href="addstudent.jsp">添加学生信息</a></p>
            <p><a href="lookstudent.jsp">查询学生信息</a></p>
            <p><a href="updatestudent.jsp">修改学生信息</a></p>
            <p><a href="deletestudent.jsp">删除学生信息</a></p>
          </font></td>
        </tr>
      </table>
    </center>
  </body>
</html>
