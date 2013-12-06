<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="../css/leftmenu.css" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.2.6.js"></script>
<script type="text/javascript" src="../js/ui.core.js"></script>
<script type="text/javascript" src="../js/jquery.scroll-follow.js"></script>
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
			<a href="./setbuy.jsp">套餐购买</a>
		</li>
		<li class="li_inner">
			<a href="#" >2D套餐</a>
		</li>
		<li class="li_inner">
			<a href="#" >3D套餐</a>
		</li>
		<li class="li_inner">
			<a href="#" >5轴套餐</a>
		</li>
		<li class="li_out">
			<a href="./onlineserv.jsp">在线服务</a>
		</li>
		<li class="li_out">
			<a href="./link.jsp">友情链接</a>
		</li>
		<li class="li_out">
			<a href="./User.jsp">用户管理</a>
		</li>
		<li class="li_out">
			<a href="#">信息管理</a>
		</li>
		<li class="li_inner">
			<a href="./publish.jsp">信息发布</a>
		</li>
		<li class="li_inner">
			<a href="./news.jsp">新闻管理</a>
		</li>
		<li class="li_inner">
			<a href="./news.jsp">通知管理</a>
		</li>
		<li class="li_out">
			<a href="./software.jsp">软件管理</a>
		</li>
		<li class="li_out">
			<a href="./video.jsp">视频管理</a>
		</li>
		<li class="li_out">
			<a href="./person.jsp">人才服务</a>
		</li>
		<li class="li_out">
			<a href="./policy.jsp">政策法规</a>
		</li>
		<li class="li_out">
			<a href="./contectus.jsp">联系我们</a>
		</li>
		<li class="li_out">
			<a href="#">退出登录</a>
		</li>
	</ul>
</div>