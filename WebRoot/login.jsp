<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>

<head>

  <meta charset="UTF-8">

  <title>Easy Billing</title>

    <link rel="stylesheet" href="css/style.css">

</head>

<body>

  <html lang="en-US">
  <head>

    <meta charset="utf-8">
	<link rel="stylesheet" type="text/css" href="style.css" />
    <title>Login</title>

    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,700">

    <!--[if lt IE 9]>
  <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
 <![endif]-->

  </head>

  <body bgcolor="lightgrey">
<h1><center><font color="#ff80ff"><b><u>Easy Billing</font></h1><br>
	<center><img src="images/logo2.jpg" width="844" height="503"><br><br>
    <div class="container">

      <div id="login">

        <form action="servlet/Login" method="post">

          <fieldset class="clearfix">

            <p><font color="#ff80ff"><span class="fontawesome-user"></span><input type="text" name="username" value="Username" onblur="if(this.value == '') this.value = 'Username'" onfocus="if(this.value == 'Username') this.value = ''" required=""></font></p> <!-- JS because of IE support; better: placeholder="Username" -->
            <p><font color="#ff80ff"><span class="fontawesome-lock"></span><input type="password" name="password" value="Password" onblur="if(this.value == '') this.value = 'Password'" onfocus="if(this.value == 'Password') this.value = ''" required=""></font></p> <!-- JS because of IE support; better: placeholder="Password" -->
            <p><input type="submit" value="Sign In"></p>

          </fieldset>

        </form>

        <p>Not a member? <a href="Register.jsp">Sign up now</a><span class="fontawesome-arrow-right"></span></p>

      </div> <!-- end login -->

    </div>

  </body>
</html>

</body>

</html>