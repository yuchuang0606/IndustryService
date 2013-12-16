<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.*" %>
<%
	User u = (User)request.getSession().getAttribute("user");
%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css" type="text/css" />
<script>
function AddFavorite(title, url) {
	try {
		window.external.addFavorite(url, title);
	}
	catch (e) {
		try {
			window.sidebar.addPanel(title, url, "");
		}
		catch (e) {
			alert("抱歉，您所使用的浏览器无法完成此操作。\n\n加入收藏失败，请使用Ctrl+D进行添加");
		}
	}
}
</script>
<div class="header">
	<div class="headcontent">
		<div class="contentleft">
		<% if (null == u) {%>
			<span><a href="<%=request.getContextPath() %>/index.jsp">登录</a></span>
			<span class="pipe">|</span>
			<span><a  onClick="AddFavorite('http://dl.caxa.com','大连工业设计服务平台')" href="#">收藏本站</a></span>
		<!--  	<span class="pipe">|</span>
			<a href="http://www.caxa.com">CAXA首页</a>-->
		<%} else if (u.getUsergroup() == 1){ %>
			<span><a href="<%=request.getContextPath() %>/logout">退出</a></span>
			<span class="pipe">|</span>
			<span><a href="<%=request.getContextPath() %>/admin/index.jsp">管理中心</a></span>
			<span class="pipe">|</span>
			<span><a href="<%=request.getContextPath() %>/user/user.jsp">用户中心</a></span>
			<span class="pipe">|</span>
			<span><%=u.getUsername()%>管理员，欢迎您</span>
		<%} else { %>
			<span><a href="<%=request.getContextPath() %>/logout">退出</a></span>
			<span class="pipe">|</span>
			<span><a href="<%=request.getContextPath() %>/user/authcert.jsp">授权证书</a></span>
			<span class="pipe">|</span>
			<span><a href="#">CAD服务卡</a></span>
			<span class="pipe">|</span>
			<span><a href="<%=request.getContextPath() %>/user/user.jsp">用户中心</a></span>
			<span class="pipe">|</span>
			<span><%=u.getUsername()%>，欢迎您</span>
		<%} %>
		</div>
		<!--  
		<div class="contentright">
			<span class="pipe">|</span>
			<a href="#">注册</a>
		</div>
		-->
	</div>
</div>