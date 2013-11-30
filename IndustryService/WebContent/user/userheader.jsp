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
			<span class="pipe">|</span>
			<a href="http://www.caxa.com">CAXA首页</a>&nbsp;&nbsp;
			<span  class="pipe">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span>&nbsp;&nbsp;
			&nbsp;&nbsp;<a href="UserInfo.aspx"style="font-size: 15px;">个人中心</a>&nbsp;&nbsp;
			<span  class="pipe">|</span>&nbsp;&nbsp;<a href="BuyProd.aspx"style="font-size: 15px;">CAD服务卡</a>&nbsp;&nbsp;
            <span  class="pipe">|</span>&nbsp;&nbsp;<a id="head_lbtuichu" href="javascript:__doPostBack(&#39;head$lbtuichu&#39;,&#39;&#39;)" style="font-size:15px;">退 出</a>
            <font size="2">当前用户：姚宏伟</font>
        </div>
	</div>
</div>