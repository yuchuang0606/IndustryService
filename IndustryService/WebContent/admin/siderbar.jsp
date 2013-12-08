<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./css/siderbar.css" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.10.2.min.js" ></script>
<script type="text/javascript">
    $(document).ready(function() {
        //$(".box_main").hide();
        $('#menu ul').hide();
        $('#menu li a').click(function() {
            $(this).next().slideToggle('normal');
        });
        $('#box_link').toggle(
        function() {
            $('.box_main').show( function() {
                $('.box_main').animate({
                    width: '220'
                }, 500);
            });
        },
        function() {
            $('.box_main').animate({
                width: "0"
            }, 500, function() {
                $('.box_main').hide();
            });
        });
    });
</script>
<div class="box_main" style="display: block;">
<ul id="menu">
	<li>
		<a href="#"><span>个人中心</span></a>
	</li>
	<li>
		<a href="#"><span>信息管理</span></a>
        <ul style="display: none;">
       		<li><a href="./publish.jsp">信息发布</a></li>
			<li><a href="./news.jsp?type=news">新闻管理</a></li>
			<li><a href="./news.jsp?type=notice">公告管理</a></li>
			<li><a href="#">政策法规</a></li>
		</ul>
	</li>
	<li>
		<a href="#"><span>资源管理</span></a>
        <ul style="display: none;">
			<li><a href="./resource.jsp?type=software">软件管理</a></li>
			<li><a href="./resource.jsp?type=video">视频管理</a></li>
			<li><a href="./resource.jsp?type=model">模型管理</a></li>
			<li><a href="./resource.jsp?type=doc">文档管理</a></li>
		</ul>
	</li>
	<li>
		<a href="./user.jsp"><span>用户管理</span></a>
	</li>
	<li>
		<a href="#"><span>配置管理</span></a>
		<ul style="display: none;">
			<li><a href="./link.jsp">友情链接</a></li>
			<li><a href="./onlineserv.jsp">在线服务</a></li>
		</ul>
	</li>
	<li>
		<a href="#"><span>人才服务</span></a>
	</li>
</ul>
</div>