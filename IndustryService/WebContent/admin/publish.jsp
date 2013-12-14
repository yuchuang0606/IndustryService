<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/image/small.gif" type="image/x-icon" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/slist.css" type="text/css" />
<link href="<%=request.getContextPath() %>/js/uploadify/uploadify.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/location.css" type="text/css" />
<title>大连工业设计服务平台</title>
<script>
	var ctxpath = null;
	function initContextPath(path)
	{ctxpath = path;}
</script>
</head>
<body onload="initContextPath('<%=request.getContextPath()%>')">
	<%@ include file="/templates/header.jsp" %>
	<%@ include file="/templates/logo.jsp" %>
	<%@ include file="/templates/navigator.jsp" %>
	<div class="location">
		<div class="loccontent">
			<span style="font-size:14px;color:#3C3C3C">您当前位置：</span>
			<img src="<%=request.getContextPath() %>/image/house.png" width="15" height="15"></img>
			<span style="font-size:14px;color:#3C3C3C">
			<a href="<%=request.getContextPath() %>/index.jsp">首页</a> 》 信息发布
			</span>
		</div>
	</div>
	<div id="main" class="main">
		<%@ include file="/admin/siderbar.jsp"%>
		<script src="<%=request.getContextPath()%>/js/jquery-1.10.2.min.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath() %>/js/ckeditor/ckeditor.js"></script>
		<script src="<%=request.getContextPath() %>/js/uploadify/jquery.uploadify.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath() %>/js/util.js"></script>
		<div id="content" class="content">
			<div class="title" style="height:36px;wclassth:100%;line-height:36px;margin:0px auto;text-align:center;background-color:#f5f5f5">
	        	<span style="font-size:16px;"><strong>信息发布</strong></span>
	        </div>
	        <div style="margin-top:5px;padding:0 10px;min-height:370px;">
	        	<div style="height:820px;width:720px;">
	        		<form method="post" action="<%=request.getContextPath() %>/user/newsdata?command=add" onsubmit="return checkNews();">
	        			<div style="height:40px;line-height:40px;">
			        		<div style="float:left;">标题：<input id="title" name="title" size="80" style="margin:2px;height:22px;" /></div>
			        		<div style="float:left;margin-left:20px;">
			        			<input type="submit" name="publish" value="提   交" id="publish" style="border-width:0px;margin-top:5px;color:#fff;font-weight:bold;height:30px;width:80px;background:url(<%=request.getContextPath() %>/image/nav_bg.png) repeat-x" />
			        		</div>
		        		</div>
		        		<div style="margin-bottom:10px;">
		        			<font>类别：</font>
			        		<select id="type" name="type" style="margin:0px;height:26px;width:80px;">
			        			<option value="news">新闻</option>
			        			<option value="notice">通知</option>
			        			<!-- <option value="3">政策</option> -->
			        		</select>
		        		</div>
		        		<textarea id="editor1" class="ckeditor" name="content" style=""></textarea>
	        		</form>
		        	<div style="float:left;margin-top:10px;width:360px;">
		        		<!-- <a href="javascript:$('#uploadify').uploadify('cancel')" style="margin-left:20px">取消上传</a> -->
		        		<input type="file" name="uploadify" id="uploadify"  />
		        		<div id="fileQueue" style="float:right"></div>
					</div>
					<div style="float:right;margin-top:10px;width:360px;">
		        		<input type="file" name="uploadpic" id="uploadpic"  />
		        		<div id="fileQueue" style="float:right"></div>
					</div>
				</div>
	        </div>
		</div>
	</div>
	<script type="text/javascript">
		document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
	</script>
	<%@ include file="/templates/footer.jsp" %>
</body>
<script>
$(function () {
	$("#uploadify").uploadify({
		//指定swf文件
        'swf': '../js/uploadify/uploadify.swf',
        //后台处理的页面
        'uploader': '../upload',
        //按钮显示的文字
        'buttonText': '上传附件',
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
        'multi': true,
        // Set to false to keep files that have completed uploading in the queue.
        'removeCompleted' : true,
        'onUploadStart' : function(file) {
       	 if (file.size*1.0/1000000 > 50) {
            	alert("文件不能超过50M，不能上传");
            	$("#uploadify").uploadify('cancel');
       	 }
        },
        'onUploadSuccess': function (file, data, response) {//当上传完成后的回调函数，ajax方式哦~~
        	var editor = CKEDITOR.instances.editor1;
    		var url = window.location.href;
    		var index = url.indexOf("/",7);
    		var urlbef = url.substring(0, index);
    		var editor = CKEDITOR.instances.editor1;
    		if (editor.mode == 'wysiwyg') {
    			alert('<a href=\''+ urlbef + ctxpath + data + '\'>' + file.name + '</a>');
    			editor.insertHtml('<a href=\''+ urlbef + ctxpath + data + '\'>' + file.name + '</a>');
    		} else {
    			alert('必须处于编辑模式');
    		}
		}
	});
	$("#uploadpic").uploadify({
		//指定swf文件
        'swf': '../js/uploadify/uploadify.swf',
        //后台处理的页面
        'uploader': '../upload',
        //按钮显示的文字
        'buttonText': '插入图片',
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
        'multi': true,
        // Set to false to keep files that have completed uploading in the queue.
        'removeCompleted' : true,
        'onUploadStart' : function(file) {
        	if (!checkImg(file.name)) {
            	$("#uploadpic").uploadify('cancel');
        	}
       	 	if (file.size*1.0/1000000 > 50) {
            	alert("图片不能超过50M，不能上传");
            	$("#uploadpic").uploadify('cancel');
       	 	}
        },
        'onUploadSuccess': function (file, data, response) {//当上传完成后的回调函数，ajax方式哦~~
    		var editor = CKEDITOR.instances.editor1;
    		var url = window.location.href;
    		var index = url.indexOf("/",7);
    		var urlbef = url.substring(0, index);
    		if (editor.mode == 'wysiwyg') {
    			editor.insertHtml('<img src=\'' + urlbef + ctxpath + data + '\'/>');
    		} else {
    			alert('必须处于编辑模式');
    		}
		}
	});
});
</script>
</html>
