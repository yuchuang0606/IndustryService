<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*,java.text.SimpleDateFormat" %>
<%
	User user = (User)request.getSession().getAttribute("user");
	String logintime = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(user.getLastlogin());
%>
<link rel="stylesheet" href="./css/slist.css" type="text/css" />
<div id="main" class="main">
	<%@ include file="/templates/userleftmenu.jsp"%>
	<div id="content" class="content">
		<div style="height:30px;width:717px;line-height:30px;padding-left:20px;background:#f5f5f5;">
       		<font style="font-weight:800;color: #265f9d;">用户信息</font>
       	</div>
	    <div style="width:717px;clear:both;margin:5px auto;padding:0px 10px;">
	        <div style="margin:10px 0px;" >
	            <table border="0" cellpadding="0" cellspacing="1" class="table">
	                <tr>
	                    <td width="200px" rowspan="6" valign="middle" align="center">
	                        <img src="<%=user.getUserpic() %>" style="width:100px;height:100px;border-width:0px;" />
	                    </td>
	                    <td width="100" height="25">
	                       <font size = 2>用户帐号：</font>
	                    </td>
	                    <td colspan="3" style="text-align: left">
	                    	<span><font size = 2><%=user.getUsername() %></font></span>
	                    	<% if (user.getUsergroup() == 3) {%>
	                        <span><font size = 2>&nbsp;&nbsp;[未激活]</font></span>&nbsp;&nbsp;
	                        <a href="#" style="color:#0099FF;"><font size = 2>[立即激活]</font></a>
	                        <%} %>
	                    </td>
	                </tr>
	                <tr>
	                    <td height="25">
	                        <font size = 2>积&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分：</font>
	                    </td>
	                    <td colspan="3" style="text-align: left">
	                        <span><font size = 2><%=user.getCredit() %></font></span>&nbsp;&nbsp;
	                        <a href="config?configname=coindeclare"><font size = 2>[金币、积分使用说明]</font></a>
	                    </td>
	                </tr>
	                <tr>
	                    <td height="25">
	                        <font size = 2>金&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;币：</font>
	                    </td>
	                    <td colspan="3" style="text-align: left">
	                        <span><font size = 2><%=user.getCoin() %></font></span>&nbsp;&nbsp;
	                        <a href="#" style="color:#0099FF;"><font size = 2>[充值]</font></a>
	                    </td>
	                </tr>
	                <tr>
	                    <td height="25" >
	                        <font size = 2>上传数量：</font>
	                    </td>
	                    <td width="227" style="text-align: left">
	                    	<span><font size = 2><%=user.getUploadfilenumber() %></font></span>
	                    </td>
	                    <td width="100">
	                        <font size = 2>下载数量：</font>
	                    </td>
	                    <td width="227" style="text-align: left">
	                        <span><font size = 2><%=user.getDownloadfilenumber() %></font></span>
	                    </td>
	                </tr>
	                <tr>
	                    <td height="25">
	                        <font size = 2>登录时间：</font>
	                    </td>
	                    <td style="text-align: left">
	                        <span><font size = 2><%=logintime %></font></span>
	                    </td>
	                    <td >
	                      <font size = 2>登录次数：</font>
	                    </td>
	                    <td style="text-align: left">
	                        <span><font size = 2><%=user.getLogintimes() %></font></span>
	                    </td>
	                </tr>
	                <tr>
	                    <td height="25" >
	                        <a href="#" style="color:#0099FF;"><font size = 2>[修改头像]</font></a>
	                    </td>
	                    <td colspan="3" style="text-align: left">
	                        <span style="color:Red;"></span>
	                    </td>
	                </tr>
	            </table>
	        </div>
	    </div>
	    <div style="height:30px;width:717px;line-height:30px;padding-left:20px;background:#f5f5f5;">
	    	<div style="float:left;width:60px;">
       			<font style="font-weight:800;color:#265f9d;">个人信息</font>
       		</div>
       		<div style="float:left;font-size: 12px; padding-right: 30px; font-weight: 800; color: #265f9d; float: right; width: 80px; height: 20px;">
	            <a href="#" onclick="UpdatePass(event);" style="color: #0099ff; display: block; text-align: center;">[修改密码]</a>
	        </div>
	        <div style="font-size: 12px; padding-left: 20px; font-weight: 800; color: #265f9d;
	            float: right; width: 100px; height: 20px; text-align: center;">
	            <a href="#" style="color:#0099FF;">[完善个人信息]</a>
	       	</div>
		</div>
        <div style="padding:10px 20px;" >
			<table width="697px" border="0" cellpadding="0" cellspacing="0" class="table">
				<tr>
					<td width="80" height="29" align="left">
						<font size = 2>&nbsp;真实姓名：</font>
					</td>
					<td width="267" align="left">
						<span><font size = 2>***</font></span>
					</td>
					<td width="80" align="left">
						<font size = 2> 邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</font>
					</td>
					<td width="267" align="left">
						<span><font size = 2><%=user.getEmail() %></font></span>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
						<font size = 2>&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</font>
					</td>
					<td align="left">
						<span><font size = 2>*</font></span>
					</td>
					<td align="left">
						<font size = 2> 出生日期：</font>
					</td>
					<td align="left">
						<span><font size = 2>*</font></span>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
						<font size = 2>&nbsp;所在地区：</font>
					</td>
					<td colspan="3" align="left">
						<span><font size = 2><%=user.getAddress() %></font></span>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
						<font size = 2>&nbsp;单位名称：</font>
					</td>
					<td colspan="3" align="left">
						<span><font size = 2>*</font></span>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
					    <font size = 2>&nbsp;行业类别：</font>
					</td>
					<td align="left">
					    <span><font size = 2>*</font></span>
					</td>
					<td class="table_td6" align="left">
					    <font size = 2>产业规模：</font>
					</td>
					<td align="left">
					    <span><font size = 2>*</font></span>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
					    <font size = 2>&nbsp;所在部门：</font>
					</td>
					<td align="left">
					    <span><font size = 2>*</font></span>
					</td>
					<td  align="left">
					    <font size = 2>职&nbsp;&nbsp;&nbsp;&nbsp;务：</font>
					</td>
					<td align="left">
					    <span><font size = 2>*</font></span>
					</td>
				</tr>
				<tr>
					<td width="80" height="29"  align="left">
					    <font size = 2>&nbsp;联系电话：</font>
					</td>
					<td width="267" align="left">
					    <span><font size = 2><%=user.getPhone() %></font></span>
					</td>
					<td width="80"  align="left">
					   <font size = 2> 联系邮编：</font>
					</td>
					<td width="267" align="left">
					    <span><font size = 2>*</font></span>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
					    <font size = 2>&nbsp;邮寄地址：</font>
					</td>
					<td colspan="3" align="left">
					    <span><font size = 2>*</font></span>
					</td>
				</tr>
				<tr>
					<td height="30"  align="left">
					    <font size = 2>&nbsp;个人介绍</font>
					</td>
					<td colspan="3" align="left">
					    <span><font size = 2>*</font></span>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
<script type="text/javascript">
	document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
</script>