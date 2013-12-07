<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*" %>
<%
	ConfigurationControl ccfooter = new ConfigurationControl();
	Configuration cffooter = ccfooter.listConfiguration("config_name", "footer").get(0);
	String footer = cffooter.getDescription();
%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css" type="text/css" />
<div class="foot">
	<div class="footmain">
		<div class="footcontent">
			<span style="font-size:13px;color:#3C3C3C;margin:0px 10px;">
			<%=footer %>
		    </span>
		</div>
	</div>
</div>