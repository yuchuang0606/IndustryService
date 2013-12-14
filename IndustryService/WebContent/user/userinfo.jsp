<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*,java.text.SimpleDateFormat" %>
<%
	User user = (User)request.getSession().getAttribute("user");
	String logintime = user.getLastlogin();
	String birthday = user.getBirthdate();
	String realname = user.getRealname();
	if (realname == null) realname = "";
	String jobtitle = user.getJobtitle();
	if (jobtitle == null) jobtitle = "";
	String postcode = user.getPostcode();
	if (postcode == null) postcode = "";
	String mailaddress = user.getMailaddress();
	if (mailaddress == null) mailaddress = "";
	String introduction = user.getIntroduction();
	if (introduction == null) introduction = "";
%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/slist.css" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/util.js"></script>
<div id="main" class="main">
	<%if (user.getUsergroup() ==1) {%>
	<%@ include file="../admin/siderbar.jsp" %>
	<%} else { %>
	<%@ include file="/user/userleftmenu.jsp"%>
	<%} %>
	<div id="content" class="content">
		<div style="height:30px;width:717px;line-height:30px;padding-left:20px;background:#f5f5f5;">
       		<font style="font-weight:800;color: #265f9d;">用户信息</font>
       	</div>
	    <div style="width:717px;clear:both;margin:5px auto;padding:0px 10px;">
	        <div style="margin:10px 0px;" >
	            <table border="0" cellpadding="0" cellspacing="1" class="table">
	                <tr>
	                    <td width="200px" rowspan="6" valign="middle" align="center">
	                        <img src="<%=request.getContextPath() %><%=user.getUserpic() %>" style="width:100px;height:100px;border-width:0px;" />
	                    </td>
	                    <td width="100" height="25">
	                       <font size = 2>用户帐号：</font>
	                    </td>
	                    <td colspan="3" style="text-align: left">
	                    	<span><font size = 2><%=user.getUsername() %></font></span>
	                    	<% if (user.getUsergroup() == 3) {%>
	                        <span><font size = 2>&nbsp;&nbsp;[未激活]</font></span>&nbsp;&nbsp;
	                        <a href="javascript:void(0);" style="color:#0099FF;" onclick="sendMail('<%=user.getEmail() %>','<%=request.getContextPath()%>')"><font size = 2>[立即激活]</font></a>
	                        <%} else {%>
	                        <font size="1" color="gray">（已激活）</font>
	                        <%} %>
	                    </td>
	                </tr>
	                <tr>
	                    <td height="25">
	                        <font size = 2>积&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;分：</font>
	                    </td>
	                    <td colspan="3" style="text-align: left">
	                        <span><font size = 2><%=user.getCredit() %></font></span>&nbsp;&nbsp;
	                        <a href="<%=request.getContextPath() %>/config?configname=coindeclare"><font size = 2>[金币、积分使用说明]</font></a>
	                    </td>
	                </tr>
	                <tr>
	                    <td height="25">
	                        <font size = 2>金&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;币：</font>
	                    </td>
	                    <td colspan="3" style="text-align: left">
	                        <span><font size = 2><%=user.getCoin() %></font></span>&nbsp;&nbsp;
	                        <a href="javascript:void(0);" style="color:#0099FF;"><font size = 2>[充值]</font></a><font size="1" color="gray">（暂未开通）</font>
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
	                        <font size = 2>上次登录：</font>
	                    </td>
	                    <td style="text-align: left">
	                        <span><font size = 2><%=logintime %></font></span>
	                    </td>
	                    <td>
	                      <font size = 2>登录次数：</font>
	                    </td>
	                    <td style="text-align: left">
	                        <span><font size = 2><%=user.getLogintimes() %></font></span>
	                    </td>
	                </tr>
	                <tr>
	                    <td height="25" >
	                        <input type="button" onclick="displayForm()" value="修改头像" style="color:#0099FF;font-size:2"/>
	                    </td>
	                    <td colspan="3" style="text-align: left">
	                    	<div id="updatepic" style="display:none">
	                    		<form id="headform" method="post" 
									enctype="MULTIPART/FORM-DATA" 
        							action="upload">
								<input type="file" name="imgfile" id="imgfile" value="浏览">
								<input type="button" value="上传" onclick="if(checkImg(document.getElementById('imgfile').value)==false)return;updateHeadpic('<%=request.getContextPath()%>')"/>
								<input type="button" value="取消" onclick="hiddenForm()">
								</form>
							</div><!-- onsubmit="checkImg();updateHeadpic();return false;" -->
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
	            <a href="./changepwd.jsp" style="color: #0099ff; display: block; text-align: center;">[修改密码]</a>
	        </div>
	        <div style="font-size: 12px; padding-left: 20px; font-weight: 800; color: #265f9d;
	            float: right; width: 100px; height: 20px; text-align: center;">
	            <a href="./updateuser.jsp" style="color:#0099FF;">[完善个人信息]</a>
	       	</div>
		</div>
        <div id="detailinfo" style="padding:10px 20px;" >
			<table width="697px" border="0" cellpadding="0" cellspacing="0" class="table">
				<tr>
					<td width="80" height="29" align="left">
						<font size = 2>&nbsp;真实姓名：</font>
					</td>
					<td width="267" align="left">
						<span><font size = 2><%=realname %></font></span>
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
						<span><font size = 2><%=user.getGender() %></font></span>
					</td>
					<td align="left">
						<font size = 2> 出生日期：</font>
					</td>
					<td align="left">
						<span><font size = 2><%=birthday %></font></span>
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
						<span><font size = 2><%=user.getCompany() %></font></span>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
					    <font size = 2>&nbsp;行业类别：</font>
					</td>
					<td align="left">
					    <span><font size = 2><%=user.getIndustry() %></font></span>
					</td>
					<td class="table_td6" align="left">
					    <font size = 2>产业规模：</font>
					</td>
					<td align="left">
					    <span><font size = 2><%=user.getScale() %></font></span>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
					    <font size = 2>&nbsp;所在部门：</font>
					</td>
					<td align="left">
					    <span><font size = 2><%=user.getDepartment() %></font></span>
					</td>
					<td  align="left">
					    <font size = 2>职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：</font>
					</td>
					<td align="left">
					    <span><font size = 2><%=jobtitle %></font></span>
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
					    <span><font size = 2><%=postcode %></font></span>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
					    <font size = 2>&nbsp;邮寄地址：</font>
					</td>
					<td colspan="3" align="left">
					    <span><font size = 2><%=mailaddress %></font></span>
					</td>
				</tr>
				<tr>
					<td height="30"  align="left">
					    <font size = 2>&nbsp;个人介绍</font>
					</td>
					<td colspan="3" align="left">
					    <span><font size = 2><%=introduction %></font></span>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
<script type="text/javascript">
	document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
</script>