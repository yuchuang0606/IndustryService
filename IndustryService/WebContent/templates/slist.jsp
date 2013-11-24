<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*,java.text.SimpleDateFormat" %>
<%
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
	System.out.println("aaa");
%>
<link rel="stylesheet" href="./css/slist.css" type="text/css" />
<div id="main" class="main">
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
		<div class="sortoption">
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
				<select name="selection" style="height:20px">
					<option value ="op_10">10</option>
					<option value ="op_30">30</option>
					<option value ="op_50">50</option>
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
			    	<a href="softinfo.jsp?id=<%=soft.getSoftwareid()%>"><img src="<%=soft.getSoftpic() %>" height="60" width="60"></img></a>
			    </div>
			    <div class="softdetail">
	    			<span>名称：<a href="softinfo.jsp?id=<%=soft.getSoftwareid()%>" title="<%=soft.getTitle() %>"><%=soft.getTitle() %></a></span><br/>
	    			<span>标签：<%=soft.getTag() %></span><br/>
	    			<span>作者：<a href="#" title=""><%=author %></a>&nbsp;&nbsp;</span>
	    			<span>时间：<%=createtime %></span>
	    		</div>
	    		<div class="softext">
	    			<span>浏览：<%=soft.getViewtimes() %></span><br/>
	    			<span>下载：<%=soft.getDownloadtimes() %></span><br/>
	    			<span>大小：<%=soft.getSize() %>KB</span>
	    		</div>
	    		<div class="softhandle">
	    			<span><a href="#"><img src="./image/sc.jpg" style="height:21px;width:57px;margin-top:10px;"></img></a></span>
	    			<span><a href="softinfo.jsp?id=<%=soft.getSoftwareid()%>"><img src="./image/download.jpg" style="height:21px;width:57px;margin-top:5px;"></img></a></span>
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
			    	<a href="videoinfo.jsp?id=<%=video.getVideoid()%>"><img src="./image/cad2d.png" height="60" width="60"></img></a>
			    </div>
			    <div class="softdetail">
	    			<span>名称：<a href="videoinfo.jsp?id=<%=video.getVideoid()%>"><%=video.getTitle() %></a></span><br/>
	    			<span>标签：<%=video.getTag() %></span><br/>
	    			<span>作者：<a href="#" title="<%=author%>"><%=author%></a>&nbsp;&nbsp;</span>
	    			<span>时间：<%=createtime %></span>
	    		</div>
	    		<div class="softext">
	    			<span>浏览：<%=video.getOpentimes() %></span><br/>
	    			<span>下载：<%=video.getDownloadtimes() %></span><br/>
	    			<span>大小：<%=video.getVideosize() %>KB</span>
	    		</div>
	    		<div class="softhandle">
	    			<span><a href="#"><img src="./image/sc.jpg" style="height:21px;width:57px;margin-top:10px;"></img></a></span>
	    			<span><a href="videoinfo.jsp?id=<%=video.getVideoid()%>"><img src="./image/download.jpg" style="height:21px;width:57px;margin-top:5px;"></img></a></span>
	    		</div>
			</div>
			<%} } %>
			<!--
			<input type="button" id="btnTest" value="刷新" />
			<table id="myDataTable" class="display" cellpadding="0" cellspacing="0" border="0">
			    <thead>
			        <tr>
			            <th style="width:100px;" class="sorting_disabled">缩略图</th>
			            <th style="width:100px;" class="sorting_disabled">详细信息</th>
			            <th style="width:60px;" class="sorting_disabled">操作</th>
			        </tr>
			    </thead>
			    <tbody>
			    	<tr class="softinfo">
			    	<td>
			    		<div class="softimage">
			    			<img src="./image/cad2d.png" height="60" width="60"></img>
			    		</div>
			    	</td>
			    	<td>
			    		<div class="softdetail">
		    			<span>名称：<a href="#">变形金刚大黄蜂</a></span><br/>
		    			<span>标签：变形金刚 实体设计</span><br/>
		    			<span><a href="#" title="">作者：aaaaaaa</a>&nbsp;&nbsp;</span>
		    			<span>时间：2013/10/15</span>
		    			<span>金币：0</span>
		    			<span>浏览:434</span>
		    			<span>下载:20</span>
		    			</div>
			    	</td>
			    	<td>
			    		<div class="softhandle">
			    			<span><a href="#"><img src="./image/sc.jpg" style="height:21px;width:57px;margin-top:10px;"></img></a></span>
			    			<span><a href="#"><img src="./image/download.jpg" style="height:21px;width:57px;margin-top:5px;"></img></a></span>
			    		</div>
			    	</td>
			    	</tr>
			    </tbody>
			</table>
			 -->
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
	<!--
	<div class="slist_l">
		<div class="divtitle">
			<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">热门下载</span>
		</div>
		<div class="blockdiv">
			<ul class="texthidden">
				<li>
					<em class="num1"></em>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台">[平台公告] 祝贺诸城市工业设计服务平台</a>
				</li>
				<li>
					<em class="num2"></em>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
				<li>
					<em class="num3"></em>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
				<li>
					<em class="num4"></em>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
				<li>
					<span class="num5"></span>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
				<li>
					<span class="num6"></span>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
				<li>
					<span class="num7"></span>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
				<li>
					<span class="num8"></span>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
				<li>
					<span class="num9"></span>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
			</ul>
		</div>
	</div>
	 -->
</div>