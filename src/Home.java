import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Home extends HttpServlet {

	/**
	 * Constructor of the object.
	 */
	public Home() {
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
		String user=request.getParameter("username");
		String passwd=request.getParameter("password");
		try{
			java.sql.Connection conn;
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop", "root", "root");
			Statement stmt;
			stmt=conn.createStatement();
			String validate="select password from login where username='"+user+"'";
			if(passwd.equals(validate))
			{
				RequestDispatcher rd=request.getRequestDispatcher("/list.jsp");
				rd.forward(request, response);
			}
			else
			{
				out.println("You are not a valid user.Please enter correct usernmae or password");
				RequestDispatcher rd=request.getRequestDispatcher("/start.jsp");
				rd.forward(request, response);
			}
		}
		catch (Exception e) {
			out.println("Exception has occured");
			RequestDispatcher rd=request.getRequestDispatcher("/Home.java");// TODO: handle exception
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
