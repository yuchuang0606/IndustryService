<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/leftmenu.css" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.2.6.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/ui.core.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.scroll-follow.js"></script>
<script type="text/javascript">
	$( document ).ready( function ()
	{
		$( '#sidebar' ).scrollFollow();
	}
);
</script>
<div id="sidebar" class="sidebar" style="top:0px;">
	<ul>
		<li class="li_out">
			<a href="<%=request.getContextPath() %>/index.jsp">首页</a>
		</li>
		<li class="li_out">
			<a href="<%=request.getContextPath() %>/softlist.jsp">资源下载</a>
		</li>
		<li class="li_inner">
			<a href="resource?type=software&orderby=createtime&page=1&rp=10">软件下载</a>
		</li>
		<li class="li_inner">
			<a href="resource?type=video&orderby=createtime&page=1&rp=10">在线视频</a>
		</li>
		<li class="li_out">
			<a href="#">软件服务</a>
		</li>
		<li class="li_inner">
			<a href="<%=request.getContextPath() %>/config?configname=2dCAD" >CAXA 2d套餐</a>
		</li>
		<li class="li_inner">
			<a href="<%=request.getContextPath() %>/config?configname=3dCAD" >CAXA 3d套餐</a>
		</li>
		<li class="li_inner">
			<a href="<%=request.getContextPath() %>/config?configname=5CAM" >CAXA管理套餐</a>
		</li>
		<li class="li_inner">
			<a href="<%=request.getContextPath() %>/service.jsp" >服务流程</a>
		</li>
		<li class="li_out">
			<a href="#">信息中心</a>
		</li>
		<li class="li_inner">
			<a href="<%=request.getContextPath() %>/news?type=news&page=1&rp=10" >新闻</a>
		</li>
		<li class="li_inner">
			<a href="<%=request.getContextPath() %>/news?type=notice&page=1&rp=10" >通知</a>
		</li>
		<li class="li_out">
			<a href="http://top.caxa.com">社区交流</a>
		</li>
		<li class="li_out">
			<a href="<%=request.getContextPath() %>/build.jsp">政策法规</a>
		</li>
		<li class="li_out">
			<a href="<%=request.getContextPath() %>/build.jsp">人才服务</a>
		</li>
	</ul>
</div>