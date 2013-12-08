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
       			<font style="font-weight:800;color:#265f9d;">个人信息</font>
       		</div>
		</div>
        <div id="list" style="padding:10px 20px;" >
			<table width="717px" border="0" cellpadding="0" cellspacing="0" class="table">
				<tr>
					<td width="70" height="29" align="left">
						<font size = 2>&nbsp;真实姓名：</font>
					</td>
					<td width="257" align="left">
						<input name="realname" type="text" id="realname" value="<%=user.getRealname() %>" style="width:150px;"/>
					</td>
					<td width="70" align="left">
						<font size = 2> 邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</font>
					</td>
					<td width="257" align="left">
						<input name="txtMail" type="text" value="<%=user.getEmail()%>"id="txtMail" onfocus="clearMsg()" onblur="CheckMail(this.value)" style="width:150px;"/>
	                	<label id="email_msg" style="font-size:12px;color:red;"></label>
	                	<img id="email_img" src="<%=request.getContextPath() %>/image/gou.png" style="display:none"/>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
						<font size = 2>&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</font>
					</td>
					<td align="left">
						<div style="float:left;width:100px;height:30px;padding:5px 0px;">
						<div style="float:left;height:30px;line-height:30px;margin-left:20px;"><input id="Sex_0" type="radio" name="Sex" value="1" checked="checked" style="width:20px;"/></div>
						<div style="float:left;height:30px;line-height:30px;"><label for="Sex_0"><font size="2">男</font></label></div>
						</div>
						<div style="float:left;width:100px;height:30px;padding:5px 0px;">	
							<div style="float:left;height:30px;line-height:30px;"><input id="Sex_1" type="radio" name="Sex" value="2" style="width:20px;"/></div>
							<div style="float:left;height:30px;line-height:30px;"><label for="Sex_1"><font size="2">女</font></label></div>
						</div>
					</td>
					<td align="left">
						<font size = 2> 出生日期：</font>
					</td>
					<td align="left">
						<input id="birthday" type="text" value="<%=birthday %>" onClick="WdatePicker()" style="height:22px;width:150px"/>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
						<font size = 2>&nbsp;所在地区：</font>
					</td>
					<td colspan="3" align="left">
						<select name="province" id="province" disabled="disabled" style="width:90px;height:28px;">
						<option value="0">--请选择--</option>
						<option selected="selected" value="1">辽宁省</option>
					</select>

                    <select name="city"  id="city" disabled="disabled" style="width:90px;height:28px;">
						<option value="0">--请选择--</option>
						<option selected="selected" value="1">大连市</option>
					</select>
                    <select name="area" id="area"  style="width:90px;height:28px;">
						<option value="0">--请选择--</option>
						<option value="3253">中山区</option>
						<option value="3254">西岗区</option>
						<option value="3255">沙河口区</option>
						<option value="3256">甘井子区</option>
						<option value="3257">经济技术开发区</option>
						<option value="3258">金州新区</option>
						<option value="3259">旅顺口区</option>
						<option value="3260">瓦房店市</option>
						<option value="3261">普兰店市</option>
						<option value="3262">庄河市</option>
						<option value="3263">长海县</option>
					</select>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
						<font size = 2>&nbsp;单位名称：</font>
					</td>
					<td colspan="3" align="left">
						<input name="cpname" type="text" id="cpname" value="<%=user.getCompany() %>" style="width:275px;" onfocus="clearCpnameMsg()" onblur="isCpnameNull(this.value)"/>
	                    <label id="cpname_msg" style="font-size:12px;color:red;"></label>
		                <img id="cpname_img" src="<%=request.getContextPath() %>/image/gou.png" style="display:none"/>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
					    <font size = 2>&nbsp;行业类别：</font>
					</td>
					<td align="left">
					    <select name="industry" id="industry" style="width:154px;height:28px">
						<option selected="selected" value="1">装备行业</option>
						<option value="2">电子电器行业</option>
						<option value="3">国防军工行业</option>
						<option value="4">汽车行业</option>
						<option value="5">教育行业</option>
						<option value="6">其他行业</option>
						<option value="9">房屋建筑行业</option>
						<option value="10">土木工程行业</option>
						<option value="11">施工与装饰行业</option>
						<option value="12">模具工装</option>
						<option value="13">家电厨卫</option>
					</select>
					</td>
					<td class="table_td6" align="left">
					    <font size = 2>产业规模：</font>
					</td>
					<td align="left">
					    <select name="size" id="size" style="width:154px;height:28px">
							<option selected="selected" value="1">3000万以下</option>
							<option value="2">3000万-3亿</option>
							<option value="3">3亿以上</option>
						</select>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
					    <font size = 2>&nbsp;所在部门：</font>
					</td>
					<td align="left">
					    <input name="depart" type="text" id="depart" value="<%=user.getDepartment() %>" onfocus="clearDepartMsg()" onblur="isDepartNull(this.value)" style="width:150px;"/>
	                    <label id="depart_msg" style="font-size:12px;color:red;"></label>
		                <img id="depart_img" src="<%=request.getContextPath() %>/image/gou.png" style="display:none"/>
					</td>
					<td  align="left">
					    <font size = 2>职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：</font>
					</td>
					<td align="left">
					    <input name="duty" type="text" id="duty" value="<%=user.getJobtitle() %>" onfocus="clearDutyMsg()" onblur="isDutyNull(this.value)" style="width:150px;"/>
	                    <label id="duty_msg" style="font-size:12px;color:red;"></label>
		                <img id="duty_img" src="<%=request.getContextPath() %>/image/gou.png" style="display:none"/>
					</td>
				</tr>
				<tr>
					<td width="80" height="29"  align="left">
					    <font size = 2>&nbsp;联系电话：</font>
					</td>
					<td width="267" align="left">
					    <input name="mobile" type="text" id="mobile" value="<%=user.getPhone() %>" onfocus="clearMobileMsg()" onblur="isValidMobile(this.value)" style="width:150px;"/>
	                    <label id="mobile_msg" style="font-size:12px;color:red;"></label>
		                <img id="mobile_img" src="<%=request.getContextPath() %>/image/gou.png" style="display:none"/>
					</td>
					<td width="80"  align="left">
					   <font size = 2> 联系邮编：</font>
					</td>
					<td width="267" align="left">
					    <input name="postcode" type="text" id="postcode" value="<%=user.getPostcode() %>" style="width:150px;"/>
					</td>
				</tr>
				<tr>
					<td height="30" align="left">
					    <font size = 2>&nbsp;邮寄地址：</font>
					</td>
					<td colspan="3" align="left">
					    <input name="postaddress" id="postaddress" type="text" value="<%=user.getMailaddress() %>" style="width: 275px;" />
					</td>
				</tr>
				<tr>
					<td style="height:60px"  align="left">
					    <font size = 2>&nbsp;个人介绍：</font>
					</td>
					<td style="height:60px" colspan="3" align="left">
					    <textarea name="introduction" id="introduction" rows="4" cols="20" style="height:50px;width:508px;"><%=user.getIntroduction() %></textarea>
					</td>
				</tr>
				<tr>
	                <td align="center" height="30" colspan="4" >
	                	<div style="text-align:center;margin:10px auto;">
	                    <input type="submit" name="btSubmit" value="提   交" onclick="updateinfo('<%=request.getContextPath()%>')" id="btSubmit" style="color:#fff;font-weight:bold;height:30px;width:80px;background:url(<%=request.getContextPath() %>/image/nav_bg.png) repeat-x" />
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