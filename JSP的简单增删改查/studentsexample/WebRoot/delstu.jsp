<%@ page language="java" import="java.util.*,java.sql.*,com.cn.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'delstu.jsp' starting page</title>
    
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
          String number=request.getParameter("deleteId");
          Connection conn=null;
          PreparedStatement ps=null;
          try{
          conn=DBConnection.getConn(); 
          ps=conn.prepareStatement("delete from Student where studentNumber=?");
          ps.setString(1, number);
          ps.executeUpdate();
          }catch(Exception e){
            e.printStackTrace();
          }finally{
             DBConnection.close(null, ps, conn);
          }
           
         response.sendRedirect("index.jsp");
     %>
  </body>
</html>
