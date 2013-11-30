<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/navigator.css" type="text/css"/>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/navigator.js"></script>
<div class="navigator">
	<div class="navicontent">
	<ul id="sddm">
		<li><a href="index.jsp">首页</a>
		</li>
		<li><a href="#" onmouseover="mopen('m1')" onmouseout="mclosetime()">软件服务</a>
			<div id="m1" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
			<a href="<%=request.getContextPath() %>/config?configname=2dCAD">CAXA 2D套餐</a>
			<a href="<%=request.getContextPath() %>/config?configname=3dCAD">CAXA 3D套餐</a>
			<a href="<%=request.getContextPath() %>/config?configname=5CAM">CAXA管理套餐</a>
			</div>
		</li>
		<li><a href="#" onmouseover="mopen('m2')" onmouseout="mclosetime()">资源下载</a>
			<div id="m2" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
			<a href="<%=request.getContextPath() %>/resource?type=software&orderby=createtime&page=1&rp=10">软件下载</a>
			<a href="<%=request.getContextPath() %>/resource?type=video&orderby=createtime&page=1&rp=10">在线视频</a>
			</div>
		</li>
		<li><a href="#">人才服务</a>
		<li><a href="#">社区交流</a>
		</li>
		<li><a href="#" onmouseover="mopen('m3')" onmouseout="mclosetime()">新闻通知</a>
			<div id="m3" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
			<a href="<%=request.getContextPath() %>/news?type=news&page=1&rp=10">新闻</a>
			<a href="<%=request.getContextPath() %>/news?type=notice&page=1&rp=10">通知</a>
			</div>
		</li>
		<li><a href="#">政策法规</a>
		<li><a href="#">联系我们</a>
		</li>
	</ul>
	<div style="clear:both"></div>
	</div>
</div>