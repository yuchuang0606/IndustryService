<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/image/small.gif" type="image/x-icon" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/slist.css" type="text/css" />
<title>大连工业设计服务平台</title>
<%
	ConfigurationControl cclink = new ConfigurationControl();
	List<Configuration> linklist= cclink.listConfiguration("config_name", "newspic");
	String[] number={"一","二","三","四","五","六"};
%>
</head>
<body>
	<%@ include file="/templates/header.jsp" %>
	<%@ include file="/templates/logo.jsp" %>
	<%@ include file="/templates/navigator.jsp" %>
	<%@ include file="/templates/location.jsp" %>
	<div id="main" class="main">
		<%@ include file="/admin/siderbar.jsp"%>
		<script src="<%=request.getContextPath()%>/js/jquery-1.10.2.min.js" type="text/javascript"></script>
		<script src="<%=request.getContextPath() %>/js/uploadify/jquery.uploadify.js" type="text/javascript"></script>
		<div id="content" class="content" style="background:#fff;height:500px;">
			<div class="title" style="height:36px;wclassth:100%;line-height:36px;margin:0px auto;text-align:center;background-color:#f5f5f5">
	        	<span style="font-size:16px;"><strong>新闻图片配置</strong></span>
	        </div>
	        <div style="margin-top:25px;padding:0 10px;">
	        	<form action="<%=request.getContextPath() %>/user/configdata?type=newspic" method="post">
				<table width="719px" border="0" cellpadding="0" cellspacing="0" align="center">	
					<tr>
						<td></td>
						<td><span style="font-size:12px;">请填写本站除域名以外的新闻链接</span></td>
						<td></td>
					</tr>			
					<% int i=0; for (Configuration link:linklist) { %>
					<tr valign="middle">
						<td height="60" align="center" valign="middle" style="width:120px;"> 
                            <img id="newspic<%=i %>" src="<%=request.getContextPath() %><%=link.getDescription() %>" style="height:40px;width:40px;"/>
                            <input id="name<%=i %>" name="name<%=i %>" value="<%=link.getDescription() %>" style="display:none" />
                        </td>
						<td align="left">
							链接<%=number[i] %>：<input name="link<%=i%>" type="text" style="width: 300px" value="<%=link.getConfig_path() %>"/>
                        </td>
                        <td>
                        <div style="float:right;width:220px;">
						   		<input type="file" name="uploadpic" id="uploadpic<%=i %>"  />
						   		<div id="fileQueue" style="float:right"></div>
							</div>
                        </td>
                    </tr>
                    <%i++;} %>
					<tr>
                    	<td align="center" height="40" colspan="4" style="padding-bottom: 10px;">
                    		<input type="submit" name="Submit" value="提交" onclick="" id="Submit" style="border-style:Groove;width:60px;" />   
                    	</td>
                    </tr>	                                  
				</table>
				</form>
	        </div>
		</div>
	</div>
	<script type="text/javascript">
		document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
	</script>
	<%@ include file="../templates/footer.jsp" %>
</body>
<script>
<% for (i = 0; i < 6; i++) {%>
$(function () {
	$("#uploadpic<%=i%>").uploadify({
		//指定swf文件
        'swf': '../js/uploadify/uploadify.swf',
        //后台处理的页面
        'uploader': '../upload',
        //按钮显示的文字
        'buttonText': '修改图片',
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
            	$("#uploadpic<%=i%>").uploadify('cancel');
        	}
       	 	if (file.size*1.0/1000000 > 1) {
            	alert("图片不能超过1M，不能上传");
            	$("#uploadpic<%=i%>").uploadify('cancel');
       	 	}
        },
        'onUploadSuccess': function (file, data, response) {//当上传完成后的回调函数，ajax方式哦~~
    		var sr = '<%=request.getContextPath()%>' + data;
    		document.getElementById("newspic<%=i%>").src = sr;
    		document.getElementById("name<%=i%>").value = data;
		}
	});
});
<%}%>
</script>
</html>