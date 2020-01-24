package bean;
import java.sql.*;
public class DBLogic implements java.io.Serializable
{
	Connection CONN;
	Statement ST;
	ResultSet RS;
	PreparedStatement PSTMT;
	String LOADDRIVER="com.mysql.jdbc.Driver";
	String CONNSTRIG = "jdbc:mysql://localhost:3306/shop";
	String DBUSER = "root";
	String DBPWD = "root";
	
	public boolean checkConnection() throws ClassNotFoundException, SQLException
	{
		Class.forName(LOADDRIVER);
		CONN = DriverManager.getConnection(CONNSTRIG,DBUSER,DBPWD);
		return true;
		
	}
	public Connection checkConnectionValue()throws ClassNotFoundException, SQLException
	{
		Class.forName(LOADDRIVER);
		CONN = DriverManager.getConnection(CONNSTRIG,DBUSER,DBPWD);
		return CONN;
		
	}
	

}
