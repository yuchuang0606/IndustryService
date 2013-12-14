<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*,java.text.SimpleDateFormat" %>
<%
	User user = (User)request.getSession().getAttribute("user");
	UserControl uc = new UserControl();
	ResourceControl rc = new ResourceControl();
%>
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
		<div class="title" style="height:36px;width:100%;line-height:36px;margin:0px auto;text-align:center;background-color:#f5f5f5">
        	<span style="font-size:18px;"><strong>后台管理中心</strong></span>
        </div>
        <div style="text-align:right;margin-right:40px;">
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
	 				"<font color=#000 style='font-size:13pt;'> ",
	 				"20",today.getYear()-100,"年",
	 				today.getMonth()+1,"月",
	 				today.getDate(),"日 ",
	 				d[today.getDay()+1],
	 				"</font>" ); 
		</script>
		</div>
		<br>
		<div style="width:700px;padding:10px 130px;">
			<table>
				<tr>
					<td width="200">
						<font color=#FF0000 style='font-size:15px;'><%=user.getUsername() %>，欢迎您！</font>
					</td>
					<td width="200">
						<font color=#4B0082 style='font-size:15px;'>登录次数：<%=user.getLogintimes() %></font>
					</td>
					<td width="300">
						<font color=#4B0082 style='font-size:15px;'>上次登录：<%=user.getLastlogin() %></font>
					</td>
				</tr>
				<tr>
					<td>
						<font color=#4B0082 style='font-size:14pt;font-family: 宋体'>用户总量：<%=uc.getUserNumber() %></font>
					</td>
					<td>
						<font color=#4B0082 style='font-size:14pt;font-family: 宋体'>激活用户量：<%=uc.getNumberByProp("usergroup", "4") %></font>
					</td>
					<td>
						<font color=#4B0082 style='font-size:14pt;font-family: 宋体'>未激活用户量：<%=uc.getNumberByProp("usergroup", "3") %></font>
					</td>
				</tr>
				<tr>
					<td>
						<font color=#4B0082 style='font-size:14pt;font-family: 宋体'>软件总量：<%=rc.getNumberByProp("restype", "software") %></font>
					</td>
					<td>
						<font color=#4B0082 style='font-size:14pt;font-family: 宋体'>未审核软件：<%=rc.getNumberByProps("restype", "software", "ispass", "0") %></font>
					</td>
					<td>
						<font color=#4B0082 style='font-size:14pt;font-family: 宋体'>公开软件数量：<%=rc.getNumberByProps("restype", "software", "ispublic", "1") %></font>
					</td>
				</tr>
				<tr>
					<td>
						<font color=#4B0082 style='font-size:14pt;font-family: 宋体'>视频总量：<%=rc.getNumberByProp("restype", "video") %></font>
					</td>
					<td>
						<font color=#4B0082 style='font-size:14pt;font-family: 宋体'>未审核视频：<%=rc.getNumberByProps("restype", "video", "ispass", "0") %></font>
					</td>
					<td>
						<font color=#4B0082 style='font-size:14pt;font-family: 宋体'>公开视频数量：<%=rc.getNumberByProps("restype", "software", "ispublic", "0") %></font>
					</td>
				</tr>
			</table>
		</div>
		<div style="width:900px;padding:10px 30px;">
		<a href="<%=request.getContextPath() %>/user/user.jsp"><img src="../image/grzx.png" style="border-width:0"/></a>&nbsp;&nbsp;
		<a href="<%=request.getContextPath() %>/user/upload.jsp"><img src="../image/zysc.PNG" style="border-width:0"/></a>&nbsp;&nbsp;	
		<a href="<%=request.getContextPath() %>/admin/resource.jsp?type=software"><img src="../image/rjgl.PNG" style="border-width:0"/></a>&nbsp;&nbsp;
		<a href="<%=request.getContextPath() %>/admin/resource.jsp?type=video"><img src="../image/spgl.PNG" style="border-width:0"/></a>
		<br><br>					
		<a href="<%=request.getContextPath() %>/admin/resource.jsp?type=model"><img src="../image/mxgl.PNG" style="border-width:0"/></a>&nbsp;&nbsp;	
		<a href="<%=request.getContextPath() %>/admin/resource.jsp?type=doc"><img src="../image/xzgl.PNG" style="border-width:0"/></a>&nbsp;&nbsp;
		<a href="<%=request.getContextPath() %>/user/resourcedata?command=list&type=software&orderby=createtime&page=1&rp=10"><img src="../image/wdsc.PNG" style="border-width:0"/></a>&nbsp;&nbsp;
		<a href="<%=request.getContextPath() %>/admin/dlrecord.jsp"><img src="../image/xzgl.PNG" style="border-width:0"/></a>	
		<br><br>
		<a href="<%=request.getContextPath() %>/admin/user.jsp"><img src="../image/yhgl.PNG" style="border-width:0"/></a>&nbsp;&nbsp;	
		<a href="<%=request.getContextPath() %>/admin/publish.jsp"><img src="../image/xxfb.PNG" style="border-width:0"/></a>&nbsp;&nbsp;
		<a href="<%=request.getContextPath() %>/admin/news.jsp?type=news"><img src="../image/xwgl.PNG"style="border-width:0" /></a>&nbsp;&nbsp;	
		<a href="<%=request.getContextPath() %>/admin/news.jsp?type=notice"><img src="../image/tzgl.PNG" style="border-width:0"/></a>
		</div>
	</div>
	<%@ include file="../templates/footer.jsp" %>
</body>
</html>