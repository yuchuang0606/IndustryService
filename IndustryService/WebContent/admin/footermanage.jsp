<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/slist.css" type="text/css" />
<title>大连工业设计服务平台</title>
<%
	ConfigurationControl cclink = new ConfigurationControl();
	Configuration foot = cclink.listConfiguration("config_name", "footer").get(0);
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
	        	<span style="font-size:16px;"><strong>footer配置</strong></span>
	        </div>
	        <div style="margin-top:55px;padding:0 10px;">
	        	<form action="<%=request.getContextPath() %>/user/configdata?type=footer" method="post">
				<table width="719px" border="0" cellpadding="0" cellspacing="0" align="center">				
					<tr>
						<td align="center">
                             <textarea id="content" name="content" rows="7" cols="40" style="height:100px;width:608px;"><%=foot.getDescription() %></textarea>
                             <br/><label style="font-size:12px;">提示：footer共三行，换行用&lt;br/&gt;表示</label>
                        </td>
                    </tr>
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