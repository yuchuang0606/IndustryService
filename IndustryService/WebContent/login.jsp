<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>大连市工业设计创新平台</title>
<link rel="shortcut icon" href="<%=request.getContextPath() %>/image/small.gif" type="image/x-icon" />
<link rel="stylesheet" href="./css/login.css">
</head>
<body>
<form class="login" onsubmit="" action="./auth">
    <h1>大连市工业云平台后台登陆系统</h1>
    <div align="center" style="top:200px;">
	    <font color="#FFFFFF" size="3">用户名</font><input type="text" name="un" class="login-input" placeholder="Username" autofocus>
	    <font color="#FFFFFF" size="3">密码</font><input type="password" name="pwd" class="login-input" placeholder="Password">
	    <input type="submit" value="Login" class="login-submit">
	    <!-- <p class="login-help"><a href="#">忘记密码?</a></p>  -->
    </div>
  </form>
</body>
</html>