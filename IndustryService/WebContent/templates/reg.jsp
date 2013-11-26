<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript" src="./js/WdatePicker.js"></script>
<script type="text/javascript" src="./js/util.js"></script>
<link rel="stylesheet" href="./css/reg.css" type="text/css"/>
<div class="main">
	<div class="regtitle">
  		<font style="font-size:16px;font-weight:800;color:#265f9d;">大连市工业云平台账号注册</font>
  	</div>
  	<div id="list" style="width:800px;padding:0px 80px;margin:30px auto;text-align:center;">
		<table width="800" border="0" cellpadding="0" cellspacing="0">
			<tr>
			    <td style="width:80px;"><font size="2">*&nbsp;登录账号：</font></td>
			    <td style="width:180px;">
			    	<input name="txtName" type="text" id="txtName" onfocus="clearNameMsg()" onblur="CheckUserName()" />
			    	<label id="msg_username" style="font-size:12px;color:red;"></label>
			    	<img id="name_img" src="./image/gou.png" style="display:none"/>
				</td>
				<td style="width:80px;text-align:right;padding-right:30px;"><font size="2">*&nbsp;真实姓名：</font></td>
				<td style="width:180px;">
					<input name="realname" type="text" id="realname" />
			    </td>
			</tr>
	        <tr>
	            <td><font size="2">*&nbsp;密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</font></td>
	            <td>
	                <input name="txtPass" type="password" id="txtPass" onfocus="clearPwdMsg()" onblur="checkPwdLength(this.value)" />
	                <label id="msg_password" style="font-size:12px;color:red;"></label>
	            </td>
	            <td style="text-align:right;padding-right:30px;"><font size="2">*&nbsp;确认密码：</font></td>
	            <td style="width:240px;">
	                <input name="txtPass1" type="password" id="txtPass1" onfocus="clearPwdMsg1(this.value)" onblur="checkPwdSame(this.value)" />
	                <label id="msg_password1" style="font-size:12px;color:red;"></label>
	                <img id="pwd_img" src="./image/gou.png" style="display:none"/>
	            </td>
	        </tr>
	        <tr>
	            <td><font size="2">*&nbsp;邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</font></td>
	            <td style="width:260px;">
	                <input name="txtMail" type="text" id="txtMail" onfocus="clearMsg()" onblur="CheckMail(this.value)" />
	                <label id="email_msg" style="font-size:12px;color:red;"></label>
	                <img id="email_img" src="./image/gou.png" style="display:none"/>
	            </td>
	            <td style="text-align:right;padding-right:30px;"><font size="2">&nbsp;&nbsp;自动登录：</font></td>
	            <td>
	                <div style="float:left;height:28px;padding:6px 0px;">
	                	<input name="cbExpires" type="checkbox" id="cbExpires" checked="checked" style="width:15px"/>
	                </div>
	                <font size="2">&nbsp;记住我的登录状态</font>
	            </td>
	        </tr>
	        <tr>
				<td height="36" align="left"><font size="2">&nbsp;&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</font></td>
	            <td>
	            	<div style="float:left;width:100px;height:30px;padding:5px 0px;">
						<div style="float:left;height:30px;line-height:30px;margin-left:20px;"><input id="Sex_0" type="radio" name="Sex" value="1" checked="checked" style="width:20px;"/></div>
						<div style="float:left;height:30px;line-height:30px;"><label for="Sex_0"><font size="2">男</font></label></div>
					</div>
					<div style="float:left;width:100px;height:30px;padding:5px 0px;">	
						<div style="float:left;height:30px;line-height:30px;"><input id="Sex_1" type="radio" name="Sex" value="2" style="width:20px;"/></div>
						<div style="float:left;height:30px;line-height:30px;"><label for="Sex_1"><font size="2">女</font></label></div>
					</div>
				</td>
				<td style="text-align:right;padding-right:30px;"><font size="2">&nbsp;&nbsp;出生日期：</font></td>
				<td align="left">
                 	<input name="txtbDay" type="text" class="Wdate" onClick="WdatePicker()" style="height:24px;"/>
				</td>
			</tr>
			<tr>
             	<td><font size="2">*&nbsp;所在地区：</font></td>
             	<td colspan="3">
        			<select name="list1" id="list1" disabled="disabled" style="width:90px;height:28px;">
						<option value="0">--请选择--</option>
						<option selected="selected" value="1">辽宁省</option>
					</select>

                    <select name="list2"  id="list2" disabled="disabled" style="width:90px;height:28px;">
						<option value="0">--请选择--</option>
						<option selected="selected" value="1">大连市</option>
					</select>
                    <select name="list3" id="list3"  style="width:90px;height:28px;">
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
                <td>
                    <font size="2">*&nbsp;单位名称：</font>
                </td>
                <td align="left" colspan="3">
                    <input name="CompanyName" type="text" id="CompanyName" style="width: 416px;" />
                </td>
            </tr>
            <tr>
                <td>
                    <font size="2">&nbsp;&nbsp;行业类别：</font>
                </td>
                <td align="left">
                    <select name="listIndustry" id="listIndustry" style="width:184px;height:28px">
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
                <td style="text-align:right;padding-right:30px;">
                    <font size="2">&nbsp;&nbsp;产值规模：</font>
                </td>
                <td>
                    <select name="listSize" id="listSize" style="width:184px;height:28px">
						<option selected="selected" value="1">3000万以下</option>
						<option value="2">3000万-3亿</option>
						<option value="3">3亿以上</option>
					</select>
				</td>
            </tr>
            <tr>
                <td >
                    <font size="2">*&nbsp;所在部门：</font>
                </td>
                <td>
                    <input name="Inwhichpart" type="text" id="Inwhichpart" />
                </td>
                <td style="text-align:right;padding-right:30px;">
                    <font size="2">&nbsp;*&nbsp;职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;务：</font>
                </td>
                <td>
                    <input name="UserDuty" type="text" id="UserDuty" />
                </td>
            </tr>
            <tr>
                <td>
                    <font size="2">*&nbsp;联系电话：</font>
                </td>
                <td>
                    <input name="mobilNumber" type="text" id="mobilNumber" />
                </td>
                <td style="text-align:right;padding-right:30px;">
                    <font size="2">&nbsp;&nbsp;邮政邮编：</font>
                </td>
                <td>
                    <input name="PostCode" type="text" id="PostCode"/>
                </td>
            </tr>
            <tr>
                <td>
                    <font size="2">&nbsp;&nbsp;邮寄地址：</font>
                </td>
                <td align="left" colspan="3">
                    <input name="PostCodeAddress" type="text" style="width: 416px;" />
                </td>
            </tr>
            <tr>
                <td colspan="4" >
                	<div style="height:100%;line-height:40px;width:400px;margin:0px auto;">
                	<div style="float:left;height:30px;line-height:30px;">
                    	<input id="Tongyitiaokuan" type="checkbox" onclick="tongyitiaokuan(this)" checked="checked" style="height:30px;width:15px;"/>
                    </div>
                    <div style="float:left;height:30px;line-height:30px;">
	                    <label for="Tongyitiaokuan"><font size="2">我已仔细阅读并接受</font>
	                        <a href="config?configname=regright" target="_blank">
	                        <font size="2">《大连市工业云平台注册条款》</font></a>
	                    </label>
                    </div>
                    </div>
                </td>
            </tr>
            <tr>
                <td align="center" height="40" colspan="4" >
                	<div style="text-align:center;margin:0px auto;">
                    <input type="submit" name="btSubmit" value="注   册" onclick="javascript:return ISInformationRight();" id="btSubmit" style="color:#fff;font-weight:bold;height:30px;width:80px;background:url(./image/nav_bg.png) repeat-x" />
                    <input name="hidEmailFlag" type="hidden" id="hidEmailFlag" value="0" />
                    <input type="submit" name="btUpdate" value="取   消" id="btUpdate" style="margin-left:50px;color:#fff;font-weight:bold;height:30px;width:80px;background:url(./image/nav_bg.png) repeat-x" />
                	</div>
                </td>
            </tr>
        </table>
    </div>
</div>