<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/upload.css" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/util.js"></script>
<script src="<%=request.getContextPath() %>/js/jquery-1.9.1.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/uploadify/jquery.uploadify.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/js/uploadify/uploadify.css">
<div id="main" class="main">
	<%@ include file="/user/userleftmenu.jsp"%>
	<div id="content" class="content"> 
    	<div style="height:30px;width:717px;line-height:30px;text-align:center;background:#f5f5f5;">
       		<font style="font-weight:800;color: #265f9d;">上传资源</font>
       	</div>      
		<div style="padding:10px 20px;text-align:center">
   			<table class="uptb" width="100%" border="0" cellpadding="0" cellspacing="0" align="center" >
           		<tr>
           			<td height="25" align="left" width = "100px" valign = "top" style =" padding-top:8px;">
               		<font size = 2>类型：</font>
               		</td>
               		<td valign="middle" align="left" valign = "top">
               		<table id="ty" border="0">
						<tr>
							<td><input type="radio" name="restype" value="1" checked="checked" onclick="hiddenVideoLink()"/><label><font size = 2>软件</font></label></td>
							<td><input type="radio" name="restype" value="2" onclick="dispVideoLink()"/><label><font size = 2>视频</font></label></td>
							<td><input type="radio" name="restype" value="3" onclick="hiddenVideoLink()"/><label><font size = 2>文档</font></label></td>
							<td><input type="radio" name="restype" value="4" onclick="hiddenVideoLink()"/><label><font size = 2>模型</font></label></td>
						</tr>
					</table>
                   	</td>
               	</tr>
               	<!-- 
                <tr>
                   	<td height="25" align="left">
                       	<font size = 2>大类：</font>
                   	</td>
                   	<td valign="top" align="left">
                       	<table id="b_ty" border="0">
							<tr>
								<td><input id="b_ty0" type="radio" name="b_ty" value="1" checked="checked" /><label for="b_ty0"><font size = 2>国家标准</font></label></td>
								<td><input id="b_ty1" type="radio" name="b_ty" value="2"/><label for="b_ty1"><font size = 2>机械行业标准</font></label></td>
								<td><input id="b_ty2" type="radio" name="b_ty" value="19"/><label for="b_ty2"><font size = 2>化工行业标准</font></label></td>
								<td><input id="b_ty3" type="radio" name="b_ty" value="20"/><label for="b_ty3"><font size = 2>石化行业标准</font></label></td>
								<td><input id="b_ty4" type="radio" name="b_ty" value="3"/><label for="b_ty4"><font size = 2>其它</font></label></td>
							</tr>
							<tr>
								<td><input id="b_ty5" type="radio" name="b_ty" value="56"/><label for="b_ty5"><font size = 2>螺栓</font></label></td>
								<td><input id="b_ty6" type="radio" name="b_ty" value="57"/><label for="b_ty6"><font size = 2>螺母</font></label></td>
								<td><input id="b_ty7" type="radio" name="b_ty" value="58"/><label for="b_ty7"><font size = 2>螺钉</font></label></td>
								<td><input id="b_ty8" type="radio" name="b_ty" value="59"/><label for="b_ty8"><font size = 2>法兰</font></label></td>
								<td><input id="b_ty9" type="radio" name="b_ty" value="60"/><label for="b_ty9"><font size = 2>法兰盖</font></label></td>								
							</tr>
						</table>
						<table id="b_wd" border="0" style="display:none">
							<tbody>
							<tr>
								<td><input type="radio" name="bwd" value="14" checked="checked"><label>教程</label></td>
								<td><input type="radio" name="bwd" value="15"><label>解决方案</label></td>
								<td><input type="radio" name="bwd" value="16"><label>培训案例</label></td>
								<td><input type="radio" name="bwd" value="17"><label>介绍</label></td>
								<td><input type="radio" name="bwd" value="18"><label>其它</label></td>
							</tr>
							<tr>
								<td><input type="radio" name="bwd" value="22"><label>研究</label></td>
								<td><input type="radio" name="bwd" value="23"><label>应用经验</label></td>
								<td><input type="radio" name="bwd" value="25"><label>配置</label></td>
								<td><input type="radio" name="bwd" value="26"><label>试题</label></td>
								<td><input type="radio" name="bwd" value="55"><label>模版</label></td>
							</tr>
							<tr>
								<td><input type="radio" name="bwd" value="133"><label>国家标准</label></td>
								<td><input type="radio" name="bwd" value="134"><label>设计手册</label></td>
								<td><input type="radio" name="bwd" value="455"><label>行业标准</label></td>
								<td><input type="radio" name="bwd" value="471"><label>软件工具</label></td>
								<td></td>
							</tr>
							</tbody>
						</table>
                   	</td>
               	</tr>
               	<tr>
                   	<td height="25" align="left">
                       	<font size = 2>小类：</font>
                   	</td>
                   	<td valign="top" align="left">
                       	<table id="s_ty" border="0">
							<tr>
								<td><input id="s_ty0" type="radio" name="s_ty" value="28" checked="checked" /><label for="s_ty0"><font size = 2>未分</font></label></td>
								<td><input id="s_ty1" type="radio" name="s_ty" value="136"/><label for="s_ty1"><font size = 2>联接与紧固</font></label></td>
								<td><input id="s_ty2" type="radio" name="s_ty" value="137"/><label for="s_ty2"><font size = 2>轴承</font></label></td>
								<td><input id="s_ty3" type="radio" name="s_ty" value="138"/><label for="s_ty3"><font size = 2>联轴器、离合器和制动器</font></label></td>
							</tr>
							<tr>
								<td><input id="s_ty4" type="radio" name="s_ty" value="139"/><label for="s_ty4"><font size = 2>起重运输机械零部件</font></label></td>
								<td><input id="s_ty5" type="radio" name="s_ty" value="140"/><label for="s_ty5"><font size = 2>操作件、小五金</font></label></td>
								<td><input id="s_ty6" type="radio" name="s_ty" value="141"/><label for="s_ty6"><font size = 2>管道与管道附件</font></label></td>
								<td><input id="s_ty7" type="radio" name="s_ty" value="334"/><label for="s_ty7"><font size = 2>常见工程材料及工艺</font></label></td>
							</tr>
							<tr>
								<td><input id="s_ty8" type="radio" name="s_ty" value="338"/><label for="s_ty8"><font size = 2>润滑与密封</font></label></td>
								<td><input id="s_ty9" type="radio" name="s_ty" value="341"/><label for="s_ty9"><font size = 2>弹簧</font></label></td>
								<td><input id="s_ty10" type="radio" name="s_ty" value="343"/><label for="s_ty10"><font size = 2>螺旋传动、摩擦轮传动</font></label></td>
								<td><input id="s_ty11" type="radio" name="s_ty" value="344"/><label for="s_ty11"><font size = 2>带、链传动</font></label></td>
							</tr>
							<tr>
								<td><input id="s_ty12" type="radio" name="s_ty" value="345"/><label for="s_ty12"><font size = 2>齿轮与齿轮传动</font></label></td>
								<td><input id="s_ty13" type="radio" name="s_ty" value="346"/><label for="s_ty13"><font size = 2>减速器和变速器</font></label></td>
								<td><input id="s_ty14" type="radio" name="s_ty" value="347"/><label for="s_ty14"><font size = 2>常用电动机</font></label></td>
								<td><input id="s_ty15" type="radio" name="s_ty" value="348"/><label for="s_ty15"><font size = 2>液压传动</font></label></td>
							</tr>
							<tr>
								<td><input id="s_ty16" type="radio" name="s_ty" value="349"/><label for="s_ty16"><font size = 2>气压传动</font></label></td>
								<td><input id="s_ty17" type="radio" name="s_ty" value="350"/><label for="s_ty17"><font size = 2>化工机械</font></label></td>
								<td><input id="s_ty18" type="radio" name="s_ty" value="351"/><label for="s_ty18"><font size = 2>机床综合</font></label></td>
								<td><input id="s_ty19" type="radio" name="s_ty" value="352"/><label for="s_ty19"><font size = 2>模具综合</font></label></td>
							</tr>
							<tr>
								<td><input id="s_ty20" type="radio" name="s_ty" value="353"/><label for="s_ty20"><font size = 2>机构运动</font></label></td>
								<td><input id="s_ty21" type="radio" name="s_ty" value="354"/><label for="s_ty21"><font size = 2>农业机械</font></label></td>
								<td><input id="s_ty22" type="radio" name="s_ty" value="355"/><label for="s_ty22"><font size = 2>电气元件</font></label></td>								
							</tr>
						</table>
						<table id="s_wd" bordor="0" style="display:none">
							<tr>
								<td><input type="radio" name="swd" value="353"/><label><font size = 2>未分</font></label></td>
							</tr>
						</table>
                   	</td>
               	</tr>
               	 -->
                <tr id="ViewFlag">
					<td height="25" align="left">
                        <font size = 2>是否公开：</font>
                    </td>
					<td valign="top" align="left">
                        <table id="view" border="0">
							<tr>
								<td><input type="radio" name="ispublic" value="0" checked="checked" /><label><font size = 2>公开</font></label></td>
								<td><input type="radio" name="ispublic" value="1" /><label><font size = 2>不公开（仅自己可见）</font></label></td>
							</tr>
						</table>
                    </td>
				</tr>
                <tr>
                    <td height="25" align="left">
                        <font size = 2>文件大小：</font>
                    </td>
                    <td align="left">
                        <table id="size" border="0">
							<tr>
								<td><input type="radio" name="ressize" value="0" checked="checked" /><label for="size0"><font size = 2>小于等于10M</font></label></td>
								<td><input type="radio" name="ressize" value="1"/><label for="size1"><font size = 2>大于10M(如果大于10M的文件需要上传，请联系QQ:1346158517)</font></label></td>
							</tr>
						</table>
                        
                    </td>
                </tr>
                <tr>
                    <td height="25" align="left">
                        <font size = 2>下载金币：</font>
                    </td>
                    <td valign="middle" align="left">
                        <input id="rescoin" name="rescoin" type="text" id="coin" value="0" onblur="checkNumscope()" style="width:150px;margin-left:5px;" />
                        <label id="msg_rescoin" style="font-size:12px;">（0~50之间，每次下载将收取30%平台维护费，此功能暂不开放）</label>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" align="left">
                        <font size = 2>资源名称：</font>
                    </td>
                    <td width="630" align="left">
                        <input id="resname" name="resname" type="text" id="name" maxlength="150" style="width:370px;margin-left:5px;" onblur="isTitleNull(this.value)"/>
                        <label id="msg_resname" style="font-size:12px;">（150个字之内）</label>
                    </td>
                </tr>
                <tr>
                	<td colspan="2">
                	<div id="videolink" style="float:left;height:27px;display:none;">
	                    <div style="float:left;width:65px;height:27px;line-height:27px;text-align:left;" >
	                        <font size = 2>视频链接：</font>
	                    </div>
	                    <div style="float:left;width:600px;height:27px;line-height:27px;margin-left:4px;text-align:left;">
	                        <input id="videolink" name="videolink" type="text" maxlength="150" style="width:370px;margin-left:5px;" onblur="isVideolinkNull(this.value)"/>
	                        <label id="msg_videolink" style="font-size:12px;">（请填写可播放的地址）</label>
	                    </div>
                    </div>
                    </td>
                </tr>
                <tr>
                    <td height="25" align="left">
                        <font size = 2>标签：</font>
                    </td>
                    <td valign="middle" align="left">
                        <input name="restag" type="text" id="restag" maxlength="1024" style="width:370px;margin-left:5px;" onblur="isTagNull(this.value)"/>
                        <label id="msg_restag" style="font-size:12px;">（如果是多个标签请用空格隔开）</label>
                    </td>
                </tr>
                <tr>
                    <td height="100" align="left">
                       <font size = 2> 资源说明 ：</font>
                    </td>
                    <td align="left">
                        <textarea name="description" id="description"" rows="10" cols="85" style="margin-left:5px;" onblur="isDescriptionNull(this.value)"></textarea>
                        <label id="msg_description" style="font-size:12px;">（不得少于50个字符）</label>
                    </td>
                </tr>
            </table>
     
            <table id="" border="0" cellpadding="0" cellspacing="0" align="left" style="margin-top:10px;">
				<tr>
					<td align="left" width="80px" height="25px">
                       <font size = 2> 封面图片：</font>
                    </td>
					<td align="left" style="width:120px; height:25px; vertical-align:top;">
                        <input type="file" name="imgfile" id="imgfile" style="width:460px;" />
                    </td>
					<td rowspan="11" align="left" height="75px" valign="top" width="110px">
                        <table id="file" cellspacing="0" cellpadding="1" border="0" style="border-width:0px;border-collapse:collapse;">
							<tr>
								<td>
									<input id="file0" type="radio" name="file" value="1" checked="checked" /><label for="file0"><font size = 2>设为封面图</font></label>
								</td>
							</tr>
							<!-- 
							<tr>
								<td>
									<input id="file1" type="radio" name="file" value="2" /><label for="file1"><font size = 2>设为封面图</font></label>
								</td>
							</tr>
							<tr>
								<td>
									<input id="file2" type="radio" name="file" value="3" /><label for="file2"><font size = 2>设为封面图</font></label>
								</td>
							</tr> -->
						</table>&nbsp;
                    </td>
				</tr>
				<!-- 
				<tr>
					<td align="left" width="100px" height="25px">
                    	<font size = 2>预览图片2：</font>
                    </td>
					<td align="left" style="width:120px; height:25px; vertical-align:top;">
                        <input type="file" name="file4" id="file4" style="width:460px;" />
                    </td>
				</tr>
				<tr>
					<td align="left" width="100px" height="25px">
                        <font size = 2>预览图片3：</font>
                    </td>
					<td align="left" style="width:120px; height:25px; vertical-align:top;">
                        <input type="file" name="file5" id="file5" style="width:460px;" />
                    </td>
				</tr> 
				<tr id="">
					<td width="100px" height="25" align="left">
                       <font size = 2> 选择文件</font><span id=""><font size = 2>(txt)</font></span>：
                    </td>
					<td align="left" colspan="1">
                    	<input type="file" name="" id="" onchange="" style="width:460px;" /><br />                    
                    </td>
				</tr> -->
				<tr id="">
					<td width="100px" height="25" align="left">
                        <font size = 2>资源文件</font>：
                    </td>
					<td align="left">
						<p></p>
						<div id="file_upload_1" class="uploadify" style="height: 30px; width: 120px;">
						<object id="SWFUpload_0" type="application/x-shockwave-flash" data="/uploadify/uploadify.swf?preventswfcaching=1386054933621" width="120" height="30" class="swfupload" style="position: absolute; z-index: 1;">
						<param name="wmode" value="transparent">
						<param name="movie" value="/uploadify/uploadify.swf?preventswfcaching=1386054933621">
						<param name="quality" value="high">
						<param name="menu" value="false">
						<param name="allowScriptAccess" value="always">
						<param name="flashvars" value="movieName=SWFUpload_0&amp;uploadURL=%2Fuploadify%2Fuploadify.php&amp;useQueryString=false&amp;requeueOnError=false&amp;httpSuccess=&amp;assumeSuccessTimeout=30&amp;params=&amp;filePostName=Filedata&amp;fileTypes=*.*&amp;fileTypesDescription=All%20Files&amp;fileSizeLimit=0&amp;fileUploadLimit=0&amp;fileQueueLimit=999&amp;debugEnabled=false&amp;buttonImageURL=%2Fdemos%2F&amp;buttonWidth=120&amp;buttonHeight=30&amp;buttonText=&amp;buttonTextTopPadding=0&amp;buttonTextLeftPadding=0&amp;buttonTextStyle=color%3A%20%23000000%3B%20font-size%3A%2016pt%3B&amp;buttonAction=-110&amp;buttonDisabled=false&amp;buttonCursor=-2">
						</object>
						<div id="file_upload_1-button" class="uploadify-button " style="height: 30px; line-height: 30px; width: 120px;">
						<span class="uploadify-button-text">SELECT FILES</span>
						</div>
						</div>
						<div id="file_upload_1-queue" class="uploadify-queue"></div>
                       <!--  <input type="file" name="resfile" id="resfile" style="width:460px;" /> -->
                    </td>
				</tr>
				<tr>
					<td width="80px" height="25" align="left">&nbsp;</td>
					<td align="left">
                        <input type="submit" name="Submit" value="上传" onclick="uploadResource()" />
                        <br />
                    </td>
				</tr>
			</table>
        </div>            
    </div>
</div>
<script type="text/javascript">
	
$(function() {
	$('#file_upload').uploadify({
		'formData'     : {
			'timestamp' : '<?php echo $timestamp;?>',
			'token'     : '<?php echo md5('unique_salt' . $timestamp);?>'
		},
		'swf'      : 'uploadify.swf',
		'uploader' : 'uploadify.php'
	});
});
</script>   