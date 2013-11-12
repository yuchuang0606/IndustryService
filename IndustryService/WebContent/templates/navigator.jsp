<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./css/navigator.css" type="text/css"/>
<script type="text/javascript" src="./js/navigator.js"></script>
<div class="navigator">
	<div class="navicontent">
	<ul id="sddm">
		<li><a href="#">首页</a>
		</li>
		<li><a href="#" onmouseover="mopen('m1')" onmouseout="mclosetime()">新闻公告</a>
			<div id="m1" onmouseover="mcancelclosetime()" onmouseout="mclosetime()">
			<a href="#">新闻</a>
			<a href="#">公告</a>
			</div>
		</li>
		<li><a href="#">CAD在线服务</a>
		</li>
		<li><a href="#">软件下载</a>
		</li>
		<li><a href="#">在线视频</a>
		</li>
		<li><a href="#">联系我们</a>
		</li>
	</ul>
	<div style="clear:both"></div>
	</div>
</div>