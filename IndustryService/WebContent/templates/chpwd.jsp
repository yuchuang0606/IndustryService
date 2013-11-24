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
                                <div align="center"><strong>修改密码</strong>
                        </td>
					</tr>
						<tr>
							<td height="30" align="right" class="border15">
                                <font size = 2>&nbsp;&nbsp;请输入原密码：</font>
                            </td>
							<td class="border12" align="left">
                                <input name="oldpassword" type="password" id="newpassword" style="width: 150px;" />
                            </td>
                        </tr>
                        <tr>
							<td height="30" align="right" class="border15">
                                <font size = 2>&nbsp;&nbsp;请输入新密码：</font>
                            </td>
								<td class="border16" align="left">
                                <input name="newpassword" type="password" id="newpassword" style="width: 150px;" />
                            </td>
                        </tr>
                        <tr>
                            <td height="30" align="right" class="border15">
                                <font size = 2>&nbsp;&nbsp;密码确认：</font>
                            </td>
								<td class="border16" align="left">
                                <input name="r_newpassword" type="password" id="r_newpassword" style="width: 150px;" />
                            </td>
						</tr>
					</table>

                </div>

                
            </div>
        </div>
    </div>
	
</div>