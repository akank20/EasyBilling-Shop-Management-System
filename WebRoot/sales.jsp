<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'sales.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor="lightgrey">
   <h2><center><u><font color="#0000a0">Easy Billing</font></u></h2> 
  <center> <img src="images/billserve.jpg" style="width: 675px; height: 181px;"><br>
  <hr width="100%" size="3" noshade />
  <h2><u><font color=green>Start Billing<br><br>
  Select Items Purchased</u>
  </h2>
  <form action="Addinbill.jsp">
  Item Name:<select name="pitem">
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
	} %></option></select><br><br>
	<%
	String str=request.getParameter("pitem");
	query="select qty from itemdetails where itemname='"+str+"'";
	rs=stmt.executeQuery(query);
	
	while(rs.next()){
	}
	}
	catch(Exception e){}
	%>
Quantity:<input type="text" name="qty"><br><br>
<!-- Available Quantity: <input type="text" value=""><br><br> -->
Sales Price: <input type="text" name="price"><br><br>
<input type="submit" value="ADD"> 

 </form>

  </body>
</html>
