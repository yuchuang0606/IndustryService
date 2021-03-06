<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/image/small.gif" type="image/x-icon" />
<link rel="stylesheet" href="./css/introduce.css" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/location.css" type="text/css" />
<title>大连工业设计服务平台</title>
</head>
<body>
	<%@ include file="/templates/header.jsp" %>
	<%@ include file="/templates/logo.jsp" %>
	<%@ include file="/templates/navigator.jsp" %>
	<div class="location">
		<div class="loccontent">
			<span style="font-size:14px;color:#3C3C3C">您当前位置：</span>
			<img src="<%=request.getContextPath() %>/image/house.png" width="15" height="15"></img>
			<span style="font-size:14px;color:#3C3C3C">
			<a href="<%=request.getContextPath() %>/index.jsp">首页</a> 》 建设
			</span>
		</div>
	</div>
	<div id="main" class="main">
		<%@ include file="/templates/leftmenu.jsp"%>
		<div id="content" class="content">
			<div class="title" style="height:auto;width:100%;line-height:30px;margin:10px auto;text-align:center;">
	        	<span style="font-size:20px;text-align:center;font-weight:bold;">正在建设中</span><br/>
	        </div>
	    </div>
	</div>
	<%@ include file="/templates/footer.jsp" %>
</body>
<script type="text/javascript">
	document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
</script>
</html>
