<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./css/slist.css" type="text/css" />
<div id="main" class="main">
	<%@ include file="/templates/userleftmenu.jsp"%>
	    <div id="content_r" class="content">
        <script type="text/javascript">
//<![CDATA[
Sys.WebForms.PageRequestManager._initialize('ctl00$ContentPlaceHolder1$ScriptManager1', 'aspnetForm', ['tctl00$ContentPlaceHolder1$LodFile$UpdatePanel1','','tctl00$ContentPlaceHolder1$LodFile$UpdatePanel2',''], [], ['ctl00$ContentPlaceHolder1$LodFile$btSave',''], 90, 'ctl00');
//]]>
</script>

        <div class="c_r_2">
            <table width="745" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="30" background="images/biaoq_bg.gif" >
                        <table width="745" height="28" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="745">
                                    <table width="745" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td width="378" height="30" align="left" class="font7"  cellpadding="0" cellspacing="0">
                           <font size ="3"> 上传资源</font>&nbsp;&nbsp;
                            <label id="ctl00_ContentPlaceHolder1_lbMsg" style="background-color: Yellow; color: #FF0000; font-size: small;">
                            </label>
                        </td>
                    </tr>
                </table></td>
                                <td width="1">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                
<script type = "text/javascript" language = "javascript">
    function SelectImg(obj) {
        var hid = document.getElementById("ctl00_ContentPlaceHolder1_LodFile_hidTxtLocPath");
        var ctl = document.getElementById("ctl00_ContentPlaceHolder1_LodFile_fuFile2");
        hid.value = ctl.value;
        __doPostBack("ctl00$ContentPlaceHolder1$LodFile$lbtUpLoadTxt", "");
        return false;
    }

    function checkright() {

        var zyname = document.getElementById("ctl00_ContentPlaceHolder1_LodFile_txtZyName").value;
        if (trimvalue(zyname) == "") {
            alert("请填写资源名称！");
            return false;
        }
        var strReg="";   
        var r;
        var txtSubMon1 = document.getElementById("ctl00_ContentPlaceHolder1_LodFile_txtSubMon1").value;
        var lbMsg = document.getElementById("ctl00_ContentPlaceHolder1_LodFile_lbMsg");
        strReg = "^\\d+$"; 
        r=txtSubMon1.search(strReg);
        if (r == -1) {
            lbMsg.innerHTML = "金币数应为非负整数！";
            return false;
        } else {
            lbMsg.innerHTML = "";
        
        }
    }
</script>
<div id="ctl00_ContentPlaceHolder1_LodFile_UpdatePanel1">
	
        <input name="ctl00$ContentPlaceHolder1$LodFile$hidStrSql1" type="hidden" id="ctl00_ContentPlaceHolder1_LodFile_hidStrSql1" />
        <input name="ctl00$ContentPlaceHolder1$LodFile$hidStrSql2" type="hidden" id="ctl00_ContentPlaceHolder1_LodFile_hidStrSql2" />
        <input name="ctl00$ContentPlaceHolder1$LodFile$hidTxtLocPath" type="hidden" id="ctl00_ContentPlaceHolder1_LodFile_hidTxtLocPath" />
        <div style="text-align: center">
            <table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
                <tr>
                    <td colspan = "2" align="left">
                        <label id="ctl00_ContentPlaceHolder1_LodFile_lbMsg" style="background-color: Yellow; color: #FF0000; font-size: small;">
                        </label>
                        <input name="ctl00$ContentPlaceHolder1$LodFile$hidUid" type="hidden" id="ctl00_ContentPlaceHolder1_LodFile_hidUid" value="0" />
                    </td>
                </tr>
                <tr>
                    <td height="25" align="left" width = "100px" valign = "top" style =" padding-top:8px;">
                        <font size = 2>类型：</font>
                    </td>
                    <td valign="top" align="left" valign = "top">
                        <table id="ctl00_ContentPlaceHolder1_LodFile_rbZyUpType" border="0">
		<tr>
			<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyUpType_0" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyUpType" value="1" checked="checked" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyUpType_0"><font size = 2>2D图库</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyUpType_1" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyUpType" value="2" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyUpType$1\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyUpType_1"><font size = 2>2D图纸</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyUpType_2" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyUpType" value="3" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyUpType$2\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyUpType_2"><font size = 2>3D图库</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyUpType_3" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyUpType" value="4" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyUpType$3\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyUpType_3"><font size = 2>3D模型</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyUpType_4" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyUpType" value="5" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyUpType$4\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyUpType_4"><font size = 2>文档</font></label></td><td></td><td></td><td></td>
		</tr>
	</table>
                    </td>
                </tr>
                <tr style="display:none;">
                    <td height="25" align="left" width = "100px" valign = "top" style =" padding-top:8px;">
                        <font size = 2>产品：</font>
                    </td>
                    <td valign="top" align="left" valign = "top">
                        <table id="ctl00_ContentPlaceHolder1_LodFile_rbZyProd" border="0">
		<tr>
			<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_0" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyProd" value="1" checked="checked" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_0"><font size = 2>电子图板</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_1" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyProd" value="2" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyProd$1\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_1"><font size = 2>实体设计</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_2" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyProd" value="3" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyProd$2\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_2"><font size = 2>图文档</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_3" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyProd" value="4" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyProd$3\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_3"><font size = 2>制造工程师</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_4" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyProd" value="5" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyProd$4\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_4"><font size = 2>网络DNC</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_5" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyProd" value="6" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyProd$5\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_5"><font size = 2>数控车</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_6" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyProd" value="7" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyProd$6\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_6"><font size = 2>线切割</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_7" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyProd" value="9" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyProd$7\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_7"><font size = 2>工艺图表</font></label></td>
		</tr><tr>
			<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_8" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyProd" value="11" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyProd$8\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_8"><font size = 2>PLM整体</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_9" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyProd" value="12" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyProd$9\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_9"><font size = 2>教学</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_10" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyProd" value="13" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyProd$10\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_10"><font size = 2>题库</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_11" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyProd" value="8" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyProd$11\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyProd_11"><font size = 2>其它</font></label></td><td></td><td></td><td></td><td></td>
		</tr>
	</table>
                    </td>
                </tr>
                <tr style="display:none;">
                    <td height="25" align="left">
                        <font size = 2>资源类型：</font>
                    </td>
                    <td valign="top" align="left">
                        <table id="ctl00_ContentPlaceHolder1_LodFile_rbZyType" border="0">
		<tr>
			<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyType_0" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyType" value="1" checked="checked" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyType_0"><font size = 2>2D图库</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyType_1" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyType" value="2" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyType$1\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyType_1"><font size = 2>2D图纸</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyType_2" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyType" value="3" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyType$2\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyType_2"><font size = 2>软件</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyType_3" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyType" value="4" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyType$3\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyType_3"><font size = 2>视频</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyType_4" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyType" value="5" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyType$4\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyType_4"><font size = 2>文档和软件工具</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyType_5" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyType" value="13" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyType$5\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyType_5"><font size = 2>3D图库</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyType_6" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyType" value="14" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyType$6\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyType_6"><font size = 2>3D模型</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyType_7" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyType" value="7" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyType$7\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyType_7"><font size = 2>教学资源</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyType_8" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyType" value="8" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyType$8\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyType_8"><font size = 2>课程</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyType_9" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyType" value="9" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyType$9\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyType_9"><font size = 2>国赛</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyType_10" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyType" value="10" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyType$10\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyType_10"><font size = 2>省地比赛</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyType_11" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyType" value="11" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyType$11\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyType_11"><font size = 2>职业鉴定</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyType_12" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyType" value="12" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyType$12\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyType_12"><font size = 2>练习题库</font></label></td>
		</tr>
	</table>
                    </td>
                </tr>
                <tr style="display:none;">
                    <td height="25" align="left">
                        <font size = 2>版本：</font>
                    </td>
                    <td valign="top" align="left">
                        <table id="ctl00_ContentPlaceHolder1_LodFile_cbZyProdVer" onclick="javascript:return selectedchange()" border="0">
		<tr>
			<td><input id="ctl00_ContentPlaceHolder1_LodFile_cbZyProdVer_0" type="checkbox" name="ctl00$ContentPlaceHolder1$LodFile$cbZyProdVer$0" checked="checked" /><label for="ctl00_ContentPlaceHolder1_LodFile_cbZyProdVer_0"><font size = 2>V2013</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_cbZyProdVer_1" type="checkbox" name="ctl00$ContentPlaceHolder1$LodFile$cbZyProdVer$1" /><label for="ctl00_ContentPlaceHolder1_LodFile_cbZyProdVer_1"><font size = 2>V2011</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_cbZyProdVer_2" type="checkbox" name="ctl00$ContentPlaceHolder1$LodFile$cbZyProdVer$2" /><label for="ctl00_ContentPlaceHolder1_LodFile_cbZyProdVer_2"><font size = 2>V2009</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_cbZyProdVer_3" type="checkbox" name="ctl00$ContentPlaceHolder1$LodFile$cbZyProdVer$3" /><label for="ctl00_ContentPlaceHolder1_LodFile_cbZyProdVer_3"><font size = 2>V2007</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_cbZyProdVer_4" type="checkbox" name="ctl00$ContentPlaceHolder1$LodFile$cbZyProdVer$4" /><label for="ctl00_ContentPlaceHolder1_LodFile_cbZyProdVer_4"><font size = 2>V2005</font></label></td>
		</tr>
	</table>
                    </td>
                </tr>
                <tr>
                    <td height="25" align="left">
                        <font size = 2>大类：</font>
                    </td>
                    <td valign="top" align="left">
                        <table id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig" border="0">
		<tr>
			<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_0" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig" value="1" checked="checked" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_0"><font size = 2>国家标准</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_1" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig" value="2" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig$1\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_1"><font size = 2>机械行业标准</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_2" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig" value="19" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig$2\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_2"><font size = 2>化工行业标准</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_3" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig" value="20" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig$3\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_3"><font size = 2>石化行业标准</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_4" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig" value="3" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig$4\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_4"><font size = 2>其它</font></label></td>
		</tr><tr>
			<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_5" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig" value="56" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig$5\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_5"><font size = 2>螺栓</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_6" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig" value="57" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig$6\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_6"><font size = 2>螺母</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_7" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig" value="58" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig$7\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_7"><font size = 2>螺钉</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_8" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig" value="59" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig$8\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_8"><font size = 2>法兰</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_9" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig" value="60" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassBig$9\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassBig_9"><font size = 2>法兰盖</font></label></td>
		</tr>
	</table>
                    </td>
                </tr>
                <tr>
                    <td height="25" align="left">
                        <font size = 2>小类：</font>
                    </td>
                    <td valign="top" align="left">
                        <table id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml" border="0">
		<tr>
			<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_0" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="28" checked="checked" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_0"><font size = 2>未分</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_1" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="136" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$1\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_1"><font size = 2>联接与紧固</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_2" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="137" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$2\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_2"><font size = 2>轴承</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_3" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="138" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$3\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_3"><font size = 2>联轴器、离合器和制动器</font></label></td>
		</tr><tr>
			<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_4" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="139" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$4\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_4"><font size = 2>起重运输机械零部件</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_5" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="140" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$5\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_5"><font size = 2>操作件、小五金</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_6" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="141" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$6\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_6"><font size = 2>管道与管道附件</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_7" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="334" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$7\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_7"><font size = 2>常见工程材料及工艺</font></label></td>
		</tr><tr>
			<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_8" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="338" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$8\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_8"><font size = 2>润滑与密封</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_9" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="341" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$9\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_9"><font size = 2>弹簧</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_10" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="343" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$10\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_10"><font size = 2>螺旋传动、摩擦轮传动</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_11" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="344" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$11\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_11"><font size = 2>带、链传动</font></label></td>
		</tr><tr>
			<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_12" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="345" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$12\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_12"><font size = 2>齿轮与齿轮传动</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_13" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="346" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$13\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_13"><font size = 2>减速器和变速器</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_14" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="347" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$14\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_14"><font size = 2>常用电动机</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_15" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="348" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$15\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_15"><font size = 2>液压传动</font></label></td>
		</tr><tr>
			<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_16" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="349" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$16\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_16"><font size = 2>气压传动</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_17" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="350" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$17\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_17"><font size = 2>化工机械</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_18" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="351" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$18\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_18"><font size = 2>机床综合</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_19" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="352" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$19\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_19"><font size = 2>模具综合</font></label></td>
		</tr><tr>
			<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_20" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="353" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$20\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_20"><font size = 2>机构运动</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_21" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="354" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$21\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_21"><font size = 2>农业机械</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_22" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml" value="355" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbZyClassSml$22\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbZyClassSml_22"><font size = 2>电气元件</font></label></td><td></td>
		</tr>
	</table>
                    </td>
                </tr>
                <tr style="display:none;">
                    <td height="25" align="left">
                        <font size = 2>标准：</font>
                    </td>
                    <td valign="top" align="left">
                        <select name="ctl00$ContentPlaceHolder1$LodFile$dlStandard" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$dlStandard\&#39;,\&#39;\&#39;)&#39;, 0)" id="ctl00_ContentPlaceHolder1_LodFile_dlStandard" RepeatDirection="Horizontal" style="width:220px;">
		<option value="1"><font size = 2>无</font></option>
		<option value="2"><font size = 2>中国国家标准件</font></option>
		<option value="3"><font size = 2>机械行业标准件</font></option>
		<option value="4"><font size = 2>化工行业标准件</font></option>

	</select>
                    </td>
                </tr>
                <tr style="display:none;">
                    <td height="25" align="left">
                       <font size = 2> 类别：</font>
                    </td>
                    <td valign="top" align="left">
                        <select name="ctl00$ContentPlaceHolder1$LodFile$dlClassType" onchange="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$dlClassType\&#39;,\&#39;\&#39;)&#39;, 0)" id="ctl00_ContentPlaceHolder1_LodFile_dlClassType" RepeatDirection="Horizontal" style="height:22px;width:220px;">
		<option value="1">无</option>
		<option value="2">标注</option>
		<option value="3">操作件、小五金</option>
		<option value="4">常见工程材料及工艺</option>
		<option value="5">常用电动机</option>
		<option value="6">齿轮与齿轮传动</option>
		<option value="7">带、链传动</option>
		<option value="8">弹簧</option>
		<option value="9">电气元件</option>
		<option value="10">管道与管道附件</option>
		<option value="11">化工机械</option>
		<option value="12">机床综合</option>
		<option value="13">机构运动</option>
		<option value="14">减速器和变速器</option>
		<option value="15">联接与紧固</option>
		<option value="16">联轴器、离合器和制动器</option>
		<option value="17">量具与量仪</option>
		<option value="18">螺旋传动、摩擦轮传动</option>
		<option value="19">模具</option>
		<option value="20">模具综合</option>
		<option value="21">农业机械</option>
		<option value="22">起重运输机械零部件</option>
		<option value="23">气压传动</option>
		<option value="24">润滑与密封</option>
		<option value="25">压力容器</option>
		<option value="26">液压传动</option>
		<option value="27">一般卡具</option>
		<option value="28">轴承</option>

	</select>
                    </td>
                </tr>
                <tr id="ctl00_ContentPlaceHolder1_LodFile_trViewFlag">
		<td height="25" align="left">
                        <font size = 2>是否公开：
                    </td>
		<td valign="top" align="left">
                        <table id="ctl00_ContentPlaceHolder1_LodFile_rbViewFlag" border="0">
			<tr>
				<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbViewFlag_0" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbViewFlag" value="0" checked="checked" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbViewFlag_0"><font size = 2>公开</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbViewFlag_1" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbViewFlag" value="1" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbViewFlag_1"><font size = 2>不公开（仅自己可见）</font></label></td>
			</tr>
		</table>
                    </td>
	</tr>
	
                
                <tr style="display:none;">
                    <td height="25" align="left">
                        <font size = 2>播放状态：</font>
                    </td>
                    <td align="left">
                        <table id="ctl00_ContentPlaceHolder1_LodFile_rbPlayFlag" disabled="disabled" border="0">
		<tr>
			<td><span disabled="disabled"><input id="ctl00_ContentPlaceHolder1_LodFile_rbPlayFlag_0" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbPlayFlag" value="1" disabled="disabled" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbPlayFlag_0"><font size = 2>在线播放</font></label></span></td><td><span disabled="disabled"><input id="ctl00_ContentPlaceHolder1_LodFile_rbPlayFlag_1" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbPlayFlag" value="0" checked="checked" disabled="disabled" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbPlayFlag_1"><font size = 2>不可在线播放</font></label></span></td>
		</tr>
	</table>
                    </td>
                </tr>
                <tr>
                    <td height="25" align="left">
                        <font size = 2>文件大小：</font>
                    </td>
                    <td align="left">
                        <table id="ctl00_ContentPlaceHolder1_LodFile_rbSizeType" border="0">
		<tr>
			<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbSizeType_0" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbSizeType" value="0" checked="checked" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbSizeType_0"><font size = 2>小于等于10M</font></label></td><td><input id="ctl00_ContentPlaceHolder1_LodFile_rbSizeType_1" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbSizeType" value="1" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$rbSizeType$1\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbSizeType_1"><font size = 2>大于10M(如果大于10M的文件需要上传，请联系QQ:)</font></label></td>
		</tr>
	</table>
                        
                    </td>
                </tr>
                <tr>
                    <td height="25" align="left">
                        <font size = 2>下载金币：</font>
                    </td>
                    <td valign="middle" align="left">
                        <input name="ctl00$ContentPlaceHolder1$LodFile$txtSubMon1" type="text" id="ctl00_ContentPlaceHolder1_LodFile_txtSubMon1" value="0" onblur="checkright();" />
                        <font size = 2>（每次下载将收取30%平台维护费）</font>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" align="left">
                        <font size = 2>资源名称：</font>
                    </td>
                    <td width="654" align="left">
                        <input name="ctl00$ContentPlaceHolder1$LodFile$txtZyName" type="text" id="ctl00_ContentPlaceHolder1_LodFile_txtZyName" maxlength="150" style="width:370px" />
                        <font size = 2>（150个字之内）</font>
                    </td>
                </tr>
                
                <tr>
                    <td height="25" align="left">
                        <font size = 2>标签：</font>
                    </td>
                    <td valign="middle" align="left">
                        <input name="ctl00$ContentPlaceHolder1$LodFile$txtTag" type="text" id="ctl00_ContentPlaceHolder1_LodFile_txtTag" maxlength="1024" style="width:370px" />
                        <font size = 2>（如果是多个标签请用空格隔开）</font>
                    </td>
                </tr>
                <tr>
                    <td height="100" align="left">
                       <font size = 2> 资源说明 ：</font><br />
                        <font size = 2>(1024个字符)</font>
                    </td>
                    <td align="left">
                        <textarea name="ctl00$ContentPlaceHolder1$LodFile$txtMemo" id="ctl00_ContentPlaceHolder1_LodFile_txtMemo" rows="10" cols="86"></textarea>
                    </td>
                </tr>
            </table>
            
            <table id="ctl00_ContentPlaceHolder1_LodFile_tb1" border="0" cellpadding="0" cellspacing="0" align="left">
		<tr>
			<td align="left" width="100px" height="25px">
                       <font size = 2> 预览图片1：</font>
                    </td>
			<td align="left" style="width:120px; height:25px; vertical-align:top;">
                        <input type="file" name="ctl00$ContentPlaceHolder1$LodFile$fuFile3" id="ctl00_ContentPlaceHolder1_LodFile_fuFile3" style="width:460px;" />
                    </td>
			<td rowspan="11" align="left" height="75px" valign="top" width="110px">
                        <table id="ctl00_ContentPlaceHolder1_LodFile_rbImgLst" cellspacing="0" cellpadding="1" border="0" style="border-width:0px;border-collapse:collapse;">
				<tr>
					<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbImgLst_0" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbImgLst" value="1" checked="checked" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbImgLst_0"><font size = 2>设为封面图</font></label></td>
				</tr><tr>
					<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbImgLst_1" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbImgLst" value="2" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbImgLst_1"><font size = 2>设为封面图</font></label></td>
				</tr><tr>
					<td><input id="ctl00_ContentPlaceHolder1_LodFile_rbImgLst_2" type="radio" name="ctl00$ContentPlaceHolder1$LodFile$rbImgLst" value="3" /><label for="ctl00_ContentPlaceHolder1_LodFile_rbImgLst_2"><font size = 2>设为封面图</font></label></td>
				</tr>
			</table>&nbsp;
                        </td>
			<td rowspan="11">
                    </td>
		</tr>
		<tr>
			<td align="left" width="100px" height="25px">
                      <font size = 2>预览图片2：</font>
                    </td>
			<td align="left" style="width:120px; height:25px; vertical-align:top;">
                        <input type="file" name="ctl00$ContentPlaceHolder1$LodFile$fuFile4" id="ctl00_ContentPlaceHolder1_LodFile_fuFile4" style="width:460px;" />
                    </td>
		</tr>
		<tr>
			<td align="left" width="100px" height="25px">
                        <font size = 2>预览图片3：</font>
                    </td>
			<td align="left" style="width:120px; height:25px; vertical-align:top;">
                        <input type="file" name="ctl00$ContentPlaceHolder1$LodFile$fuFile5" id="ctl00_ContentPlaceHolder1_LodFile_fuFile5" style="width:460px;" />
                    </td>
		</tr>
		<tr id="ctl00_ContentPlaceHolder1_LodFile_tr2">
			<td width="100px" height="25" align="left">
                       <font size = 2> 选择文件</font><span id="ctl00_ContentPlaceHolder1_LodFile_lbFileTxt"><font size = 2>(txt)</font></span>：
                    </td>
			<td align="left" colspan="1">

                        <input type="file" name="ctl00$ContentPlaceHolder1$LodFile$fuFile2" id="ctl00_ContentPlaceHolder1_LodFile_fuFile2" onchange="return SelectImg(this)" style="width:460px;" /><br />
                        <div id="ctl00_ContentPlaceHolder1_LodFile_UpdatePanel2">
				
                                <input name="ctl00$ContentPlaceHolder1$LodFile$hidTxtPath" type="hidden" id="ctl00_ContentPlaceHolder1_LodFile_hidTxtPath" />
                                <input name="ctl00$ContentPlaceHolder1$LodFile$hidTxtPath1" type="hidden" id="ctl00_ContentPlaceHolder1_LodFile_hidTxtPath1" />
                                <a id="ctl00_ContentPlaceHolder1_LodFile_lbtUpLoadTxt" href="javascript:__doPostBack(&#39;ctl00$ContentPlaceHolder1$LodFile$lbtUpLoadTxt&#39;,&#39;&#39;)"></a>
                                    

                            
			</div>
                    </td>
		</tr>
		<tr id="ctl00_ContentPlaceHolder1_LodFile_tr1">
			<td width="100px" height="25" align="left">
                        <font size = 2>选择文件</font><span id="ctl00_ContentPlaceHolder1_LodFile_lbFileSbl"><font size = 2>(sbl)</font></span>：
                    </td>
			<td align="left">
                        <input type="file" name="ctl00$ContentPlaceHolder1$LodFile$fuFile1" id="ctl00_ContentPlaceHolder1_LodFile_fuFile1" style="width:460px;" />
                    </td>
		</tr>
		<tr id="ctl00_ContentPlaceHolder1_LodFile_tr5" style="display:none;">
			<td width="100px" height="25" align="left">
                        <input id="ctl00_ContentPlaceHolder1_LodFile_cbOtherPlayFlag" type="checkbox" name="ctl00$ContentPlaceHolder1$LodFile$cbOtherPlayFlag" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$cbOtherPlayFlag\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_cbOtherPlayFlag"><font size = 2>支持外部视频播放</font></label>
                    </td>
			<td align="left">
                        <input name="ctl00$ContentPlaceHolder1$LodFile$txtOtherPlayValue" type="text" id="ctl00_ContentPlaceHolder1_LodFile_txtOtherPlayValue" style="width: 460px" />
                    </td>
		</tr>
		<tr id="ctl00_ContentPlaceHolder1_LodFile_tr6" style="display:none;">
			<td width="100px" height="25" align="left">
                        <input id="ctl00_ContentPlaceHolder1_LodFile_cbInPlayFlag" type="checkbox" name="ctl00$ContentPlaceHolder1$LodFile$cbInPlayFlag" onclick="javascript:setTimeout(&#39;__doPostBack(\&#39;ctl00$ContentPlaceHolder1$LodFile$cbInPlayFlag\&#39;,\&#39;\&#39;)&#39;, 0)" /><label for="ctl00_ContentPlaceHolder1_LodFile_cbInPlayFlag"><font size = 2>支持内部视频播放</font></label>
                    </td>
			<td align="left">
                        <input name="ctl00$ContentPlaceHolder1$LodFile$txtInPlayValue" type="text" id="ctl00_ContentPlaceHolder1_LodFile_txtInPlayValue" style="width: 460px" />
                    </td>
		</tr>
		<tr>
			<td width="100px" height="25" align="left">
                        &nbsp;
                    </td>
			<td align="left">
                        <input type="submit" name="ctl00$ContentPlaceHolder1$LodFile$btSave" value="上传" onclick="return checkright();javascript:return checkvalue();" id="ctl00_ContentPlaceHolder1_LodFile_btSave" />
                        
                        
                        <br />
                    </td>
		</tr>
	</table>
	
        </div>
    
</div>


                    </td>
                </tr>
            </table>
        </div>
        <div style="width: 100%; height: auto; text-align: left; margin-top: 10px">
            <div>
                
            </div>
        </div>
    </div>

            </div>
            
	
</div>