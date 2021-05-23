<%@ page language="java" import="java.util.*,java.sql.*,com.cn.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'lookupdatestudent.jsp' starting page</title>
    
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
      String sid=request.getParameter("studentNumber");
      Connection conn=null;
      PreparedStatement ps=null;
      ResultSet rs=null;
      Student st=new Student();
      try{
         conn=DBConnection.getConn();
         ps=conn.prepareStatement("select*from Student where studentNumber=?");
         ps.setString(1, sid);
         rs=ps.executeQuery();
         if(rs.next()){
            st.setStudentNumber(rs.getString("studentNumber"));
            st.setStudentName(rs.getString("studentName"));
            st.setStudentSex(rs.getString("studentSex"));
            st.setStudentAge(rs.getInt("studentAge"));
            st.setStudentWeight(rs.getDouble("studentWeight"));
            }else{
               response.sendRedirect("updatestudent.jsp");
            }
         }catch(Exception e){
           e.printStackTrace();
         }finally{
             DBConnection.close(rs,ps,conn);
         }
         %>
       <center>
         <h2>修改学生信息</h2>
         <form action="updatestudentdata.jsp" method="post">  
         <table border="2" bgcolor="CCCEEE">
         <tr>
           <td>学号：</td>
           <td><input type="text" name="studentNumber" value="<%=st.getStudentNumber()%>"/></td>
           </tr>
           <tr>
           <td>姓名：</td>
           <td><input type="text" name="studentName" value="<%=st.getStudentName()%>"/></td>
           </tr>
           <tr>
           <td>性别：</td>
           <td><input type="text" name="studentSex" value="<%=st.getStudentSex()%>"/></td>
           </tr>
           <tr>
           <td>年龄：</td>
           <td><input type="text" name="studentAge" value="<%=st.getStudentAge()%>"/></td>
           </tr>
           <tr>
           <td>体重(公斤)：</td>
           <td><input type="text" name="studentWeight" value="<%=st.getStudentWeight()%>"/></td>
           </tr>
           <tr><td colspan="2" align="center"><input type="submit" value="提交"></td></tr>
           </table>
           </form>
           </center>
