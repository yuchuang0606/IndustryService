<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./css/leftmenu.css" type="text/css" />
<script type="text/javascript" src="./js/jquery.js"></script>
<script type="text/javascript" src="./js/ui.core.js"></script>
<script type="text/javascript" src="./js/jquery.scroll-follow.js"></script>
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
			<a href="./index.jsp">首页</a>
		</li>
		<li class="li_out">
			<a href="#">信息中心</a>
		</li>
		<li class="li_inner">
			<a href="#" >新闻</a>
		</li>
		<li class="li_inner">
			<a href="#" >公告</a>
		</li>
		<li class="li_out">
			<a href="#">CAD介绍</a>
		</li>
		<li class="li_inner">
			<a href="./ConfigHandler?configname=2dCAD" >二维CAD</a>
		</li>
		<li class="li_inner">
			<a href="./ConfigHandler?configname=3dCAD" >三维CAD</a>
		</li>
		<li class="li_inner">
			<a href="./ConfigHandler?configname=5CAM" >五轴CAM</a>
		</li>
		<li class="li_out">
			<a href="./softlist.jsp">软件下载</a>
		</li>
		<li class="li_out">
			<a href="">视频下载</a>
		</li>
		<li class="li_out">
			<a href="">服务流程</a>
		</li>
		<li class="li_out">
			<a href="">联系我们</a>
		</li>
	</ul>
</div>