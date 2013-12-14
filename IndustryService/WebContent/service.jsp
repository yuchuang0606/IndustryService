<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/image/small.gif" type="image/x-icon" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/slist.css" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/location.css" type="text/css" />
<title>大连工业设计服务平台</title>
</head>
<body>
	<%@ include file="./templates/header.jsp" %>
	<%@ include file="./templates/logo.jsp" %>
	<%@ include file="./templates/navigator.jsp" %>
	<div class="location">
		<div class="loccontent">
			<span style="font-size:14px;color:#3C3C3C">您当前位置：</span>
			<img src="<%=request.getContextPath() %>/image/house.png" width="15" height="15"></img>
			<span style="font-size:14px;color:#3C3C3C">
			<a href="<%=request.getContextPath() %>/index.jsp">首页</a> 》 服务流程
			</span>
		</div>
	</div>
	<div id="main" class="main">
		<%@ include file="./templates/leftmenu.jsp" %>
		<div id="content" class="content">
			<div class="title" style="height:36px;width:100%;line-height:36px;margin:0px auto;text-align:center;background-color:#f5f5f5">
	        	<span style="font-size:18px;"><strong>在线CAD服务流程</strong></span>
	        </div>
	        <div style="padding:5px 10px;">
	        	<table border="0" cellpadding="0" cellspacing="0" align="left">
	            <tr>
	                <td align="left" style="line-height: 24px">
	                    <img src="image/liucheng_t1.jpg" border="0" usemap="#Map">
	                    <map name="Map" id="Map">
	                        <area shape="rect" coords="10, 10, 122, 107" href="#ruanjian" title="软件下载">
	                        <area shape="rect" coords="150, 10, 257, 110" href="#jihuo" title="安装激活软件">
	                        <area shape="rect" coords="287, 10, 389, 109" href="<%=request.getContextPath() %>/user/user.jsp" title="完善注册信息">
	                        <area shape="rect" coords="421, 9, 524, 113" href="<%=request.getContextPath() %>/user/authcert.jsp" title="授权证书">
	                        <!-- <area shape="rect" coords="560, 9, 661, 110" href="<%=request.getContextPath() %>/index.jsp" title="正版服务"> -->
	                    </map>
	                </td>
	            </tr>
	            <tr>
	                <td style="font-size: 14px; text-align: left; color: #333333; line-height: 22px;">
                         <strong>第1步：注册</strong><br>
                        	点击首页注册按钮进入注册页面，填写注册信息注册会员。<br>
                         <img src="image/liucheng2.png" width="710px"><br>
                         <strong id="ruanjian">第2步：下载最新版软件</strong><br>
                         	点击首页快捷链接或登录账号后即可看见下载软件功能按钮。<br>
                         <table align="left" bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0" style="float: left" width="720px">
                             <tr>
                                 <td align="left" colspan="3" height="30" style="padding: 5px 0 0 10px; background-color: #d4e5ef;
                                     font-size: 17px; color: #316a9c; font-family: 微软雅黑; border-top: 1px solid #abb4bb;
                                     border-left: 1px solid #abb4bb; border-right: 1px solid #abb4bb;" width="713px">
                                     	电子图板2013R1 精简版
                                 </td>
                             </tr>
                             <tr>
                                 <td align="center" rowspan="3" style="padding: 5px 0 0 10px; border-left: 1px solid #abb4bb;
                                     font-size: 17px; color: #316a9c; font-family: 微软雅黑" width="250px">
                                     <img src="image/bzh.gif">
                                 </td>
                                 <td align="left" colspan="2" height="100px" style="padding: 5px 10px 0 10px; font-size: 13px;
                                     font-family: 微软雅黑; border-right: 1px solid #abb4bb;" valign="top" width="461px">
                                     &nbsp;&nbsp;&nbsp;&nbsp;CAXA电子图板CAD软件是具有完全自主知识产权、拥有30万正版用户、经过大规模应用验证、稳定高效性能优越的二维CAD软件。可以零风险替代各种CAD平台，比普通CAD平台设计效率提升100%以上；可以方便地为生产准备数据；可以快速地与各种管理软件集成。
                                     <br>
                                     &nbsp;&nbsp;&nbsp;&nbsp;CAXA电子图板CAD软件的界面和操作习惯完全与AutoCAD完全一致，快速地直接打开、编辑、存储R2.5-2013R1各版本DWG文档。设计中心、样式替代、外部引用等功能，支持用户的习惯应用。内置的DWG转换器和转图工具，可实现DWG图纸的双向和批量转换。
                                 </td>
                             </tr>
                             <tr>
                                 <td align="left" style="font-size: 14px; color: #316a9c; border-right: 1px solid #abb4bb;
                                     font-family: 微软雅黑">
                                     <a href="http://zl.hwpan.com/u40693657/Setup_CE2013R1.exe" style="color: #316a9c;
                                         text-decoration: underline" target="_blank">
                                         <img border="0" src="image/down.jpg" width="20px">【下载地址1】</a>
                                 </td>
                             </tr>
                             <tr>
                                 <td align="left" style="border-right: 1px solid #abb4bb; font-size: 14px; color: #316a9c;
                                     font-family: 微软雅黑">
                                     <a href="http://dl.vmall.com/c0abzrr3ke" style="color: #316a9c; text-decoration: underline" target="_blank">
                                         <img border="0" src="image/down.jpg" width="20px">【下载地址2】（网盘下载）</a>
                                 </td>
                             </tr>
                             <tr>
                                 <td colspan="3" height="20" style="padding-top: 5px; border-bottom: 1px solid #abb4bb;
                                     border-left: 1px solid #abb4bb; border-right: 1px solid #abb4bb;" valign="top">
                                     &nbsp;
                                 </td>
                             </tr>
                         </table>
                         <table align="left" bgcolor="#FFFFFF" border="0" cellpadding="0" cellspacing="0" style="float: left" width="720px">
                             <tr>
                                 <td align="left" colspan="3" height="30" style="padding: 5px 0 0 10px; background-color: #d4e5ef;
                                     font-size: 17px; color: #316a9c; font-family: 微软雅黑; border-top: 1px solid #abb4bb;
                                     border-left: 1px solid #abb4bb; border-right: 1px solid #abb4bb;" width="713px">
                                    	 实体设计 精简版
                                 </td>
                             </tr>
                             <tr>
                                 <td align="center" rowspan="3" style="padding: 5px 0 0 10px; border-left: 1px solid #abb4bb;
                                     font-size: 17px; color: #316a9c; font-family: 微软雅黑" width="250px">
                                     <img src="image/stsj_t.jpg">
                                 </td>
                                 <td align="left" colspan="2" height="100px" style="padding: 5px 10px 0 10px; font-size: 13px;
                                     font-family: 微软雅黑; border-right: 1px solid #abb4bb;" valign="top" width="461px">
                                     &nbsp;&nbsp;&nbsp;&nbsp;CAXA实体设计CAD软件是具有完全自主知识产权、拥有30万正版用户、经过大规模应用验证、稳定高效性能优越的三维维CAD软件。可以零风险替代各种CAD平台，比普通CAD平台设计效率提升100%以上；可以方便地为生产准备数据；可以快速地与各种管理软件集成。
                                     <br>
                                     &nbsp;&nbsp;&nbsp;&nbsp;CAXA实体设计CAD软件的界面和操作习惯完全与AutoCAD完全一致，快速地直接打开、编辑、存储R2.5-2013R1各版本DWG文档。设计中心、样式替代、外部引用等功能，支持用户的习惯应用。内置的DWG转换器和转图工具，可实现DWG图纸的双向和批量转换。
                                 </td>
                             </tr>
                             <tr>
                                 <td align="left" style="font-size: 14px; color: #316a9c; border-right: 1px solid #abb4bb;
                                     font-family: 微软雅黑">
                                     &nbsp;
                                 </td>
                             </tr>
                             <tr>
                                 <td align="left" style="border-right: 1px solid #abb4bb; font-size: 14px; color: #316a9c;
                                     font-family: 微软雅黑">
                                     <a href="http://dl.vmall.com/c0bwcalac3" style="color: #316a9c; text-decoration: underline" target="_blank">
                                         <img border="0" src="image/down.jpg" width="20px">【下载地址】（网盘下载）</a>
                                 </td>
                             </tr>
                             <tr>
                                 <td colspan="3" height="20" style="padding-top: 5px; border-bottom: 1px solid #abb4bb;
                                     border-left: 1px solid #abb4bb; border-right: 1px solid #abb4bb;" valign="top">
                                     &nbsp;
                                 </td>
                             </tr>
                         </table>
                         <br>
                         <strong id="jihuo">第3步：安装激活</strong><br>
                         	下载软件后进行安装，会提示激活软件，刮开在线CAD服务卡后填写激活码和本网站的注册账号密码即可激活使用。<br>
                         <img src="image/liucheng10.jpg"><br>
                         <img src="image/liucheng.png"><br>
                         <img src="image/liucheng1.png"><br>
                         <strong>第4步：查看授权证书享受正版服务</strong><br>
                        	 此软件为caxa授权的正版软件，激活后即可看见授权证书功能按钮，查看授权证书。<br>
                         <img src="image/liucheng6.jpg" width="710px">
                         <br>
                         <br>
                     </td>
	            </tr>
	        	</table>
        	</div>
    	</div>
    </div>
    <script type="text/javascript">
		document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
	</script>
    <%@ include file="../templates/footer.jsp" %>
</body>
</html>