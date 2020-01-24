import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AddItems extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public AddItems() {
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
		out
				.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">");
		out.println("<HTML>");
		out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
		out.println("  <BODY>");
		out.print("    This is ");
		out.print(this.getClass());
		out.println(", using the GET method");
		out.println("  </BODY>");
		out.println("</HTML>");
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
		String code=request.getParameter("pid");
		String prodname=request.getParameter("pname");
		String qty=request.getParameter("qty");
		int pqty=Integer.parseInt(qty); 
		String ppr=request.getParameter("purprice");
		int purprice=Integer.parseInt(ppr);
		String salprice=request.getParameter("sprice");
		int sprice=Integer.parseInt(salprice);
		try {
			Connection con;
			PreparedStatement pstmt;
			out.println("1");
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop", "root", "root");
			out.println("2");
			//stmt=con.createStatement();
			out.println("3");
			pstmt=con.prepareStatement("insert into itemdetails values(?,?,?,?,?)");
			out.println("4");
			pstmt.setString(1, code);
			out.println("5");
			pstmt.setString(2,prodname);
			pstmt.setInt(3,purprice);
			pstmt.setInt(4,sprice);
			pstmt.setInt(5, pqty);
			int i=pstmt.executeUpdate();
			out.println("5");
			out.println("Record Updated");
			RequestDispatcher rd=request.getRequestDispatcher("/stock.jsp");
			rd.forward(request, response);
		} 
		catch (Exception e) {
			// TODO: handle exception
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
