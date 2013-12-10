<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/authcert.css" type="text/css" />
<title>大连工业设计服务平台</title>
</head>
<body>
	<%@ include file="/templates/header.jsp" %>
	<%@ include file="/templates/logo.jsp" %>
	<%@ include file="/templates/navigator.jsp" %>
	<%@ include file="/templates/location.jsp" %>
	<div id="main" class="main">
		<%@ include file="/user/userleftmenu.jsp"%>
		<div id="content" class="content">
			<div style="height:30px;width:717px;line-height:30px;text-align:center;background:#f5f5f5;">
       			<font style="font-weight:800;color: #265f9d;">授权证书</font>
       		</div>
	        <div class="certfication">
	        	<div style="padding-top:230px;"></div>
	        	<div class="cert">
	        		<div class="cert_l">被许可人：</div>
	        		<div class="cert_r"></div>
	        	</div>
	        	<div class="cert">
	        		<div class="cert_l">被许可人地址：</div>
	        		<div class="cert_r"></div>
	        	</div>
	        	<div class="cert">
	        		<div style="float:left;width:100px;">证书编号：</div>
	        		<div style="float:left;width:125px;">&nbsp;</div>
	        		<div style="float:left;width:100px;">邮政编码：</div>
	        		<div style="float:left;width:125px;">&nbsp;</div>
	        	</div>
	        	<div class="cert">
	        		<div class="cert_l">产品描述：</div>
	        		<div class="cert_r"></div>
	        	</div>
	        </div>
		</div>
	</div>
	<script type="text/javascript">
		document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
	</script>
	<%@ include file="/templates/footer.jsp" %>
</body>
</html>