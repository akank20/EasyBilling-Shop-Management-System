<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'stock.jsp' starting page</title>
    
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
   <h2><center><b><u><font color="#0000a0">Easy Billing</h2> <br>
   <center><img src="images/logo2.jpg" width="623" height="260"><br>
	<hr width="100%" size="3" noshade />
	<ul id="menu">
			<li><a href="AddItems.jsp"><img src="images/addbut.png" alt="" width="110" height="32" /></a></li>
			<li><a href="Delete.jsp"><img src="images/delbut.png" alt="" width="110" height="32" /></a></li>
			<li><a href="Update.jsp"><img src="images/updbut.png" alt="" width="110" height="32" /></a></li>
			<li><a href="viewitems.jsp"><img src="images/viewbut.png" alt="" width="110" height="32" /></a></li>
		</ul>

  </body>
</html>
