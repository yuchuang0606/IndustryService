<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./css/navigator.css" type="text/css"/>
<script type="text/javascript" src="./js/navigator.js"></script>
<div class="navigator">
	<div class="navicontent">
	<ul id="sddm">
		<li><a href="index.jsp">首页</a>
		</li>
		<li><a href="#" onmouseover="mopen('m1')" onmouseout="mclosetime()">软件服务</a>
			<div id="m1" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
			<a href="./ConfigHandler?configname=2dCAD">二维CAD</a>
			<a href="./ConfigHandler?configname=3dCAD">三维CAD</a>
			<a href="./ConfigHandler?configname=5CAM">五轴CAD</a>
			</div>
		</li>
		<li><a href="#">资源下载</a>
		</li>
		<li><a href="softlist.jsp">人才服务</a>
		<li><a href="#">社区交流</a>
		</li>
		<li><a href="#" onmouseover="mopen('m2')" onmouseout="mclosetime()">新闻通知</a>
			<div id="m2" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
			<a href="#">新闻</a>
			<a href="#">通知</a>
			</div>
		</li>
		<li><a href="softlist.jsp">政策法规</a>
		<li><a href="#">联系我们</a>
		</li>
	</ul>
	<div style="clear:both"></div>
	</div>
</div>