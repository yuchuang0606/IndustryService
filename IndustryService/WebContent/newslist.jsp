<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/image/small.gif" type="image/x-icon" />
<link rel="stylesheet" href="./css/newslist.css" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/location.css" type="text/css" />
<title>大连工业设计服务平台</title>
</head>
<% 
	String type = (String)request.getAttribute("type");
	Integer culPage = (Integer)request.getAttribute("culPage");
	Integer totalPage = (Integer)request.getAttribute("totalPage");
	String newstype = "";
	List<News> newsList = null;
	List<Notification> noticeList = null;
	if ("news".equals(type))
	{
		newstype = "新闻列表";
		newsList = (List<News>)request.getAttribute("newsList");
	}
	if ("notice".equals(type))
	{
		newstype = "通知列表";
		noticeList = (List<Notification>)request.getAttribute("noticeList");
	}
%>
<body>
	<%@ include file="/templates/header.jsp" %>
	<%@ include file="/templates/logo.jsp" %>
	<%@ include file="/templates/navigator.jsp" %>
	<div class="location">
		<div class="loccontent">
			<span style="font-size:14px;color:#3C3C3C">您当前位置：</span>
			<img src="<%=request.getContextPath() %>/image/house.png" width="15" height="15"></img>
			<span style="font-size:14px;color:#3C3C3C">
			<a href="<%=request.getContextPath() %>/index.jsp">首页</a> 》 <%=newstype %>
			</span>
		</div>
	</div>
	<div id="main" class="main">
		<%@ include file="/templates/leftmenu.jsp"%>
		<div id="content" class="content">
			<div class="title" style="height:36px;wclassth:100%;line-height:36px;margin:0px auto;text-align:center;background-color:#f5f5f5">
	        	<span style="font-size:16px;"><strong><%=newstype %></strong></span>
	        </div>
	        <div style="margin-top:10px;padding:0 10px;min-height:370px;">
	            <table class="newstable" wclassth="720px" border="0" cellpadding="0" cellspacing="0" align="left">
	            <%
	            if ("news".equals(type)) {
	            	for (News news:newsList) {
	            %>
	            	<tr>
	            		<td class="lefttd" align="left">
                        	<span><a href="newsinfo.jsp?type=news&newsid=<%=news.getNewsid() %>" title="<%=news.getTitle() %>" target="_blank"><%=news.getTitle() %></a></span>
                        </td>
	            		<td class="righttd" align="right">[<%=new SimpleDateFormat("yyyy-MM-dd").format(news.getModifytime()) %>]</td>
	            	</tr>
	            <% } 
	            }
	            else if ("notice".equals(type)) {
	            	for (Notification notice:noticeList) {
	            %>
	            	<tr>
	            		<td class="lefttd" align="left">
                        	<span><a href="newsinfo.jsp?type=notice&newsid=<%=notice.getNewsid() %>" title="<%=notice.getTitle() %>" target="_blank"><%=notice.getTitle() %></a></span>
                        </td>
	            		<td class="righttd" align="right">[<%=new SimpleDateFormat("yyyy-MM-dd").format(notice.getModifytime()) %>]</td>
	            	</tr>
	            <% } 
	            }%>
				</table>
	        </div>
	        <div class="paging">
				<span>第<%=culPage %>页/共<%=totalPage %>页</span>
				<%if (culPage != 1) {%>
				<span><a href="./news?type=<%=type%>&page=1&rp=10">[首页]</a></span>
				<span><a href="./news?type=<%=type%>&page=<%=culPage-1%>&rp=10">[上一页]</a></span>
				<%}%>
				<%if (culPage != totalPage) {%>
				<span><a href="./news?type=<%=type%>&page=<%=culPage+1%>&rp=10">[下一页]</a></span>
				<span><a href="./news?type=<%=type%>&page=<%=totalPage%>&rp=10">[尾页]</a></span>
				<%} %>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
	</script>
	<%@ include file="/templates/footer.jsp" %>
</body>
</html>