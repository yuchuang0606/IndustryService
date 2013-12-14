<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/image/small.gif" type="image/x-icon" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/slist.css" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/location.css" type="text/css" />
<link href="<%=request.getContextPath() %>/js/uploadify/uploadify.css" rel="stylesheet" type="text/css" />
<title>大连工业设计服务平台</title>
<%
	ConfigurationControl cc = new ConfigurationControl();
	Configuration coinexplain = cc.listConfiguration("config_name", "coindeclare").get(0);
%>
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
			<a href="<%=request.getContextPath() %>/index.jsp">首页</a> 》 footer管理
			</span>
		</div>
	</div>
	<div id="main" class="main">
		<%@ include file="/admin/siderbar.jsp"%>
		<script src="<%=request.getContextPath()%>/js/jquery-1.10.2.min.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath() %>/js/ckeditor/ckeditor.js"></script>
		<script src="<%=request.getContextPath() %>/js/uploadify/jquery.uploadify.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath() %>/js/util.js"></script>
		<div id="content" class="content"">
			<div class="title" style="height:36px;wclassth:100%;line-height:36px;margin:0px auto;text-align:center;background-color:#f5f5f5">
	        	<span style="font-size:16px;"><strong>金币、积分说明配置</strong></span>
	        </div>
	        <div style="margin-top:15px;padding:0 10px;">
	        	<form action="<%=request.getContextPath() %>/user/configdata?type=coinexplain" method="post">
				<table width="719px" border="0" cellpadding="0" cellspacing="0" align="center">				
					<tr>
						<td align="center">
			        		<textarea id="editor1" class="ckeditor" name="content" style=""><%=coinexplain.getDescription() %></textarea>
                        </td>
                    </tr>
					<tr>
                    	<td align="center" height="40" colspan="4" style="padding-bottom: 10px;">
                    		<input type="submit" name="publish" value="修改" id="publish" style="border-width:0px;margin-top:5px;color:#fff;font-weight:bold;height:30px;width:80px;background:url(<%=request.getContextPath() %>/image/nav_bg.png) repeat-x" />
                    	</td>
                    </tr>	                                  
				</table>
				</form>
	        </div>
		</div>
	</div>
	<script type="text/javascript">
		document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
	</script>
	<%@ include file="../templates/footer.jsp" %>
</body>
</html>