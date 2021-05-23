package com.cn;
import java.sql.*;

public class DBConnection {
 private static final String CLASSDRIVER="com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String URL="jdbc:sqlserver://localhost:1433;databasename=Students";
    private static final String USERNAME="sa";
    private static final String PASSWORD="123456";
  /* 
    private static final String CLASSDRIVER="com.mysql.jdbc.Driver";
    private static final String URL="jdbc:mysql://localhost:3306/Students";
    private static final String USERNAME="root";
    private static final String PASSWORD="123456";
     */
    //加载驱动
    static{
    	try {
			Class.forName(CLASSDRIVER);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    //获取连接
    public static Connection getConn(){
    	Connection conn=null;
    	try {
			conn=DriverManager.getConnection(URL,USERNAME,PASSWORD);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return conn;
    }
    
    //关闭连接
    public static void close(ResultSet rs,PreparedStatement ps,Connection conn){
			try {
			  if(rs!=null)
				   rs.close();
			  if(ps!=null)
				   ps.close();
			  if(conn!=null)
				   conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
    }
}
