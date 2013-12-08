<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*,java.text.SimpleDateFormat" %>
<%
	User user = (User)request.getSession().getAttribute("user");
	String logintime = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(user.getLastlogin());
	String birthday = "";
	if (null != user.getBirthdate())
		birthday = new SimpleDateFormat("yyyy-MM-dd").format(user.getBirthdate());
%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/slist.css" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/WdatePicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/util.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/reg.css" type="text/css"/>
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
	                        <img src="<%=request.getContextPath()%><%=user.getUserpic() %>" style="width:100px;height:100px;border-width:0px;" />
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
	                        <a href="<%=request.getContextPath() %>/config?configname=coindeclare"><font size = 2>[金币、积分使用说明]</font></a>
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
	    	<div style="float:left;width:100%;margin:0 auto;">
       			<font style="font-weight:800;color:#265f9d;">修改密码</font>
       		</div>
		</div>
        <div class="chpwd" style="padding:20px 150px;">
		    <table id="" width="380px" border="0" cellpadding="0" cellspacing="0" align="center">
				<tr  height="50">
					<td width="95" height="30" align="right" class="border15">
		 				<font size = 2>*&nbsp;原&nbsp;密&nbsp;码：</font>
		            </td>
					<td align="left">
						<input name="oldpwd" type="password" id="oldpwd" style="width: 180px;height:22px;" />
					</td>
				</tr>
				<tr height="50">
					<td><font size="2">*&nbsp;新&nbsp;密&nbsp;码：</font></td>
		            <td align="left">
		                <input name="pwd1" type="password" id="pwd1" onfocus="clearPwdMsg()" onblur="checkPwdLength(this.value)" style="width: 180px;height:22px;"/>
		                <label id="msg_password" style="font-size:12px;color:red;"></label>
		            </td>
		        </tr>
		        <tr height="50">
		        	<td style="text-align:right;"><font size="2">*&nbsp;确认密码：</font></td>
		            <td align="left">
		                <input name="pwd2" type="password" id="pwd2" onfocus="clearPwdMsg1(this.value)" onblur="checkPwdSame(this.value)" style="width: 180px;height:22px;"/>
		                <label id="msg_password1" style="font-size:12px;color:red;"></label>
		                <img id="pwd_img" src="<%=request.getContextPath() %>/image/gou.png" style="display:none"/>
		            </td>
				</tr>
				<tr height="50">
	                <td align="center" height="30" colspan="2">
	                	<div style="text-align:center;margin:10px auto;">
	                    <input type="submit" name="btSubmit" value="确   认" onclick="updatepwd('<%=request.getContextPath()%>')" id="btSubmit" style="cursor:pointer;color:#fff;font-weight:bold;height:30px;width:80px;background:url(<%=request.getContextPath() %>/image/nav_bg.png) repeat-x" />
	                    <input type="submit" value="取   消" onclick="cancel()" style="cursor:pointer;margin-left:20px;color:#fff;font-weight:bold;height:30px;width:80px;background:url(<%=request.getContextPath() %>/image/nav_bg.png) repeat-x" />
	                	</div>
	                </td>
            	</tr>
			</table>
		</div>
	</div>
</div>
<script type="text/javascript">
	document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
</script>