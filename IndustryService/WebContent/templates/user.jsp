<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./css/slist.css" type="text/css" />
<!-- <div id = "contenet" align="center" style="height:auto;width:960px; margin:0 auto; "> -->
<div id="main" class="main">
<%@ include file="/templates/userleftmenu.jsp"%>
<div id="content" class="content">
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
                <div id="ctl00_ContentPlaceHolder1_OpInfo" class="c_r_2" style="border:2px solid #EBEBEB">
                    <table width="755px" border="0" cellpadding="0" cellspacing="0" class="table">
                        <tr id="ctl00_ContentPlaceHolder1_trOp" class="table_td1">
							<td width="80" height="29px" align="left" style="font-size: 14px; padding-left: 10px;
                                font-weight: 800; color: #265f9d;">
                                	个人信息
                            </td>
							<td height="29" colspan="3" align="right">
                                <div id="ctl00_ContentPlaceHolder1_PassWord" style="font-size: 12px; padding-right: 30px; font-weight: 800; color: #265f9d;
                                    float: right; width: 80px; height: 20px;">
                                    <a href="#" onclick="UpdatePass(event);" style="color: #0099ff; display: block; text-align: center;">
                                        [修改密码]</a>
                                </div>
                                <div style="font-size: 12px; padding-left: 20px; font-weight: 800; color: #265f9d;
                                    float: right; width: 100px; height: 20px; text-align: center;">
                                    <a id="ctl00_ContentPlaceHolder1_btUpOpInfo" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$btUpOpInfo&#39;,&#39;&#39;)" style="color:#0099FF;">[完善个人信息]</a>
                                </div>
                                
                            </td>
						</tr>

                        <tr>
                            <td width="80" height="29" class="table_td6" align="left">
                                <font size = 2>&nbsp;真实姓名：</font>
                            </td>
                            <td width="267" align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbName"><font size = 2>姚宏伟</font></span>
                            </td>
                            <td width="80" class="table_td6" align="left">
                               <font size = 2> 邮&nbsp;&nbsp;&nbsp;&nbsp;箱：</font>
                            </td>
                            <td width="267" align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbMail"><font size = 2>earljohn@163.com</font></span>
                            </td>
                        </tr>
                        <tr>
                            <td height="30" class="table_td6" align="left">
                                <font size = 2>&nbsp;性&nbsp;&nbsp;&nbsp;&nbsp;别：</font>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbSex"><font size = 2>男</font></span>
                            </td>
                            <td class="table_td6" align="left">
                               <font size = 2> 出生日期：</font>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbBDay"></span>
                            </td>
                        </tr>
                        <tr>
                            <td height="30" class="table_td6" align="left">
                                <font size = 2>&nbsp;所在地区：</font>
                            </td>
                            <td colspan="3" align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbArea1"><font size = 2>山东省</font></span>&nbsp;&nbsp;&nbsp;
                                <span id="ctl00_ContentPlaceHolder1_lbArea"><font size = 2>诸城市</font></span>
                            </td>
                        </tr>
                        <tr>
                            <td height="30" class="table_td6" align="left">
                                <font size = 2>&nbsp;单位名称：</font>
                            </td>
                            <td colspan="3" align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbCom"><font size = 2>山东</font></span>
                            </td>
                        </tr>
                        <tr>
                            <td height="30" class="table_td6" align="left">
                                <font size = 2>&nbsp;行业类别：</font>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbIndu"><font size = 2>装备行业</font></span>
                            </td>
                            <td class="table_td6" align="left">
                                <font size = 2>产业规模：</font>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbSize"><font size = 2>3000万以下</font></span>
                            </td>
                        </tr>
                        <tr>
                            <td height="30" class="table_td6" align="left">
                                <font size = 2>&nbsp;所在部门：</font>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbDept"><font size = 2>生产</font></span>
                            </td>
                            <td class="table_td6" align="left">
                                <font size = 2>职&nbsp;&nbsp;&nbsp;&nbsp;务：</font>
                            </td>
                            <td align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbPos"><font size = 2>经理</font></span>
                            </td>
                        </tr>
                        <tr>
                            <td width="80" height="29" class="table_td6" align="left">
                                <font size = 2>&nbsp;联系电话：</font>
                            </td>
                            <td width="267" align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbCall"><font size = 2>18742517961</font></span>
                            </td>
                            <td width="80" class="table_td6" align="left">
                               <font size = 2> 联系邮编：</font>
                            </td>
                            <td width="267" align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbMailCode"></span>
                            </td>
                        </tr>
                        <tr>
                            <td height="30" class="table_td6" align="left">
                                <font size = 2>&nbsp;邮寄地址：</font>
                            </td>
                            <td colspan="3" align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbMailAdd"></span>
                            </td>
                        </tr>
                        <tr>
                            <td height="30" class="table_td6" align="left">
                                <font size = 2>&nbsp;个人介绍</font>
                            </td>
                            <td colspan="3" align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbMyMemo"></span>
                            </td>
                        </tr>
                        <tr>
                            <td height="30" width="100" class="table_td6" align="left">
                                <font size = 2>&nbsp;CAXA通讯：</font>
                            </td>
                            <td colspan="3" align="left">
                                <span id="ctl00_ContentPlaceHolder1_lbOrder"><font size = 2>未订阅</font></span>&nbsp;&nbsp;&nbsp;&nbsp;
                                <span id="ctl00_ContentPlaceHolder1_lbOrderDate"></span>
                            </td>
                        </tr>
                    </table>
                </div>
                
            </div>
        </div>
    </div>
	
</div>