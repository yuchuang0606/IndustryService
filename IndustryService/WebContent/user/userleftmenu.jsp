<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/leftmenu.css" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.2.6.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/ui.core.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery.scroll-follow.js"></script>
<script type="text/javascript">
	$( document ).ready( function ()
	{
		$( '#sidebar' ).scrollFollow();
	}
);
function ckupload()
{
	$.post('../user/userdata?type=getgroup',
	        function (data) {
				if (data != "3") {
		        	location.href = "./upload.jsp";
		        } else {
		        	alert("账户未激活，不能上传");
		        }
	        }
	    );
}
</script>
<div id="sidebar" class="sidebar" style="top:0px;">
	<ul>
		<li class="li_out">
			<a href="#">我的账户</a>
		</li>
		<li class="li_inner">
			<a href="<%=request.getContextPath() %>/user/user.jsp" >用户中心</a>
		</li>
		<li class="li_inner">
			<a href="#" >在线CAD服务卡</a>
		</li>
		<li class="li_inner">
			<a href="<%=request.getContextPath() %>/user/authcert.jsp" >授权证书</a>
		</li>
		<!--
		<li class="li_out">
			<a href="#">订单管理</a>
		</li>
		 
		<li class="li_inner">
			<a href="#" >订单管理</a>
		</li> -->
		<li class="li_out">
			<a href="#">资源管理</a>
		</li>
		<li class="li_inner">
			<a href="#" onclick="ckupload()">上传资源</a>
		</li>
		<li class="li_inner">
			<a href="<%=request.getContextPath() %>/user/resourcedata?command=list&type=1&orderby=createtime&page=1&rp=10" >我的上传</a>
		</li>
	</ul>
</div>