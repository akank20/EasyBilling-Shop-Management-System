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
    
    <title>My JSP 'Delete.jsp' starting page</title>
    
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
   <h2><center><u><font color="#0000a0">Easy Billing</font></u></h2> <br>
  <center> <img src="images/logo2.jpg" style="width: 550px; height: 317px;"><br>
  <hr width="100%" size="3" noshade />
  
  <div align="center">
<table border="2" bordercolor="#336699" cellpadding="1" cellspacing="2" width="100%" bgcolor=white>
<tr>
<th>Item Code</th>
<th>Item Name</th>
<th>Purchase_Price</th>
<th>Sales_Price</th>
<th>Available_Qty</th>
</tr>
<% try{

Connection conn;
ResultSet rs;
Statement stmt;
String query; 
DriverManager.registerDriver(new com.mysql.jdbc.Driver());
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/shop","root", "root");
stmt= conn.createStatement();
query="select * from itemdetails";
rs=stmt.executeQuery(query);
while(rs.next())
{	%><tr>
	<td><%String code=rs.getString(1);
	out.println(code);%></td>
	<td><%String name=rs.getString(2);
	out.println(name);%></td>
	<td><%String pprice=rs.getString(3);
	out.println(pprice);%></td>
	<td><%String sprice=rs.getString(4);
	out.println(sprice);%></td>
	<td><%String qty=rs.getString(5);
	out.println(qty);%></td>
	<%
}			
}
catch(Exception e){
}%>
</table>
</div>
<form action="servlet/DeleteItem">
  Enter Item to be deleted:<select name="ditem">
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
	</select><br>
  <input type="submit" value="Delete">
  </form>  
 
  </body>
</html>
