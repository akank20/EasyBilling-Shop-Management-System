<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ShopLogo.jsp' starting page</title>
    
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
   <h1><center><font color="#0000a0"><u><b>Easy Billing</b></u></font></h1><br>
  <marquee bgcolor="lightblue" loop="-1" scrollamount="5" width="100%"><font color="#0000a0"><u>Welcome to Easy Billing</u></font></marquee><br><br>
  <center><img src="images/logo2.jpg" width="836" height="247"><br>
  <form action="login.jsp">
 <center><input type="submit" value="Go>>">
  </body>
</html>
