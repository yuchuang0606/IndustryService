<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*,java.text.SimpleDateFormat" %>
<%
	String type = (String)request.getAttribute("type");
	String orderby = (String)request.getAttribute("orderby");
	Integer culPage = (Integer)request.getAttribute("culPage");
	Integer totalPage = (Integer)request.getAttribute("totalPage");
	List<Resource> reslist = (List<Resource>)request.getAttribute("reslist");
	System.out.println();
%>
<link rel="stylesheet" href="./css/slist.css" type="text/css" />
<script type="text/javascript" src="./js/jquery-1.10.2.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	$("#s").change(function(){
		var url = window.location.href;
		var index = url.indexOf("?");
		var urlbef = url.substring(0, index+1);
	    var paramStr = url.substring(url.indexOf("?") + 1);
	    var params = paramStr.split("&");
	    var type = null, orderby = null, page = null, rp = null;
	    for (var i = 0; i < params.length; i++)
	    {
	    	var p = params[i].split("=");
	    	if (p[0] == "type")
	    		type = p[1];
	    	else if (p[0] == "orderby")
	    		orderby = p[1];
	    	else if (p[0] == "page")
	    		page = p[1];
	    	else if (p[0] == "rp")
	    		rp = p[1];
	    }
	    var nrp = $("#s").val();
	    if (nrp != rp && null != type && null != orderby && null != page && null != rp)
	    {
	    	var urltemp = urlbef+"type={type}&orderby={orderby}&page={page}&rp={rp}";  
	        var url = urltemp.replace("{type}", type).replace("{orderby}", orderby).replace("{page}", page).replace("{rp}", nrp);
	        window.location.href = url;
	    } 
	});
});

window.onload=function()
{
	var url = window.location.href;
	var paramStr = url.substring(url.indexOf("?") + 1);
    var params = paramStr.split("&");
    var rp = null;
    for (var i = 0; i < params.length; i++)
    {
    	var p = params[i].split("=");
    	if (p[0] == "rp")
    		rp = p[1];
    }
    document.getElementById("s").value=rp;
}
</script>
<div id="main" class="main" onload="chdefault()">
	<%@ include file="/templates/leftmenu.jsp"%>
	<div id="content" class="content">
		<div class="divtitle" style="background-color:#f5f5f5;">
			<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">资源列表</span>
		</div>
		<div style="padding:0 5px;">
		<div class="softtype">
			<span>产品类型：</span>
			<span>
				<%if("1".equals(type)) {%>
				<font style="font-weight:bold;background-color:#39F;color:#fff">软件</font>
				<%} else {%>
			 	<a href="resource?type=1&orderby=createtime&page=1&rp=10">软件</a>
				<%} %>
			</span>
			<span>
				<%if("4".equals(type)) {%>
				<font style="font-weight:bold;background-color:#39F;color:#fff">模型</font>
				<%} else {%>
				<a href="resource?type=4&orderby=createtime&page=1&rp=10">模型</a>
				<%} %>
			</span>
			<span>
				<%if("3".equals(type)) {%>
				<font style="font-weight:bold;background-color:#39F;color:#fff">文档</font>
				<%} else {%>
				<a href="resource?type=3&orderby=createtime&page=1&rp=10">文档</a>
				<%} %>
			</span>
			<span>
				<%if("2".equals(type)) {%>
				<font style="font-weight:bold;background-color:#39F;color:#fff">视频</font>
				<%} else {%>
				<a href="resource?type=2&orderby=createtime&page=1&rp=10">视频</a>
				<%} %>
			</span>
		</div>
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
					<option value ="10" selected="selected">10</option>
					<option value ="20">20</option>
					<option value ="40">40</option>
				</select>
			</span>
		</div>
		<div class="listinfo">
		<%for (Resource res:reslist) 
			{
				UserControl uc = new UserControl();
				List<User> ulist = uc.listUser("userid", String.valueOf(res.getAuthorid()));
	        	String author = "";
	        	System.out.println(ulist.size());
	        	if (ulist.size() == 0)
	        		author = "未知";
	        	else
	        		author = (ulist.get(0)).getUsername();
				String createtime = new SimpleDateFormat("yyyy-MM-dd").format(res.getCreatetime());
			%>
			<div class="softinfo">
				<div class="softimage">
			    	<a href="software.jsp?type=<%=type %>>&id=<%=res.getResourceid()%>">
			    	<img src="<%=request.getContextPath() %><%=res.getRespic() %>" height="60" width="60" style="border-width:0px;"></img></a>
			    </div>
			    <div class="softdetail">
	    			<span>名称：<a href="resinfo.jsp?type=<%=type %>&id=<%=res.getResourceid()%>" title="<%=res.getTitle() %>"><%=res.getTitle() %></a></span><br/>
	    			<span>标签：<%=res.getTag() %></span><br/>
	    			<span>作者：<%=author %>&nbsp;&nbsp;</span>
	    			<span>大小：<%=res.getSize() %>M</span>
	    		</div>
	    		<div class="softext">
	    			<span>浏览：<%=res.getViewtimes() %></span><br/>
	    			<span>下载：<%=res.getDownloadtimes() %></span><br/>
	    			<span>时间：<%=createtime %></span>
	    		</div>
	    		<div class="softhandle">
	    			<!-- <span><a href="#"><img src="./image/sc.jpg" style="height:21px;width:57px;margin-top:10px;border-width:0px;"></img></a></span> -->
	    			<span><a href="resinfo.jsp?type=<%=type %>&id=<%=res.getResourceid()%>"><img src="./image/download.jpg" style="height:21px;width:57px;margin-top:15px;border-width:0px;"></img></a></span>
	    		</div>
			</div>
			<%} %>
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