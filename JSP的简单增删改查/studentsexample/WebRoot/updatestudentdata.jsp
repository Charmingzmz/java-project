<%@ page language="java" import="java.util.*,java.sql.*,com.cn.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'updatastudentdata.jsp' starting page</title>
    
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
    <% request.setCharacterEncoding("utf-8"); %>
    <jsp:useBean id="stu" class="com.cn.Student"></jsp:useBean>
    <jsp:setProperty property="*" name="stu"/>\
    <% 
    Connection conn=null;
    PreparedStatement ps=null;
    try{
          conn=DBConnection.getConn();
          String sql="update Student set studentName=?,studentSex=?,studentAge=?,studentWeight=? where studentNumber=?";
          ps=conn.prepareStatement(sql);
          ps.setString(1, stu.getStudentName());
          ps.setString(2, stu.getStudentSex());
          ps.setInt(3, stu.getStudentAge());
          ps.setDouble(4, stu.getStudentWeight());
          ps.setString(5, stu.getStudentNumber());
          int i=ps.executeUpdate();
          if(i>0)
             response.sendRedirect("index.jsp");
          else{
              response.sendRedirect("updatestudent.jsp");
          }
     }catch(Exception e){
        e.printStackTrace();
     }finally{
         DBConnection.close(null,ps,conn);
     }
     %>
          
          
  </body>
</html>

