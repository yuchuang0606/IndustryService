<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./css/navigator.css" type="text/css"/>
<script type="text/javascript" src="./js/navigator.js"></script>
<div class="navigator">
	<div class="navicontent">
	<ul id="sddm">
		<li><a href="index.jsp">首页</a>
		</li>
		<li><a href="#" onmouseover="mopen('m1')" onmouseout="mclosetime()">CAD介绍</a>
			<div id="m1" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
			<a href="./ConfigHandler?configname=2dCAD">二维CAD</a>
			<a href="./ConfigHandler?configname=3dCAD">三维CAD</a>
			<a href="./ConfigHandler?configname=5CAM">五轴CAD</a>
			</div>
		</li>
		<li><a href="#" onmouseover="mopen('m2')" onmouseout="mclosetime()">新闻公告</a>
			<div id="m2" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
			<a href="#">新闻</a>
			<a href="#">公告</a>
			</div>
		</li>
		<li><a href="softlist.jsp">软件下载</a>
		</li>
		<li><a href="#">在线视频</a>
		</li>
		<li><a href="#">服务流程</a>
		</li>
		<li><a href="#">联系我们</a>
		</li>
	</ul>
	<div style="clear:both"></div>
	</div>
</div>