<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/slist.css" type="text/css" />
<title>大连工业设计服务平台</title>
<%
	ConfigurationControl cc = new ConfigurationControl();
	List<Configuration> contactList= cc.listConfiguration("config_name", "contact");
	String title[] = {"QQ号：","邮箱：","技术论坛："};
%>
</head>
<body>
	<%@ include file="/templates/header.jsp" %>
	<%@ include file="/templates/logo.jsp" %>
	<%@ include file="/templates/navigator.jsp" %>
	<%@ include file="/templates/location.jsp" %>
	<div id="main" class="main">
		<%@ include file="/admin/siderbar.jsp"%>
		<div id="content" class="content" style="background:#fff;height:500px;">
			<div class="title" style="height:36px;wclassth:100%;line-height:36px;margin:0px auto;text-align:center;background-color:#f5f5f5">
	        	<span style="font-size:16px;"><strong>在线服务</strong></span>
	        </div>
			<div style="margin-top:55px;padding:0 10px;">
			<form action="<%=request.getContextPath() %>/user/configdata?type=online" method="post">
				<table width="719px" border="0" cellpadding="0" cellspacing="0" align="center">
					<% int i=0; for (Configuration contact:contactList) { %>
					<tr>
						<td height="40" width="250" align="right">
                               <font size = 2>&nbsp;&nbsp;<%=title[i] %></font>
                           </td>
						<td align="left">							                         
                              	<input name="link<%=i %>" type="text" style="width: 200px" value="<%=contact.getDescription() %>"/>
                           </td>
                       </tr>
                      <%i++;} %>			
					<tr>
                      	<td align="center" height="40" colspan="2" style="padding-bottom: 10px;">
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