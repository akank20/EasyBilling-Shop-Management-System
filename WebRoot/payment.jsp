<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'payment.jsp' starting page</title>
    
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
  <hr width="100%" size="3" noshade /><br>
  <center> <img src="images/bill.jpg" width="420" height="243"><br>
  <h2><u>Payment section</u></h2>
  Date:<%out.println(Calendar.getInstance().getTime()); %><br>
  	<%@ page import="java.util.Date" %>  
	Today is: <%= new Date() %>  <br/>
  
  Money Paid:<input type="text" name="payment">
  <br><br>
  <input type="submit" value="Paid"><br><br>
  <input type="submit" value="change given (if any)"/>
  <hr width="100%" size="3" noshade /><br>
  </body>
</html>
