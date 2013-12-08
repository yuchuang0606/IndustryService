<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/index.css" type="text/css" />
<link rel="shortcut icon" href="../image/c.png" type="image/x-icon" />
<link rel="stylesheet" href="../css/header.css" type="text/css" />
<link rel="stylesheet" href="../css/logo.css" type="text/css" />
<link rel="stylesheet" href="../css/navigator.css" type="text/css"/>
<link rel="stylesheet" href="../css/slist.css" type="text/css" />
<link rel="stylesheet" href="../css/footer.css" type="text/css" />
<title>大连工业设计服务平台</title>
</head>
<body>	
	<%@ include file="../templates/header.jsp" %>	
	<div class="logo">
		<div class="logocontent">
			<div class="logoimg">
				<img src="../image/logo_6.png" />
			</div>
		</div>
	</div>	
	<%@ include file="../templates/navigator.jsp" %>
	<div  id="main" class="main">	
		<%@ include file="./siderbar.jsp" %>
		<%
		ConfigurationControl cc = new ConfigurationControl();
		List<Configuration> contectlist= cc.listConfiguration("config_name", "contect");
		String title[] = {"QQ号：","邮箱：","技术论坛："};
		%>
		<div  style="width:739px;float: right; ">
		<form action="<%=request.getContextPath() %>/user/configdata?type=online" method="post">
			<table width="739px" border="0" cellpadding="0" cellspacing="0" align="center">
                    <tr>
						<td height="44" colspan="4">
                                <div align="left"><strong>在线服务</strong></div>
                                <br><br>
                        </td>
					</tr>
					
						<% int i=0; for (Configuration contect:contectlist) { %>
							<tr>
								<td height="30" align="right">
	                                <font size = 2>&nbsp;&nbsp;<%=title[i] %></font>
	                            </td>
								<td align="left">							                         
	                               	<input name="link<%=i %>" type="text" style="width: 200px" value="<%=contect.getConfig_path() %>"/>
	                            </td>
	                        </tr>
	                       <%i++;} %>			
						<tr>
                        	<td align="center" height="30" colspan="4" style="padding-bottom: 10px;">
                        		<input type="submit" name="Submit" value="提交" onclick="" id="Submit" style="border-style:Groove;width:60px;" />   
                        		<input type="submit" name="concel" value="取消" id="concel" style="border-style:Groove;width:60px;" />
                        	</td>
                        </tr>                  
			</table>
		</form>
		</div>
	</div>
	
	<br><br><br><br>
	
	<%@ include file="../templates/footer.jsp" %>
</body>
</html>