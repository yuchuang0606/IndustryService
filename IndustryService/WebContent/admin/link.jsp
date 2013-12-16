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
<%
	ConfigurationControl cclink = new ConfigurationControl();
	List<Configuration> linklist= cclink.listConfiguration("config_name", "link");
	String[] number={"一","二","三","四","五","六"};
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
			<a href="<%=request.getContextPath() %>/index.jsp">首页</a> 》 <a href="<%=request.getContextPath() %>/admin/index.jsp">管理中心</a> 》 链接管理
			</span>
		</div>
	</div>
	<div id="main" class="main">
		<%@ include file="/admin/siderbar.jsp"%>
		<div id="content" class="content" style="background:#fff;height:500px;">
			<div class="title" style="height:36px;wclassth:100%;line-height:36px;margin:0px auto;text-align:center;background-color:#f5f5f5">
	        	<span style="font-size:16px;"><strong>链接管理</strong></span>
	        </div>
	        <div style="margin-top:55px;padding:0 10px;">
	        	<form action="<%=request.getContextPath() %>/user/configdata?type=link" method="post">
				<table width="719px" border="0" cellpadding="0" cellspacing="0" align="center">				
					<% int i=0; for (Configuration link:linklist) { %>
					<tr>
						<td height="40" align="right">
                               <font size = 2>&nbsp;&nbsp;链接<%=number[i] %>：</font>
                           </td>
						<td align="left">
							<!--  <input name="id<%=i%>" value="<%=link.getConfigid()%>" style="display:none">-->
                              	名称：<input name="name<%=i %>" type="text" style="width: 200px" value="<%=link.getDescription() %>"/>
                              	网址：<input name="link<%=i %>" type="text" style="width: 200px" value="<%=link.getConfig_path() %>"/>
                           </td>
                       </tr>
                      <%i++;} %>
					<tr>
                    	<td align="center" height="40" colspan="4" style="padding-bottom: 10px;">
                    		<input type="submit" name="Submit" value="提交" onclick="" id="Submit" style="border-style:Groove;width:60px;" />   
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