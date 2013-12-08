<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/image/c.png" type="image/x-icon" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/slist.css" type="text/css" />
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
	<%@ include file="/templates/location.jsp" %>
	<div id="main" class="main">
		<%@ include file="/admin/siderbar.jsp"%>
		<div id="content" class="content" style="background:#fff;">
			<div class="title" style="height:36px;wclassth:100%;line-height:36px;margin:0px auto;text-align:center;background-color:#f5f5f5">
	        	<span style="font-size:16px;"><strong>链接管理</strong></span>
	        </div>
	        <div style="margin-top:15px;padding:0 10px;min-height:500px;">
	        	<form action="<%=request.getContextPath() %>/user/configdata?type=link" method="post">
				<table width="739px" border="0" cellpadding="0" cellspacing="0" align="center">				
					<% int i=0; for (Configuration link:linklist) { %>
					<tr>
						<td height="30" align="right">
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
                    	<td align="center" height="30" colspan="4" style="padding-bottom: 10px;">
                    		<input type="submit" name="Submit" value="提交" onclick="" id="Submit" style="border-style:Groove;width:60px;" />   
                    	</td>
                    </tr>	                                  
				</table>
				</form>
	        </div>
		</div>
	</div>
	<%@ include file="../templates/footer.jsp" %>
</body>
</html>