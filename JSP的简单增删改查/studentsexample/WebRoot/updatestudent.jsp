<%@ page language="java" import="java.util.*,java.sql.*,com.cn.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updatastudent.jsp' starting page</title>
    
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
    <center>
       <h2>修改学生信息</h2>
       <form action= "lookupdatestudent.jsp" method="post">
       <p>请输入修改人学生学号: <input type="text"   name="studentNumber"/></p>
       <p><input type= "submit" value="查询"/>&nbsp; &nbsp;
          <input type= "button" value="返回" onclick= "javascript:history:go(-1)"/>
        </p>
       </form>
      </center>
