<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*,java.text.SimpleDateFormat" %>
<%
	User user = (User)request.getSession().getAttribute("user");
	String type = (String)request.getAttribute("type");
	String orderby = (String)request.getAttribute("orderby");
	Integer culPage = (Integer)request.getAttribute("culPage");
	Integer totalPage = (Integer)request.getAttribute("totalPage");
	String restype = "";
	List<Software> softList = null;
	List<Video> videoList = null;
	if ("software".equals(type))
	{
		restype = "软件列表";
		softList = (List<Software>)request.getAttribute("softList");
	}
	if ("video".equals(type))
	{
		restype = "视频列表";
		videoList = (List<Video>)request.getAttribute("videoList");
	}
%>
<link rel="stylesheet" href="./css/slist.css" type="text/css" />
<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript" src="./js/callback.js"></script>
<div id="main" class="main" onload="chdefault()">
	<%@ include file="/templates/leftmenu.jsp"%>
	<div id="content" class="content">
		<div class="divtitle" style="background-color:#f5f5f5;">
			<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;"><%=restype %></span>
		</div>
		<div style="padding:0 5px;">
		<div class="softtype">
			<span>产品类型：</span>
			<span style="background-color:#39F;color:#fff"><a href="#">全部</a></span>
			<span><a href="#">电子图板</a></span>
			<span><a href="#">实体设计</a></span>
			<span><a href="#">图文档</a></span>
		</div>
		<!--  
		<div class="searchsoft">
			<form>
				<span>产品搜索：</span>
				<input type="text" name="keyword" size="40" style="height:20px;margin-left:10px;"></input>
				<input type="submit" value="搜  索" id="submit" style="font-weight:bold"/><br>
				<span>搜索选项：</span>
				<span class="opspan"><input name="option" type="radio" value="titleandlabel" checked/>名称和标签 </span>
				<span class="opspan" style="margin-left:0px;"><input name="option" type="radio" value="title" />名称</span> 
				<span class="opspan"><input name="option" type="radio" value="label" />标签 </span> 
				<span class="opspan"><input name="option" type="radio" value="author" />作者</span>
			</form>
		</div>
		-->
		<div class="sortoption" >
			<span>排序方式：</span>
			<span>
			<%if ("createtime".equals(orderby)) {%>
				<font style="font-weight:bold;background-color:#39F;color:#fff">更新时间</font>
			<%} else {%><a href="resource?type=<%=type%>&orderby=createtime&page=1&rp=10">更新时间</a>
			<%} %>
			</span>
			<span>
			<%if ("downloadtimes".equals(orderby)) {%>
				<font style="font-weight:bold;background-color:#39F;color:#fff">下载次数</font>
			<%} else {%><a href="resource?type=<%=type%>&orderby=downloadtimes&page=1&rp=10">下载次数</a>
			<%} %>
			</span>
			<span>
			<%if ("viewtimes".equals(orderby)) {%>
				<font style="font-weight:bold;background-color:#39F;color:#fff">浏览次数</font>
			<%} else {%><a href="resource?type=<%=type%>&orderby=viewtimes&page=1&rp=10">浏览次数</a>
			<%} %>
			</span>
			<span style="float:right;height:36px;line-height:36px;margin:0px 10px;">
				<span>每页显示条数：</span>
				<select id="s" name="selection" style="height:20px;">
					<option value ="10">10</option>
					<option value ="20">20</option>
					<option value ="40">40</option>
				</select>
			</span>
		</div>
		<div class="listinfo">
			<% if ("software".equals(type)) {
				for (Software soft:softList) 
				{
					String author = ((new UserControl()).getUser(soft.getAuthorid())).getUsername();
					String createtime = new SimpleDateFormat("yyyy/MM/dd").format(soft.getCreatetime());
				%>
			<div class="softinfo">
				<div class="softimage">
			    	<a href="software.jsp?id=<%=soft.getSoftwareid()%>">
			    	<img src="<%=request.getContextPath() %><%=soft.getSoftpic() %>" height="60" width="60" style="border-width:0px;"></img></a>
			    </div>
			    <div class="softdetail">
	    			<span>名称：<a href="software.jsp?id=<%=soft.getSoftwareid()%>" title="<%=soft.getTitle() %>"><%=soft.getTitle() %></a></span><br/>
	    			<span>标签：<%=soft.getTag() %></span><br/>
	    			<span>作者：<a href="#" title=""><%=author %></a>&nbsp;&nbsp;</span>
	    			<span>时间：<%=createtime %></span>
	    		</div>
	    		<div class="softext">
	    			<span>浏览：<%=soft.getViewtimes() %></span><br/>
	    			<span>下载：<%=soft.getDownloadtimes() %></span><br/>
	    			<span>大小：<%=soft.getSize() %>M</span>
	    		</div>
	    		<div class="softhandle">
	    			<span><a href="#"><img src="./image/sc.jpg" style="height:21px;width:57px;margin-top:10px;border-width:0px;"></img></a></span>
	    			<span><a href="software.jsp?id=<%=soft.getSoftwareid()%>"><img src="./image/download.jpg" style="height:21px;width:57px;margin-top:5px;border-width:0px;"></img></a></span>
	    		</div>
			</div>
			<% } 
			} else if ("video".equals(type)) {
				for (Video video:videoList) {
					String author = ((new UserControl()).getUser(video.getAuthorid())).getUsername();
					String createtime = new SimpleDateFormat("yyyy/MM/dd").format(video.getCreatetime());
			%>
			<div class="softinfo">
				<div class="softimage">
			    	<a href="video.jsp?id=<%=video.getVideoid()%>">
			    	<img src="<%=request.getContextPath() %><%=video.getVideopic() %>" height="60" width="60" style="border-width:0px;"></img></a>
			    </div>
			    <div class="softdetail">
	    			<span>名称：<a href="video.jsp?id=<%=video.getVideoid()%>"><%=video.getTitle() %></a></span><br/>
	    			<span>标签：<%=video.getTag() %></span><br/>
	    			<span>作者：<a href="#" title="<%=author%>"><%=author%></a>&nbsp;&nbsp;</span>
	    			<span>时间：<%=createtime %></span>
	    		</div>
	    		<div class="softext">
	    			<span>浏览：<%=video.getViewtimes() %></span><br/>
	    			<span>下载：<%=video.getDownloadtimes() %></span><br/>
	    			<span>大小：<%=video.getSize() %>M</span>
	    		</div>
	    		<div class="softhandle">
	    			<span><a href="#"><img src="./image/sc.jpg" style="height:21px;width:57px;margin-top:10px;border-width:0px;"></img></a></span>
	    			<span><a href="video.jsp?id=<%=video.getVideoid()%>"><img src="./image/download.jpg" style="height:21px;width:57px;margin-top:5px;border-width:0px;"></img></a></span>
	    		</div>
			</div>
			<%} } %>
		</div>
		<div class="paging">
			<span>第<%=culPage %>页/共<%=totalPage %>页</span>
			<%if (culPage != 1) {%>
			<span><a href="./resource?type=<%=type%>&orderby=<%=orderby%>&page=1&rp=10">[首页]</a></span>
			<span><a href="./resource?type=<%=type%>&orderby=<%=orderby%>&page=<%=culPage-1%>&rp=10">[上一页]</a></span>
			<%}%>
			<%if (culPage != totalPage) {%>
			<span><a href="./resource?type=<%=type%>&orderby=<%=orderby%>&page=<%=culPage+1%>&rp=10">[下一页]</a></span>
			<span><a href="./resource?type=<%=type%>&orderby=<%=orderby%>&page=<%=totalPage%>&rp=10">[尾页]</a></span>
			<%} %>
		</div>
	</div>
	<script type="text/javascript">
		document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
	</script>
	</div>
</div>