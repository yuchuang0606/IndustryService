<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/admin/css/siderbar.css" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.10.2.min.js" ></script>
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
<div class="box_main" style="display: block; width:220px;float:left;">
<ul id="menu">
	<li>
		<a href="<%=request.getContextPath() %>/user/user.jsp"><span>用户中心</span></a>
	</li>
	<li style="background:gray">
		<a href="javascript:void(0);"><span>信息管理</span></a>
        <ul style="display: none;">
       		<li><a href="<%=request.getContextPath() %>/admin/publish.jsp">信息发布</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/news.jsp?type=news">新闻管理</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/news.jsp?type=notice">公告管理</a></li>
			<li><a href="javascript:void(0);">政策法规</a></li>
		</ul>
	</li>
	<li>
		<a href="javascript:void(0);"><span>资源管理</span></a>
        <ul style="display: none;">
        	<li><a href="<%=request.getContextPath() %>/user/upload.jsp">资源上传</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/resource.jsp?type=1">软件管理</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/resource.jsp?type=2">视频管理</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/resource.jsp?type=4">模型管理</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/resource.jsp?type=3">文档管理</a></li>
		</ul>
	</li>
	<li>
		<a href="<%=request.getContextPath() %>/admin/user.jsp"><span>用户管理</span></a>
	</li>
	<li>
		<a href="<%=request.getContextPath() %>/admin/dlrecord.jsp"><span>下载记录</span></a>
	</li>
	<li>
		<a href="<%=request.getContextPath() %>/user/resourcedata?command=list&type=software&orderby=createtime&page=1&rp=10"><span>我的上传</span></a>
	</li>
	<li>
		<a href="javascript:void(0);"><span>配置管理</span></a>
		<ul style="display: none;">
			<li><a href="<%=request.getContextPath() %>/admin/newspic.jsp">图片新闻</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/setbuy.jsp">套餐购买</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/link.jsp">友情链接</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/onlineserv.jsp">在线服务</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/footermanage.jsp">footer配置</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/coinexplain.jsp">金币、积分说明</a></li>
			<li><a href="<%=request.getContextPath() %>/admin/regright.jsp">用户注册协议</a></li>
		</ul>
	</li>
	<li>
		<a href="javascript:void(0);"><span>人才服务</span></a>
	</li>
</ul>
</div>