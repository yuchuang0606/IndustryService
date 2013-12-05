<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<%@ include file="./leftindex.jsp" %>
		<div  style="width:739px;float: right; ">
			<table width="739px" border="0" cellpadding="0" cellspacing="0" align="center">
                    <tr>
						<td height="44" colspan="4">
                                <div align="left"><strong>在线服务</strong></div>
                                <br><br><br><br>
                        </td>
					</tr>
						<tr>
							<td height="30" align="right">
                                <font size = 2>&nbsp;&nbsp;QQ号：</font>
                            </td>
							<td align="left">
                                <input name="qqnum" type="text" id="qqnum" style="width: 200px;" />
                            </td>
                        </tr>
                        <tr>
							<td height="30" align="right">
                                <font size = 2>&nbsp;&nbsp;邮箱：</font>
                            </td>
								<td align="left">
                                <input name="email" type="text" id="email" style="width: 200px;" />
                            </td>
                        </tr>
                        <tr>
                            <td height="30" align="right">
                                <font size = 2>&nbsp;&nbsp;技术论坛：</font>
                            </td>
								<td align="left">
                                <input name="link" type="password" id="link" style="width: 200px;" />
                            </td>
						</tr>
				
						<tr>
                        	<td align="center" height="30" colspan="4" style="padding-bottom: 10px;">
                        		<input type="submit" name="Submit" value="提交" onclick="" id="Submit" style="border-style:Groove;width:60px;" />   
                        		<input type="submit" name="concel" value="取消" id="concel" style="border-style:Groove;width:60px;" />
                        	</td>
                        </tr>
					</table>
		</div>
	</div>
	
	<br><br><br>
	
	<%@ include file="../templates/footer.jsp" %>
</body>
</html>