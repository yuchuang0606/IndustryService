<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/index.css" type="text/css" />
<link rel="shortcut icon" href="../image/c.png" type="image/x-icon" />
<link rel="stylesheet" href="../css/header.css" type="text/css" />
<link rel="stylesheet" href="../css/logo.css" type="text/css" />
<link rel="stylesheet" href="../css/navigator.css" type="text/css"/>
<link rel="stylesheet" href="../css/slist.css" type="text/css" />
<link rel="stylesheet" href="../css/footer.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="../css/style.css"/>				
<link href="../js/uploadify/uploadify.css" rel="stylesheet" type="text/css" />
<script src="../js/ckeditor/ckeditor.js"></script>
<script src="../js/uploadify/jquery.uploadify.js" type="text/javascript"></script>
<title>大连工业设计服务平台</title>
</head>
<body>	
	<%@ include file="../templates/header.jsp" %>	
	<div class="logo">
		<div class="logocontent">
			<div class="logoimg">
				<img src="../image/logo_6.png" />
			</div>
		</div>
	</div>
	
	<%@ include file="../templates/navigator.jsp" %>
	<div  id="main" class="main">	
		<%@ include file="./leftindex.jsp" %>
		<div id="content" class="content" style="width:725px;height:auto;float:left;background:#fff;margin:5px auto;">
			<div style="width: 725px;">
				<script>
				$(function () {
				$("#uploadify").uploadify({
				//指定swf文件
				'swf': '../js/uploadify/uploadify.swf',
				//后台处理的页面
				'uploader': '/admin/uploadfile',
				//按钮显示的文字
				'buttonText': '上传文件',
				//显示的高度和宽度，默认 height 30；width 120
				//'height': 15,
				//'width': 80,
				//上传文件的类型 默认为所有文件 'All Files' ; '*.*'
				//在浏览窗口底部的文件类型下拉菜单中显示的文本
				'fileTypeDesc': '*',
				//允许上传的文件后缀
				'fileTypeExts': '*.*',
				//发送给后台的其他参数通过formData指定
				//'formData': { 'someKey': 'someValue', 'someOtherKey': 1 },
				//上传文件页面中，你想要用来作为文件队列的元素的id, 默认为false 自动生成, 不带#
				//'queueID': 'fileQueue',
				//选择文件后自动上传
				'auto': true,
				//设置为true将允许多文件上传
				'multi': false,
				'onUploadSuccess': function (file, data, response) {//当上传完成后的回调函数，ajax方式哦~~
				var editor = CKEDITOR.instances.editor1;
				if (editor.mode == 'wysiwyg') {
				editor.insertHtml(data);
				}
				else
				alert('You must be in WYSIWYG mode!');
				}
				});
				});
				</script>				
					<form id="news" method="post" action="/informationhandler">
						<p>标题：<input name="ti" size="80" style="margin:2px"></p>
						<div style="float:right;margin-top:-20px;margin-right:40px">
							<a class="button white" onclick="$(news).submit();">提交</a>
						</div>
						<p>类别：<select name="it" style="margin:2px">
						<option value="1">新闻</option>
						<option value="2">公告</option>
						</select></p>
						<textarea id="editor1" class="ckeditor" name="c" style="visibility: hidden; display: none;"></textarea>
						<input name="un" value="2" style="display:none">
						<input name="command" value="add" style="display:none">
					</form>
					<div>
						<a href="javascript:$('#uploadify').uploadify('cancel')" style="margin-left:20px">取消上传</a>
						<div id="uploadify" class="uploadify" style="height: 30px; width: 120px;">
							<object id="SWFUpload_0" type="application/x-shockwave-flash" data="../js/uploadify/uploadify.swf?preventswfcaching=1385981352305" width="120" height="30" class="swfupload" style="position: absolute; z-index: 1;">
							<param name="wmode" value="transparent">
							<param name="movie" value="../js/uploadify/uploadify.swf?preventswfcaching=1385981352305">
							<param name="quality" value="high">
							<param name="menu" value="false">
							<param name="allowScriptAccess" value="always">
							<param name="flashvars" value="movieName=SWFUpload_0&amp;uploadURL=%2Fadmin%2Fuploadfile&amp;useQueryString=false&amp;requeueOnError=false&amp;httpSuccess=&amp;assumeSuccessTimeout=30&amp;params=&amp;filePostName=Filedata&amp;fileTypes=*.*&amp;fileTypesDescription=*&amp;fileSizeLimit=0&amp;fileUploadLimit=0&amp;fileQueueLimit=999&amp;debugEnabled=false&amp;buttonImageURL=%2Fadmin%2F&amp;buttonWidth=120&amp;buttonHeight=30&amp;buttonText=&amp;buttonTextTopPadding=0&amp;buttonTextLeftPadding=0&amp;buttonTextStyle=color%3A%20%23000000%3B%20font-size%3A%2016pt%3B&amp;buttonAction=-100&amp;buttonDisabled=false&amp;buttonCursor=-2"></object>
							<div id="uploadify-button" class="uploadify-button " style="height: 30px; line-height: 30px; width: 120px;">
								<span class="uploadify-button-text">上传文件</span>
							</div>
						</div>
						<div id="uploadify-queue" class="uploadify-queue"></div>
						<div id="fileQueue" style="float:right"></div>		
					</div>				
			</div>
		</div> 		
	</div>
	
	<br><br><br>
	
	<%@ include file="../templates/footer.jsp" %>
</body>
</html>