<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div style='width: 960px; clear: both; text-align: center; margin: 0 auto;'>          
            <div id="wrap" align="center">
                <div id="list">
                    <div class="item">
                        <div class="tab" align="left">
                            <ul>
                                <h4><li class="current">注册账号</li></h4> 
                            </ul>
                            
                        </div>
                        <ul class="items" style="display: block;">
                            <table width="900" border="0" cellpadding="0" cellspacing="0" align="center">
                                <tr>
                                    <td align="center" height="44" colspan="4" >
                                       <span> <label style="color: #476a94; font-size: 14px; font-weight: bold;">大连市工业设计服务平台注册</label> 
                                       </span>
                                    </td>
                                </tr>
                                <tr>
                                    <td width="105" height="30" align="left">
                                        <font size="2">&nbsp;*&nbsp;登录账号：</font>                                        
                                    </td>
                                    <td width="175" align="left">
                                        <input name="txtName" type="text" id="txtName" style="width: 150px;" onblur="oncheck_Isusable()" />
                                        <label id="msg_username" />
                                    </td>
                                    <td width="105" height="30" align="left">
                                        <font size="2">&nbsp;*&nbsp;真实姓名：</font>
                                    </td>
                                    <td width="175" height="30" align="left">
                                        <input name="realname" type="text" id="realname" style="width: 150px;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left">
                                        <font size="2">&nbsp;*&nbsp;密码：</font>
                                    </td>
                                    <td align="left">
                                        <input name="txtPass" type="password" id="txtPass" style="width: 150px;" onblur="oncheck_Islength()" />
                                        <label id="msg_password" />
                                    </td>
                                    <td height="30" align="left">
                                        <font size="2">&nbsp;*&nbsp;确认密码：</font>
                                    </td>
                                    <td align="left">
                                        <input name="txtPass1" type="password" id="txtPass1" style="width: 150px;" onblur="oncheck_Isthesame()" />
                                        <label id="passwordcheck" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left">
                                        <font size="2">&nbsp;*&nbsp;邮箱：</font>
                                    </td>
                                    <td align="left" >
                                        <input name="txtMail" type="text" id="txtMail" style="width: 150px;" onblur="oncheck_IsEmailUsable()" />
                                            <label id="email_msg"></label>&nbsp;
                                    </td>
                                    <td height="30" align="left">
                                        <font size="2">&nbsp;&nbsp;自动登录：</font>
                                    </td>
                                    <td align="left">
                                        <input name="cbExpires" type="checkbox" id="cbExpires" checked="checked" /><font size="2">记住我的登录状态</font>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left">
                                        <font size="2">&nbsp;&nbsp;性别：</font>
                                    </td>
                                    <td align="left">
                                        <table id="Sex" border="0">
	<tr>
		<td><input id="Sex_0" type="radio" name="Sex" value="1" checked="checked" /><label for="Sex_0"><font size="2">男</font></label></td><td><input id="Sex_1" type="radio" name="Sex" value="2" /><label for="Sex_1"><font size="2">女</font></label></td><td></td>
	</tr>
</table>
                                    </td>
                                    <td height="30" align="left">
                                        <font size="2">&nbsp;&nbsp;出生日期：</font>
                                    </td>
                                    <td align="left">
                                        <input name="txtbDay" type="text" id="txtbDay" style="width: 150px;" /><font size="2">(格式：2012-1-1)</font>
                                    </td>
                                </tr>
                                
                                
                                
                                <tr>
                                    <td colspan="4" width="850px">
                                        <div id="UpdatePanel1">
	
                                                <table width="850px">
                                                    <tr>
                                                        <td height="30" width="155px" align="left">
                                                            <font size="2">&nbsp;*所在地区：</font>
                                                        </td>
                                                        <td align="left" width="175px">
                                                            <select name="list1" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;list1\&#39;,\&#39;\&#39;)&#39;, 0)" id="list1" disabled="disabled" style="width:150px;">
		<option value="0"><font size="2">--请选择--</font></option>
		
		<option selected="selected" value="1">辽宁省</option>
		
	</select>
                                                        </td>
                                                        <td align="left" width="175px">
                                                            <select name="list2" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;list2\&#39;,\&#39;\&#39;)&#39;, 0)" id="list2" disabled="disabled" style="width:150px;">
		<option value="0">--请选择--</option>
		
		<option selected="selected" value="1">大连市</option>

	</select>
                                                        </td>
                                                        <td align="left" width="175px">
                                                            <select name="list3" id="list3"  style="width:150px;">
		<option value="0">--请选择--</option>
		<option value="3253">中山区</option>
		<option value="3254">西岗区</option>
		<option value="3255">沙河口区</option>
		<option value="3256">甘井子区</option>
		<option value="3257">经济技术开发区区</option>
		<option value="3258">金州新区</option>
		<option value="3259">旅顺口区</option>
		<option value="3260">瓦房店市</option>
		<option value="3261">普兰店市</option>
		<option value="3262">庄河市</option>
		<option value="3263">长海县</option>
		

	</select>
                                                        </td>
                                                        <td width="120px">
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                </table>
                                            
</div>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left">
                                        <font size="2">&nbsp;&nbsp;*单位名称：</font>
                                    </td>
                                    <td align="left" colspan="3">
                                        <input name="CompanyName" type="text" id="CompanyName" style="width: 400px;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left">
                                        <font size="2">&nbsp;&nbsp;行业类别：</font>
                                    </td>
                                    <td align="left">
                                        <select name="listIndustry" id="listIndustry" style="width:150px;">
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
                                    <td height="30" align="left">
                                        <font size="2">&nbsp;&nbsp;产值规模：</font>
                                    </td>
                                    <td align="left">
                                        <select name="listSize" id="listSize" style="width:150px;">
	<option selected="selected" value="1">3000万以下</option>
	<option value="2">3000万-3亿</option>
	<option value="3">3亿以上</option>

</select>
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left">
                                        <font size="2">&nbsp;&nbsp;*所在部门：</font>
                                    </td>
                                    <td align="left">
                                        <input name="Inwhichpart" type="text" id="Inwhichpart" style="width: 150px;" />
                                    </td>
                                    <td height="30" align="left">
                                        <font size="2">&nbsp;&nbsp;*职务：</font>
                                    </td>
                                    <td align="left">
                                        <input name="UserDuty" type="text" id="UserDuty" style="width: 150px;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left">
                                        <font size="2">&nbsp;&nbsp;*联系电话：</font>
                                    </td>
                                    <td align="left">
                                        <input name="mobilNumber" type="text" id="mobilNumber" style="width: 150px;" />
                                    </td>
                                    <td height="30" align="left">
                                        <font size="2">&nbsp;&nbsp;邮政邮编：</font>
                                    </td>
                                    <td align="left">
                                        <input name="PostCode" type="text" id="PostCode" style="width: 150px;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="30" align="left">
                                        <font size="2">&nbsp;&nbsp;邮寄地址：</font>
                                    </td>
                                    <td align="left" colspan="3">
                                        <input name="PostCodeAddress" type="text" id="PostCodeAddress" style="width: 450px;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td height="15" colspan="4" align="left">
                                        <input id="Tongyitiaokuan" type="checkbox" onclick="tongyitiaokuan(this)" checked="checked" /><label
                                            for="Tongyitiaokuan"><font size="2">我已仔细阅读并接受</font><a href="RegistRight.aspx" target="_blank"><font size="2">《大连市工业设计服务平台注册条款》</font></a></label>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="center" height="30" colspan="4" style="padding-bottom: 10px;">
                                        <input type="submit" name="btSubmit" value="提交" onclick="javascript:return ISInformationRight();" id="btSubmit" style="border-style:Groove;width:60px;" />
                                        <input name="hidEmailFlag" type="hidden" id="hidEmailFlag" value="0" />
                                        <input type="submit" name="btUpdate" value="取消" id="btUpdate" style="border-style:Groove;width:60px;" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" height="10px">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </ul>
                      
                    </div>
                </div>
            </div>
           
        </div>
         
<br><br><br><br>