<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'start.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor=Aliceblue>
  <h2><center><font color="#400080"><u>Easy Billing</u></font></h2>
     <br>
     <div align="center">
     <form action="servlet/Home" method="post"> 
    <center>User Name: <input type="text" name="username"><br><br><br>
     Password: <input type="password" name="password" maxlength="8"><br> <br>
     <input type="submit" value="Login"><br><br>
     <a href="details.jsp">New User</a> 
      
  </center></form></div></body>
</html>
