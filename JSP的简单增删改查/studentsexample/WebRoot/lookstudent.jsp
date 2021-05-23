<%@ page language="java" import="java.util.*,java.sql.*,com.cn.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'lookstudent.jsp' starting page</title>
    
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
      <h2>查询学生信息</h2>
      <table border="2" bgcolor="CCCEEE" width="600">
        <tr>
           <th>学号</th>
           <th>姓名</th>
           <th>性别</th>
           <th>年龄</th>
           <th>体重</th>
           <th></th>
        </tr>
        <%
           Connection conn=null;
           PreparedStatement ps=null;
           ResultSet rs=null;
           conn=DBConnection.getConn();
           String sql="select * from Student";
           ps=conn.prepareStatement(sql);
           rs=ps.executeQuery();
           while(rs.next()){
              String number=rs.getString("studentNumber");
              String name=rs.getString("studentName");
              String sex=rs.getString("studentSex");
              int age=rs.getInt("studentAge");
              double weight=rs.getDouble("studentWeight");
              out.print("<tr>");
              out.print("<td>"+number+"</td>");
              out.print("<td>"+name+"</td>");
              out.print("<td>"+sex+"</td>");
              out.print("<td>"+age+"</td>");
              out.print("<td>"+weight+"</td>");
              out.print("<td>"+""+"</td>");
            %>
              <td><a href="delstu.jsp?deleteId=<%=number%>">删除</a></td>
           <%
                out.print("</tr>");
           }
         %>
        
      </table>
      <br>
      <a href="index.jsp">返回主页面</a>
    </center>
   
  </body>
</html>
