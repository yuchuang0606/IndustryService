<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*" %>
<%
	ConfigurationControl ccfooter = new ConfigurationControl();
	Configuration cf = ccfooter.listConfiguration("config_name", "footer").get(0);
	String content = cf.getCondition();
%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css" type="text/css" />
<div class="foot">
	<div class="footmain">
		<div class="footcontent">
			<span style="font-size:13px;color:#3C3C3C;margin:0px 10px;">
			<%=content %>
		    </span>
		</div>
	</div>
</div>