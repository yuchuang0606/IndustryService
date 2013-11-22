<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./css/header.css" type="text/css" />
<script>
function AddFavorite(title, url) {
	try {
		window.external.addFavorite(url, title);
	}
	catch (e) {
		try {
			window.sidebar.addPanel(title, url, "");
		}
		catch (e) {
			alert("抱歉，您所使用的浏览器无法完成此操作。\n\n加入收藏失败，请使用Ctrl+D进行添加");
		}
	}
}
</script>
<div class="header">
	<div class="headcontent">
		<div class="contentleft">
			<a  onClick="AddFavorite('http://dl.caxa.com','大连工业设计服务平台')" href="#">收藏本站</a>
		<!--  	<span class="pipe">|</span>
			<a href="http://www.caxa.com">CAXA首页</a>-->
		</div>
		<!--  
		<div class="contentright">
			<span class="pipe">|</span>
			<a href="#">注册</a>
		</div>
		-->
	</div>
</div>