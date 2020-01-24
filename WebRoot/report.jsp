<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'report.jsp' starting page</title>
    
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
  <center> <img src="images/rep.jpg" width="506" height="181"><br></center>
 <form action="adminreport.jsp">
 <div style="border-color: blue" >
 <br>
 <br>
 <center><b><i><font color=green>
 UserName:<input type="text" value="admin" disabled><br><br>
 Password: <input type="password" name="password" required=""><br><br>
 <input type="submit" value="LOGIN">
 </center>
 </div>
 </form>
  </body>
</html>
