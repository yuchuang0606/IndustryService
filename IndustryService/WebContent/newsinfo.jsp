<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*,java.text.SimpleDateFormat" %>
<%
	String type = request.getParameter("type");
	String newsid = request.getParameter("newsid");
	UserControl uc = new UserControl();
	NewsControl nc = new NewsControl();
	NotificationControl nfc = new NotificationControl();
	String title = "";
	String author = "";
	String modifytime = "";
	int accesstime = 0;
	String content = "";
	if ("news".equals(type))
	{
		News news = (nc.listNews("newsid", newsid)).get(0);
		title = news.getTitle();
		modifytime = new SimpleDateFormat("yyyy-MM-dd").format(news.getModifytime());
		accesstime = news.getAccesstime();
		news.setAccesstime(accesstime+1);
		nc.updateNews(news);
		accesstime++;
		int userid = news.getAuthor();
		User user = (uc.listUser("userid", String.valueOf(userid))).get(0);
		author = user.getUsername();
		content = news.getContent();
	}
	if ("notice".equals(type))
	{
		Notification notice = (nfc.listNotification("newsid", newsid)).get(0);
		title = notice.getTitle();
		modifytime = new SimpleDateFormat("yyyy-MM-dd").format(notice.getModifytime());
		accesstime = notice.getAccesstime();
		notice.setAccesstime(accesstime+1);
		nfc.updateNotification(notice);
		accesstime++;
		int userid = notice.getAuthor();
		User user = (uc.listUser("userid", String.valueOf(userid))).get(0);
		author = user.getUsername();
		content = notice.getContent();
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="./image/c.png" type="image/x-icon" />
<link rel="stylesheet" href="./css/introduce.css" type="text/css" />
<title>大连工业设计服务平台</title>
</head>
<body>
	<%@ include file="/templates/header.jsp" %>
	<%@ include file="/templates/logo.jsp" %>
	<%@ include file="/templates/navigator.jsp" %>
	<%@ include file="/templates/location.jsp" %>
	<div id="main" class="main">
		<%@ include file="/templates/leftmenu.jsp"%>
		<div id="content" class="content">
			<div class="title" style="height:auto;width:100%;line-height:30px;margin:10px auto;text-align:center;">
	        	<span style="font-size:20px;text-align:center;font-weight:bold;"><%=title %></span><br/>
	        	<div style="height:30px;background:#F5F5F5">
		        	<span style="font-size:13px;color:#3c3c3c;">作者：<%=author %></span>
		        	<span style="margin-left:20px;font-size:13px;color:#3c3c3c;">发表时间：<%=modifytime %></span>
		        	<span style="margin-left:20px;font-size:13px;color:#3c3c3c;">关注度：<%=accesstime %></span>
	        	</div>
	        </div>
			<div style="padding:0 10px;"><%=content %></div>
	    </div>
	</div>
	<%@ include file="/templates/footer.jsp" %>
</body>
<script type="text/javascript">
	document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
</script>
</html>
