package bean;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import bean.DBLogic;
public class InsertProduct 
{
	String QUERY;
	Connection CONN;
	Statement ST;
	ResultSet RS;
	PreparedStatement PSTMT;
	String LOADDRIVER="com.mysql.jdbc.Driver";
	String CONNSTRIG = "jdbc:mysql://localhost:3306/shop";
	String DBUSER = "root";
	String DBPWD = "root";
	
	public void insertIteamintoProduct(int c1,String c2,int c3,int c4,int c5) throws ClassNotFoundException, SQLException
	{
		DBLogic db = new DBLogic();
		CONN = db.checkConnectionValue();
		QUERY = "INSERT INTO ITEMDETAILS VALUES(?,?,?,?,?) ";
		PSTMT = CONN.prepareStatement(QUERY);
		PSTMT.setInt(1,c1);
		PSTMT.setString(2, c2);
		PSTMT.setInt(3,c3);
		PSTMT.setInt(4,c4);
		PSTMT.setInt(5,c5);
		PSTMT.executeUpdate();
		System.out.println("Done:::");
		
	}
	
	
	
	
	
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		InsertProduct pd=new InsertProduct();
		pd.insertIteamintoProduct(1, "A", 2, 3, 4);
		System.out.println("Done:::");
		
	}

}
