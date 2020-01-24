<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
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
    
    <title>My JSP 'Addinbill.jsp' starting page</title>
    
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
  <h2><u><font color=green>Start Billing</u></h2> <br>
  <div align="center">
 
<table border="2" bordercolor="#336699" cellpadding="1" cellspacing="2" width="100%" bgcolor=white>
<tr>
<th>Item Name</th>
<th>Qty</th>
<th>Price</th>

<th>Total Price</th>
</tr>
 <%	String iname=request.getParameter("pitem");
		String quan=request.getParameter("qty");
		int qty=Integer.parseInt(quan);
		String pri=request.getParameter("price");
		int rate=Integer.parseInt(pri);
		
		 %>
<tr>
<td bgcolor="#E6E6FA"><%out.println(iname); %></td>
<td bgcolor="#E6E6FA"><%out.println(qty); %></td>
<td bgcolor="#E6E6FA"><%out.println(rate); %></td>
<td bgcolor="#E6E6FA"><%int total=qty*rate;out.println(total); %></td>
</tr>

</table>
</div><br>
Total Amount:<input type="text" name="totprice" value="<%out.println(total);%>">
 <br><br>
 <form action="sales.jsp">
 <input type="submit" value="Add more items">
 </form>
 <form action="payment.jsp">
 
 <input type="submit" value="Save & Make Payment">
 </form>
  </body>
</html>
