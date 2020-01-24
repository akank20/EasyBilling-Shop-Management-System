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
    
    <title>My JSP 'adminreport.jsp' starting page</title>
    
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
  <center> <img src="images/report.jpg" width="519" height="211"><br>
  <hr width="100%" size="3" noshade />
  <h3><font color="#6d488c">Search Sales</font></h3>
  
  FROM::<input type="text" name="sdate"><br>
  TO::<input type="text" name="edate"><br><br>
  ITEM TYPE:<select name="item">
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
    <input type="submit" value="search">
    <hr width="100%" size="3" noshade /><br><br>
   <div align="center">
<table border="2" cellpadding="1" cellspacing="2" width="100%" bgcolor=white>
<tr>
<th>Sno.</th>
<th>Item Name</th>
<th>Sold Qty</th>
<th>Remaining Qty</th>
<th>Profit</th>
<th>Total SalePrice</th>
<th>Total PurchasePrice</th>
</tr>
<tr>
<td>1</td>
<td>parle</td>
<td>40</td>
<td>20</td>
<td>240</td>
<td>450</td>
<td>210</td>
</tr>
</table>
</div>
<input type="submit" value="close">
  </body>
</html>
