<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'details.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body bgcolor=aliceblue>
    <h2><center><font color="#400080"><u>Easy Billing</u></font></h2>
   <center>
   <form action="servlet/getdetails" method="post">
   Name:<input type="text" name="name"><br/><br>
   ShopName:<input type="text" name="shopname"><br><br>
   email:<input type="text" name="email"><br><br>
   PhoneNumber:<input type="text" name="phone"><br><br>
   Address:<input type="text" name="address"><br><br>
   Password:<input type="text" name="password"><br><br>
   <input type="submit" value="Submit">
   </form>
  </body>
</html>
