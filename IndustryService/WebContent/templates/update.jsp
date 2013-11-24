<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./css/slist.css" type="text/css" />
<!-- <div id = "contenet" align="center" style="height:auto;width:960px; margin:0 auto; "> -->
<div id="main" class="main">
<%@ include file="/templates/userleftmenu.jsp"%>
<div id="content_in" class="content">
        <div style="width: 720px; float: right; text-align: left">
            <div align="center" style="width: 720px; clear: both; text-align: c enter; margin: 0 auto;">
                
                <div class="c_r_2"  style="border:2px solid #EBEBEB">
                    <table width="720px" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"
                        align="center">
                        <tr>
                            <td height="30" background="image/biaoq_bg.gif">
                                <table width="720" height="28" border="0" cellpadding="0" cellspacing="0">
                                    <tr> 
                                        <td width="25">
                                            <img src="image/u_biaoqian.gif" width="19" height="28" />
                                        </td>
                                        <td width="720">
                                            <div align="left">
                                                <strong>用户信息</strong></div>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <input name="ctl00$ContentPlaceHolder1$hidValue" type="hidden" id="ctl00_ContentPlaceHolder1_hidValue" value="0" />
                    <input name="ctl00$ContentPlaceHolder1$hidValue1" type="hidden" id="ctl00_ContentPlaceHolder1_hidValue1" value="0" />
                    <table width="755px" border="0" cellpadding="0" cellspacing="1" class="table">
                        <tr>
                            <td height="10px" valign="top" colspan="5" class="bt_bg">
                            </td>
                        </tr>
                        <tr>
                            <td width="200px" rowspan="6" valign="top" align="center">
                                <img id="ctl00_ContentPlaceHolder1_UserImg" src="image/user.png" style="width:80px;border-width:0px;" />
                            </td>
                            <td width="100" height="25" class="table_td6">
                               <font size = 2>用户帐号：</font>
                            </td>
                            <td colspan="3" style="text-align: left">
                                &nbsp;&nbsp;<span id="ctl00_ContentPlaceHolder1_lbName1"><font size = 2>yhw</font>                 </span>
                                <span id="ctl00_ContentPlaceHolder1_lbAct"><font size = 2>[未激活]</font></span>
                                &nbsp;&nbsp;<a id="ctl00_ContentPlaceHolder1_lbtAct" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$lbtAct&#39;,&#39;&#39;)" style="color:#0099FF;"><font size = 2>[立即激活]</font></a>
                            </td>
                        </tr>
                        <tr>
                            <td height="25" class="table_td6">
                                <font size = 2>积&nbsp;&nbsp;&nbsp;&nbsp;分：</font>
                            </td>
                            <td colspan="3" style="text-align: left">
                                &nbsp;&nbsp;<span id="ctl00_ContentPlaceHolder1_lbScore1"><font size = 2>0</font></span>
                                &nbsp;&nbsp;<a href="JinBiSuoMing.aspx"><font size = 2>[金币、积分使用说明]</font></a>
                            </td>
                        </tr>
                        <tr>
                            <td height="25" class="table_td6">
                                <font size = 2>金&nbsp;&nbsp;&nbsp;&nbsp;币：</font>
                            </td>
                            <td colspan="3" style="text-align: left">
                                &nbsp;&nbsp;<span id="ctl00_ContentPlaceHolder1_lbScore"><font size = 2>2.00</font></span>
                                &nbsp;&nbsp;<a id="ctl00_ContentPlaceHolder1_btMod" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$btMod&#39;,&#39;&#39;)" style="color:#0099FF;"><font size = 2>[充值]</font></a>
                            </td>
                        </tr>
                        <tr>
                            <td height="25" class="table_td6">
                                <font size = 2>上传数量：</font>
                            </td>
                            <td width="227" style="text-align: left">
                                &nbsp;&nbsp;<span id="ctl00_ContentPlaceHolder1_lbUpSum"><font size = 2>0</font></span>
                            </td>
                            <td width="100" class="table_td6">
                                <font size = 2>下载数量：</font>
                            </td>
                            <td width="227" style="text-align: left">
                                &nbsp;&nbsp;<span id="ctl00_ContentPlaceHolder1_lbDownSum"><font size = 2>0</font></span>
                            </td>
                        </tr>
                        <tr>
                            <td height="25" class="table_td6">
                                <font size = 2>登录时间：</font>
                            </td>
                            <td style="text-align: left">
                                &nbsp;&nbsp;<span id="ctl00_ContentPlaceHolder1_lbDate"><font size = 2>2013/11/18 18:29:40</font></span>
                            </td>
                            <td class="table_td6">
                              <font size = 2>登录次数：</font>
                            </td>
                            <td style="text-align: left">
                                &nbsp;&nbsp;<span id="ctl00_ContentPlaceHolder1_lbOpNum"><font size = 2>0</font></span>
                            </td>
                        </tr>
                        <tr>
                            <td height="25" class="table_td7">
                                <a id="ctl00_ContentPlaceHolder1_btMod1" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$btMod1&#39;,&#39;&#39;)" style="color:#0099FF;"><font size = 2>[修改头像]</font></a>
                            </td>
                            <td colspan="3" style="text-align: left">
                                &nbsp;&nbsp;
                                
                                <span id="ctl00_ContentPlaceHolder1_lbsub" style="color:Red;"></span>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="5" height="3px">
                                &nbsp;
                            </td>
                        </tr>
                    </table>
                </div>
                <div id="ctl00_ContentPlaceHolder1_div2" class="c_r_2">
                    <table id="ctl00_ContentPlaceHolder1_tb1" width="755px" border="0" cellpadding="0" cellspacing="0" align="left">
	<tr>
		<td height="44" colspan="4" class="table_td1">
                                <div align="center"><strong>个人信息</strong>
                            </td>
	</tr>
	<tr>
		<td width="110" height="30" align="left" class="border15">
                                <font size = 2>&nbsp;*&nbsp;登录账号：</font>
                            </td>
		<td width="190" class="border12" align="left">
                                <input name="ctl00$ContentPlaceHolder1$txtName" type="text" id="ctl00_ContentPlaceHolder1_txtName" style="width: 150px;" onblur="oncheck_Isusable()" disabled="disabled" value="yhw" />
                                <label id="msg_username" />
                                
                            </td>
		<td width="110" height="30" align="left" class="border15">
                                <font size = 2>&nbsp;*&nbsp;真实姓名：</font>
                            </td>
		<td width="190" height="30" align="left" class="border16">
                                <input name="ctl00$ContentPlaceHolder1$realname" type="text" id="ctl00_ContentPlaceHolder1_realname" style="width: 150px;" value="姚宏伟" />
                            </td>
	</tr>
	<tr>
		<td height="30" align="left" class="border15">
                                <font size = 2>&nbsp;*&nbsp;邮箱：</font>
                            </td>
		<td class="border16" align="left" colspan="3">
                                <input name="ctl00$ContentPlaceHolder1$txtMail" type="text" id="ctl00_ContentPlaceHolder1_txtMail" style="width: 150px;" onblur="oncheck_IsEmailUsable()" disabled="disabled" value="earljohn@163.com" />
                                <label id="email_msg" />
                            </td>
	</tr>
	<tr>
		<td height="30" align="left" class="border15">
                                <font size = 2>&nbsp;&nbsp;性别：</font>
                            </td>
		<td align="left" class="border12">
                                <table id="ctl00_ContentPlaceHolder1_Sex" border="0">
			<tr>
				<td><input id="ctl00_ContentPlaceHolder1_Sex_0" type="radio" name="ctl00$ContentPlaceHolder1$Sex" value="1" checked="checked" /><label for="ctl00_ContentPlaceHolder1_Sex_0"><font size = 2>男</font></label></td><td><input id="ctl00_ContentPlaceHolder1_Sex_1" type="radio" name="ctl00$ContentPlaceHolder1$Sex" value="2" /><label for="ctl00_ContentPlaceHolder1_Sex_1"><font size = 2>女</font></label></td><td><input id="ctl00_ContentPlaceHolder1_Sex_2" type="radio" name="ctl00$ContentPlaceHolder1$Sex" value="0" /><label for="ctl00_ContentPlaceHolder1_Sex_2"><font size = 2>保密</font></label></td>
			</tr>
		</table>
                            </td>
		<td height="30" align="left" class="border15">
                                <font size = 2>&nbsp;&nbsp;出生日期：</font>
                            </td>
		<td align="left" class="border16">
                                <input name="ctl00$ContentPlaceHolder1$txtbDay" type="text" id="ctl00_ContentPlaceHolder1_txtbDay" style="width: 150px;" />
                            </td>
	</tr>
	<tr>
		<td height="30" align="left" class="border15">
                                <font size = 2>&nbsp;&nbsp;所在地区:</font>
                            </td>
		<td align="left" class="border12">
                                <select name="ctl00$ContentPlaceHolder1$list1" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$list1\&#39;,\&#39;\&#39;)&#39;, 0)" id="ctl00_ContentPlaceHolder1_list1" disabled="disabled" style="width:150px;">
			<option value="0"><font size="2">--请选择--</font></option>
		
		<option selected="selected" value="1">辽宁省</option>

		</select>
                            </td>
		<td align="left" class="border16">
                                <select name="ctl00$ContentPlaceHolder1$list2" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$list2\&#39;,\&#39;\&#39;)&#39;, 0)" id="ctl00_ContentPlaceHolder1_list2" disabled="disabled" style="width:150px;">
			<option value="0">--请选择--</option>
		
		<option selected="selected" value="1">大连市</option>

		</select>
                            </td>
		<td align="left" class="border16">
                                <select name="ctl00$ContentPlaceHolder1$list3" id="ctl00_ContentPlaceHolder1_list3"  style="width:150px;">
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
	</tr>
	<tr>
		<td height="30" align="left" class="border15">
                                <font size = 2>&nbsp;&nbsp;*单位名称：</font>
                            </td>
		<td class="border16" align="left" colspan="3">
                                <input name="ctl00$ContentPlaceHolder1$CompanyName" type="text" id="ctl00_ContentPlaceHolder1_CompanyName" style="width: 400px;" value="山东" />
                            </td>
	</tr>
	<tr>
		<td height="30" align="left" class="border15">
                                <font size = 2>&nbsp;&nbsp;行业类别：</font>
                            </td>
		<td align="left" class="border12">
                                <select name="ctl00$ContentPlaceHolder1$listIndustry" id="ctl00_ContentPlaceHolder1_listIndustry" style="width:150px;">
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
		<td height="30" align="left" class="border15">
                                <font size = 2>&nbsp;&nbsp;产值规模：</font>
                            </td>
		<td align="left" class="border16">
                                <select name="ctl00$ContentPlaceHolder1$listSize" id="ctl00_ContentPlaceHolder1_listSize" style="width:150px;">
			<option selected="selected" value="1">3000万以下</option>
			<option value="2">3000万-3亿</option>
			<option value="3">3亿以上</option>

		</select>
                            </td>
	</tr>
	<tr>
		<td height="30" align="left" class="border15">
                                <font size = 2>&nbsp;&nbsp;*所在部门：</font>
                            </td>
		<td class="border12" align="left">
                                <input name="ctl00$ContentPlaceHolder1$Inwhichpart" type="text" id="ctl00_ContentPlaceHolder1_Inwhichpart" style="width: 150px;" value="生产" />
                            </td>
		<td height="30" align="left" class="border15">
                                <font size = 2>&nbsp;&nbsp;*职务：</font>
                            </td>
		<td class="border16" align="left">
                                <input name="ctl00$ContentPlaceHolder1$UserDuty" type="text" id="ctl00_ContentPlaceHolder1_UserDuty" style="width: 150px;" value="经理" />
                            </td>
	</tr>
	<tr>
		<td height="30" align="left" class="border15">
                                <font size = 2>&nbsp;&nbsp;*联系电话：</font>
                            </td>
		<td class="border12" align="left">
                                <input name="ctl00$ContentPlaceHolder1$mobilNumber" type="text" id="ctl00_ContentPlaceHolder1_mobilNumber" style="width: 150px;" value="18742517961" />
                            </td>
		<td height="30" align="left" class="border15">
                                <font size = 2>&nbsp;&nbsp;邮政邮编：</font>
                            </td>
		<td class="border16" align="left">
                                <input name="ctl00$ContentPlaceHolder1$PostCode" type="text" id="ctl00_ContentPlaceHolder1_PostCode" style="width: 150px;" />
                            </td>
	</tr>
	<tr>
		<td height="30" align="left" class="border15">
                                <font size = 2>&nbsp;&nbsp;邮寄地址：</font>
                            </td>
		<td class="border16" align="left" colspan="3">
                                <input name="ctl00$ContentPlaceHolder1$PostCodeAddress" type="text" id="ctl00_ContentPlaceHolder1_PostCodeAddress" style="width: 450px;" />
                            </td>
	</tr>
	<tr>
		<td height="30" align="left" class="border15">
                                <font size = 2>&nbsp;&nbsp;个人介绍：</font>
                            </td>
		<td class="border16" align="left" colspan="3">
                                <textarea name="ctl00$ContentPlaceHolder1$txtMyMemo" rows="2" cols="20" id="ctl00_ContentPlaceHolder1_txtMyMemo" style="height:30px;width:450px;">
</textarea>
                            </td>
	</tr>
	<tr>
		<td height="30" colspan="4" style="border-left: 1px solid #e5e5e5; border-right: 1px solid #e5e5e5;
                                border-bottom: 1px solid #e5e5e5; padding-bottom: 10px;" align="center">
                                <input type="submit" name="ctl00$ContentPlaceHolder1$btSubmit" value="提交" id="ctl00_ContentPlaceHolder1_btSubmit" style="border-style:Groove;width:60px;" />
                                <input name="ctl00$ContentPlaceHolder1$hidEmailFlag" type="hidden" id="ctl00_ContentPlaceHolder1_hidEmailFlag" value="0" />
                                <input type="submit" name="ctl00$ContentPlaceHolder1$btUpdate" value="取消" id="ctl00_ContentPlaceHolder1_btUpdate" style="border-style:Groove;width:60px;" />
                            </td>
	</tr>
	<tr>
		<td colspan="2" height="10px">
                                &nbsp;
                            </td>
	</tr>
</table>

                </div>

                
            </div>
        </div>
    </div>
	
</div>