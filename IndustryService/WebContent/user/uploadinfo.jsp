<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.*" %>
<%
	User userupload = (User)request.getSession().getAttribute("user");
	double uploadsize = userupload.getUploadsize();
%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/upload.css" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/util.js"></script>
<link rel="stylesheet"  href="<%=request.getContextPath() %>/js/uploadify/uploadify.css" type="text/css"/>
<div id="main" class="main" style="height:550px;">
	<%if (userupload.getUsergroup() ==1) {%>
	<%@ include file="../admin/siderbar.jsp" %>
	<%} else { %>
	<%@ include file="/user/userleftmenu.jsp"%>
	<%} %>
	<script src="<%=request.getContextPath() %>/js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-ui.js"></script>
	<script src="<%=request.getContextPath() %>/js/uploadify/jquery.uploadify.js" type="text/javascript"></script>
	<div id="content" class="content"> 
    	<div style="height:30px;width:737px;line-height:30px;text-align:center;background:#f5f5f5;">
       		<font style="font-weight:800;color: #265f9d;">上传资源</font>
       	</div>      
		<div style="padding:10px 20px;text-align:center">
   			<table class="uptb" border="0" cellpadding="0" cellspacing="0" align="center" >
           		<tr>
           			<td height="25" align="left" width="100" valign = "top" style =" padding-top:8px;">
               		<font size = 2>类型：</font>
               		</td>
               		<td valign="middle" align="left" valign = "top">
               		<table id="ty" border="0">
						<tr>
							<td><input type="radio" name="restype" value="1" checked="checked" onclick="hiddenVideoLink()"/><label><font size = 2>软件</font></label></td>
							<td><input type="radio" name="restype" value="4" onclick="hiddenVideoLink()"/><label><font size = 2>模型</font></label></td>
							<td><input type="radio" name="restype" value="3" onclick="hiddenVideoLink()"/><label><font size = 2>文档</font></label></td>
							<td><input type="radio" name="restype" value="2" onclick="dispVideoLink()"/><label><font size = 2>视频</font></label></td>
						</tr>
					</table>
                   	</td>
               	</tr>
                <tr id="ViewFlag">
					<td height="25" align="left">
                        <font size = 2>是否公开：</font>
                    </td>
					<td valign="top" align="left">
                        <table id="view" border="0">
							<tr>
								<td><input type="radio" name="ispublic" value="1" checked="checked" /><label><font size = 2>公开</font></label></td>
								<td><input type="radio" name="ispublic" value="0" /><label><font size = 2>不公开（仅自己可见）</font></label></td>
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
                        <input id="resname" name="resname" type="text" maxlength="150" style="width:370px;margin-left:5px;" onblur="isTitleNull(this.value)"/>
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
                        <textarea name="description" id="description"" rows="10" style="width:600px;margin-left:5px;" onblur="isDescriptionNull(this.value)"></textarea>
                        <label id="msg_description" style="font-size:12px;">（不得少于50个字符）</label>
                    </td>
                </tr>
            </table>
     
            <table id="" border="0" cellpadding="0" cellspacing="0" align="left" style="margin-top:10px;">
				<tr>
					<td align="left" width="80px" height="25px">
                       <font size = 2> 封面图片：</font>
                    </td>
					<td align="left" style="width:120px; height:25px; ">
						<form id="respic" method="post" 
									enctype="MULTIPART/FORM-DATA" 
        							action="upload">
                        	<input type="file" name="imgfile" id="imgfile" style="width:460px;" onblur="checkImg(this.value)"/>
                        </form>
                    </td>
					<td align="left" height="25px" width="110px">
                        <input id="file0" type="radio" name="file" value="1" checked="checked" /><label for="file0"><font size = 2>设为封面图</font></label>
                    </td>
				</tr>
				<tr height="40px;">
					<td width="100px" height="25" align="left">
                        <font size = 2>资源文件</font>：
                    </td>
					<td align="left">
						<div style="width:100%;height:23px;">
						    <div style="float:left;width:300px;height:23px;"><input type="file" name="uploadify" id="uploadify"  /></div>
				            
				        </div>
				        <div id="fileQueue" style="float:right"></div>
                        <input type="text" id="filename" style="display:none;" />
                        <input type="text" id="filepath" style="display:none;" />
                        <input type="text" id="filesize" style="display:none;" />
                    </td>
                    <td align="left">
                    <a href="javascript:$('#uploadify').uploadify('cancel')" style="margin-left:20px">取消上传</a>
                    </td>
				</tr>
				<tr height="50px">
					<td width="80px" height="25" align="left">&nbsp;</td>
					<td align="right">
						<input id="resname" value="" style="display:none"></input>
                    </td>
                    <td align="left">
                    	<div style="margin-left:10px;">
                        <input type="submit" name="Submit" value="确定上传" onclick="uploadResource()" style="border-width:0px;cursor:pointer;color:#fff;font-weight:bold;height:30px;width:80px;background:url(../image/nav_bg.png) repeat-x"/>
                        </div>
                    </td>
				</tr>
			</table>
        </div>            
    </div>
</div>
 <script>
 $(function () {
     $("#uploadify").uploadify({
         //指定swf文件
         'swf': '../js/uploadify/uploadify.swf',
         //后台处理的页面
         'uploader': '../upload',
         //按钮显示的文字
         'buttonText': '上传文件',
         //显示的高度和宽度，默认 height 30；width 120
         'height': 23,
         'width': 75,
         //上传文件的类型  默认为所有文件    'All Files'  ;  '*.*'
         //在浏览窗口底部的文件类型下拉菜单中显示的文本
         'fileTypeDesc': '*',
         //允许上传的文件后缀
         'fileTypeExts': '*.*',
         //发送给后台的其他参数通过formData指定
         //'formData': { 'someKey': 'someValue', 'someOtherKey': 1 },
         //上传文件页面中，你想要用来作为文件队列的元素的id, 默认为false  自动生成,  不带#
         //'queueID': 'fileQueue',
         //选择文件后自动上传
         'auto': true,
         //设置为true将允许多文件上传
         'multi': false,
         // Set to false to keep files that have completed uploading in the queue.
         'removeCompleted' : false,
         // The maximum number of files you are allowed to upload. 
         'uploadLimit' : 1,
         'onUploadStart' : function(file) {
        	 /*if (file.size*1.0/1000000 > 10) {
        		 alert("文件超过10M，请联系QQ:1346158517");
              	$("#uploadify").uploadify('cancel');
        	 }*/
        	 if (file.size*1.0/1000000 > 3000) {
             	alert("文件不能超过3G，不能上传");
             	$("#uploadify").uploadify('cancel');
        	 }
         },
         'onUploadSuccess': function (file, data, response) {//当上传完成后的回调函数，ajax方式哦~~
        	 $("#filename").val(file.name);
        	 $("#filepath").val(data);
         	 filesize = file.size*1.0/1000000;
         	 $("#filesize").val(filesize);
     	 },
        'onClearQueue' : function(queueItemCount) {
            alert(queueItemCount + ' file(s) were removed from the queue');
        }
     });
 });
</script>