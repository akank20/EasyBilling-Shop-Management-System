<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'AddItems.jsp' starting page</title>
    
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
  <h1><center><b><u><font color="#0000a0">Easy Billing</font></u></b></h1>
   <center><img src="images/logo2.jpg" width="547" height="246"><br>
	<hr width="100%" size="3" noshade />
	<h2><center><b><u><font color="#0000a0">Add Items</font></u></b></h2>
	<form action="servlet/AddItems" method="post">
	Enter Product Id:<input type="text" name="pid"><br><br>
	Enter Product Name:<input type="text" name="pname"><br><br>
	Enter Quantity:<input type="text" name="qty"><br><br>
	Enter Purchase Price:<input type="text" name="purprice"><br><br>
	Enter Sales Price:<input type="text" name="sprice"><br><br>
	<input type="submit" value="Add>>">
	 </form>
  </body>
</html>
