package com.tcs.dbutil;


import java.sql.*;

	public class DBConnection
	{
		private static final String drivername="oracle.jdbc.driver.OracleDriver";
		private static final String username="SYSTEM";
		private static final String password="John_1992";
		private static final String url="jdbc:oracle:thin:@localhost:1521:orcl1";

	public static Connection getConnection() throws SQLException
	{
		Connection con=null;
		
		try
		{
			Class.forName(drivername);
			con=DriverManager.getConnection(url,username,password);
			}
		catch(ClassNotFoundException e)
		{
			e.printStackTrace();
		}
		return con;
	}
	public static void closeConnection(Connection con)
	{
		if(con!=null)
		{
			try
			{
					con.close();
			}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
		}
	}
	}





