<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*,java.text.SimpleDateFormat" %>
<%
	String type = (String)request.getAttribute("type");
	//String restype = "";
	List<Resource> resList = (List<Resource>)request.getAttribute("resList");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/slist.css" type="text/css" />
<title>大连工业设计服务平台</title>
</head>
<body>
	<%@ include file="/templates/header.jsp" %>
	<%@ include file="/templates/logo.jsp" %>
	<%@ include file="/templates/navigator.jsp" %>
	<%@ include file="/templates/location.jsp" %>
	<div id="main" class="main" onload="chdefault()">
		<%@ include file="/templates/leftmenu.jsp"%>
		<div id="content" class="content">
			<div class="divtitle" style="background-color:#f5f5f5;">
				<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">搜索结果</span>
			</div>
			<div style="padding:0 5px;">
				<div class="listinfo">
					<% for (Resource res:resList) {
							String author = ((new UserControl()).getUser(res.getAuthorid())).getUsername();
							String createtime = new SimpleDateFormat("yyyy/MM/dd").format(res.getCreatetime());
					%>
					<div class="softinfo">
						<div class="softimage">
					    	<a href="video.jsp?id=<%=res.getResourceid()%>">
					    	<img src="./image/cad2d.png" height="60" width="60" style="border-width:0px;"></img></a>
					    </div>
					    <div class="softdetail">
			    			<span>名称：<a href="video.jsp?id=<%=res.getResourceid()%>"><%=res.getTitle() %></a></span><br/>
			    			<span>标签：<%=res.getTag() %></span><br/>
			    			<span>作者：<a href="#" title="<%=author%>"><%=author%></a>&nbsp;&nbsp;</span>
			    			<span>时间：<%=createtime %></span>
			    		</div>
			    		<div class="softext">
			    			<span>浏览：<%=res.getViewtimes() %></span><br/>
			    			<span>下载：<%=res.getDownloadtimes() %></span><br/>
			    			<span>大小：<%=res.getSize() %>M</span>
			    		</div>
			    		<div class="softhandle">
			    			<!-- <span><a href="#"><img src="./image/sc.jpg" style="height:21px;width:57px;margin-top:10px;border-width:0px;"></img></a></span> -->
			    			<span><a href="video.jsp?id=<%=res.getResourceid()%>"><img src="./image/download.jpg" style="height:21px;width:57px;margin-top:5px;border-width:0px;"></img></a></span>
			    		</div>
					</div>
					<%} %>
				</div>
			</div>
		<script type="text/javascript">
			document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
		</script>
		</div>
	</div>
	<%@ include file="/templates/footer.jsp" %>
</body>
</html>