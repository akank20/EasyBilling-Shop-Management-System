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
    
    <title>My JSP 'viewitems.jsp' starting page</title>
    
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
  <h2><center><b><u><font color="#0000a0">Easy Billing</u></b></h2>
   <center><img src="images/logo2.jpg" width="547" height="246"><br>
	<hr width="100%" size="3" noshade />
	<h2><b><u><font color="darkblue">Item Details</h2>
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

     <br>
  </body>
</html>
