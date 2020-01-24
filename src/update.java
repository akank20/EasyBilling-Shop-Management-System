import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.jdbc.PreparedStatement;


public class update extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public update() {
		super();
	}

	/**
	 * Destruction of the servlet. <br>
	 */
	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		out.flush();
		out.close();
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String code=request.getParameter("icode");
		int pcode=Integer.parseInt(code);
		String chname=request.getParameter("iname");
		String pprice=request.getParameter("ippr");
		int ippr=Integer.parseInt(pprice); 
		String sprice=request.getParameter("ispr");
		int ispr=Integer.parseInt(sprice); 
		String qty=request.getParameter("iqty");
		int pqty=Integer.parseInt(qty); 
		try {
			
				Connection conn;
				ResultSet rs;
				PreparedStatement pstmt;
				Statement stmt;
				String query; 
				DriverManager.registerDriver(new com.mysql.jdbc.Driver());
				conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop","root", "root");
				stmt=conn.createStatement();
				out.println("1");
				//pstmt=(PreparedStatement) conn.prepareStatement("update itemdetails set itemname=? where code=?");
				//pstmt.setString(1, chname);
				//pstmt.setInt(2, pcode);
				//query="update itemdetails set itemname='"+chname+"' where code=pcode";
				//int i=pstmt.executeUpdate();
				out.println("2");
			//	System.out.println("record updated"+i);
				RequestDispatcher rd=request.getRequestDispatcher("/view.jsp");
				rd.include(request,response);
		} catch (Exception e) {
			out.println("Something went wrong");// TODO: handle exception
		}
		out.flush();
		out.close();
	}

	/**
	 * Initialization of the servlet. <br>
	 *
	 * @throws ServletException if an error occurs
	 */
	public void init() throws ServletException {
		// Put your code here
	}

}
