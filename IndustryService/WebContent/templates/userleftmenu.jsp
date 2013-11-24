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
			<a href="#">我的账户</a>
		</li>
		<li class="li_out">
			<a href="#">账户信息</a>
		</li>
		<li class="li_inner">
			<a href="#" >个人信息</a>
		</li>
		<li class="li_inner">
			<a href="#" >在线CAD服务卡</a>
		</li>
		<li class="li_inner">
			<a href="#" >授权证书</a>
		</li>
		<li class="li_out">
			<a href="#">订单管理</a>
		</li>
		<li class="li_inner">
			<a href="#" >订单管理</a>
		</li>
		<li class="li_out">
			<a href="#">资源管理</a>
		</li>
		<li class="li_inner">
			<a href="#" >上传资源</a>
		</li>
		<li class="li_inner">
			<a href="#" >我的上传</a>
		</li>
		<li class="li_inner">
			<a href="#" >我的下载</a>
		</li> 
		<li class="li_inner">
			<a href="#" >我的收藏</a>
		</li>
		<li class="li_inner">
			<a href="#" >我的报名</a>
		</li>
	</ul>
</div>