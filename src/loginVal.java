import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.jdbc.PreparedStatement;


public class loginVal {
public static boolean validate(String uname,String pass)
{	boolean status=false;
	try {
		Connection con;
		PreparedStatement pstmt;
		DriverManager.registerDriver(new com.mysql.jdbc.Driver());
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop", "root", "root");
		pstmt=(PreparedStatement) con.prepareStatement("select * from userdetails where name=? and password=?");
		pstmt.setString(1, uname);
		pstmt.setString(2, "pass");
		ResultSet rs=pstmt.executeQuery();
		status=rs.next();
	} catch (Exception e) {
		// TODO: handle exception
	}
	return status;
	}
}
