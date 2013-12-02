<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="model.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="./image/c.png" type="image/x-icon" />
<link rel="stylesheet" href="./css/introduce.css" type="text/css" />
<title>大连工业设计服务平台</title>
</head>
<%
	String configname = (String)request.getAttribute("configname");
	String condition = (String)request.getAttribute("condition");
%>
<body>
	<%@ include file="/templates/header.jsp" %>
	<%@ include file="/templates/logo.jsp" %>
	<%@ include file="/templates/navigator.jsp" %>
	<%@ include file="/templates/location.jsp" %>
	<div id="main" class="main">
		<%@ include file="/user/userleftmenu.jsp"%>
		<div id="content" class="content">
			<div class="title" style="height:36px;width:100%;line-height:36px;margin:0px auto;text-align:center;background-color:#f5f5f5">
	        	<span style="font-size:18px;"><strong><%=configname%></strong></span>
	        </div>
			<div style="padding:0 10px;">
	            <div class="p"><%=condition%></div>
	        </div>
	    </div>
	</div>
	<script type="text/javascript">
		document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
	</script>
	<%@ include file="/templates/footer.jsp" %>
</body>
</html>