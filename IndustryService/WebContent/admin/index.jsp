<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/image/small.gif" type="image/x-icon" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/slist.css" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/location.css" type="text/css" />
<title>大连工业设计服务平台</title>
</head>
<body>
	<%@ include file="/templates/header.jsp" %>
	<%@ include file="/templates/logo.jsp" %>
	<%@ include file="/templates/navigator.jsp" %>
	<div class="location">
		<div class="loccontent">
			<span style="font-size:14px;color:#3C3C3C">您当前位置：</span>
			<img src="<%=request.getContextPath() %>/image/house.png" width="15" height="15"></img>
			<span style="font-size:14px;color:#3C3C3C">
			<a href="<%=request.getContextPath() %>/index.jsp">首页</a> 》 后台管理中心
			</span>
		</div>
	</div>
	
	<div id="main" class="main">
	<script language="JavaScript" type="text/javascript">
	today=new Date();
	function initArray(){
			this.length=initArray.arguments.length
			for(var i=0;i<this.length;i++)
			this[i+1]=initArray.arguments[i]  }
			var d=new initArray(
 				"星期日",
 				"星期一",
 				"星期二",
 				"星期三",
 				"星期四",
 				"星期五",
 				"星期六");
		document.write(
 				"<font color=#000 style='font-size:14pt;'> ",
 				today.getYear(),"年",
 				today.getMonth()+1,"月",
 				today.getDate(),"日 ",
 				d[today.getDay()+1],
 				"</font>" ); 
	</script>
		<div>
			<font size="5" color="#FF0000">后台配置管理</font>
			<br><br>
		</div>
		<br>
		<div style="width:900px;padding:10px 20px;">
			<table>
				<tr>
					<td width="250">
						<font color=#FF0000 style='font-size:15pt;font-family: 宋体'>admin，欢迎您！</font>
					</td>
					<td width="250">
						<font color=#4B0082 style='font-size:15pt;font-family: 宋体'>当前登录系统次数：100</font>
					</td>
					<td width="250">
						<font color=#4B0082 style='font-size:15pt;font-family: 宋体'>上一次登录时间：</font>
					</td>
				</tr>
				<tr>
					<td>
						<font color=#4B0082 style='font-size:15pt;font-family: 宋体'>当前用户数量：37</font>
					</td>
					<td>
						<font color=#4B0082 style='font-size:15pt;font-family: 宋体'>已通过审核用户数量：212</font>
					</td>
					<td>
						<font color=#4B0082 style='font-size:15pt;font-family: 宋体'>未审核用户数量：454</font>
					</td>
				</tr>
				<tr>
					<td>
						<font color=#4B0082 style='font-size:15pt;font-family: 宋体'>所有软件数量：537</font>
					</td>
					<td>
						<font color=#4B0082 style='font-size:15pt;font-family: 宋体'>软件总下载次数：787</font>
					</td>
					<td>
						<font color=#4B0082 style='font-size:15pt;font-family: 宋体'>未审核软件数量：77</font>
					</td>
				</tr>
				<tr>
					<td>
						<font color=#4B0082 style='font-size:15pt;font-family: 宋体'>所有视频数量：545</font>
					</td>
					<td>
						<font color=#4B0082 style='font-size:15pt;font-family: 宋体'>视频总下载次数：12</font>
					</td>
					<td>
						<font color=#4B0082 style='font-size:15pt;font-family: 宋体'>视频总浏览次数：65</font>
					</td>
				</tr>
			</table>
		</div>
	<br><br>
		<a href="./setbuy.jsp"><img src="../image/c1.PNG" style="border-width:0"/></a>&nbsp;&nbsp;
		<a href="./onlineserv.jsp"><img src="../image/c2.PNG" style="border-width:0"/></a>&nbsp;&nbsp;	
		<a href="./link.jsp"><img src="../image/c3.PNG" style="border-width:0"/></a>&nbsp;&nbsp;
		<a href="./user.jsp"><img src="../image/c4.PNG" style="border-width:0"/></a>
		<br><br>					
		<a href="./news.jsp"><img src="../image/c5.PNG" style="border-width:0"/></a>&nbsp;&nbsp;	
		<a href="./news.jsp"><img src="../image/c6.PNG" style="border-width:0"/></a>&nbsp;&nbsp;
		<a href="./software.jsp"><img src="../image/c7.PNG" style="border-width:0"/></a>&nbsp;&nbsp;
		<a href="./video.jsp"><img src="../image/c8.PNG" style="border-width:0"/></a>	
		<br><br>
		<a href="./person.jsp"><img src="../image/c10.PNG" style="border-width:0"/></a>&nbsp;&nbsp;	
		<a href="./policy.jsp"><img src="../image/c11.PNG" style="border-width:0"/></a>&nbsp;&nbsp;
		<a href="./contectus.jsp"><img src="../image/c12.PNG"style="border-width:0" /></a>&nbsp;&nbsp;	
		<a href="#"><img src="../image/c9.PNG" style="border-width:0"/></a>
	</div>
	<%@ include file="../templates/footer.jsp" %>
</body>
</html>