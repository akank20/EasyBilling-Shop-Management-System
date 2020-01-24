<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Update.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor=lightgrey>
   <h2><center><b><u><font color="#0000a0">Easy Billing</font></u></b></h2> <br>
   <center><img src="images/logo2.jpg" width="623" height="260"><br>
	<hr width="100%" size="3" noshade />
	<form action="updateitem.jsp">
	Enter Item:<select name="itemnames">
	<%
	try{
	Connection conn;
	ResultSet rs;
	Statement stmt;
	String query; 
	DriverManager.registerDriver(new com.mysql.jdbc.Driver());
	conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop","root", "root");
	stmt=conn.createStatement();
	query="select pname from itemdetails";
	rs=stmt.executeQuery(query);
	while(rs.next())
	{
	%>
	<option>
	<%
		out.println(rs.getString(1));
	}
	}
	catch(Exception e){}
	 %></option>
	</select><br><br>
	<input type="submit" value="Update">
	</form>
</body>
</html>
