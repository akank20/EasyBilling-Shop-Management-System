<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'list.jsp' starting page</title>
    
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
   <form action="stock.jsp">
  <center> Manage Stocks: <input type="submit" value=">>">
   </form><br><br>
   <form action="sales.jsp"> 
   <center>Sale Items: <input type="submit" value=">>">
   </form><br><br>
   <form action="report.jsp">
   <center>Generate Reports:<input type="submit" value=">>">
   </form>
  </body>
</html>
