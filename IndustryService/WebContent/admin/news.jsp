<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/slist.css" type="text/css" />
<link href="<%=request.getContextPath() %>/js/uploadify/uploadify.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/layer/skin/layer.css"/>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/Flexigrid-master/css/flexigrid.css" />
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
	<%@ include file="/templates/location.jsp" %>
	<div id="main" class="main">
		<%@ include file="/admin/siderbar.jsp"%>
		<script src="<%=request.getContextPath()%>/js/jquery-1.10.2.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/Flexigrid-master/js/flexigrid.pack.js"></script> 
		<script src="<%=request.getContextPath() %>/js/ckeditor/ckeditor.js"></script>
		<script src="<%=request.getContextPath() %>/js/uploadify/jquery.uploadify.js" type="text/javascript"></script>
    	<script type="text/javascript" src="<%=request.getContextPath() %>/admin/layer/layer.js"></script>
		<script src="<%=request.getContextPath() %>/js/util.js"></script>
		<div id="content" class="content">
			<div class="title" style="height:36px;wclassth:100%;line-height:36px;margin:0px auto;text-align:center;background-color:#f5f5f5">
	        	<span style="font-size:16px;"><strong>信息管理</strong></span>
	        </div>
	        <div style="margin-top:5px;padding:0 10px;min-height:500px;">
	        	<table id="flex1" class="flexigrid" style="width:700px;display:none"></table>
	        </div>
		</div>
	</div>
	<script type="text/javascript">
		document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
	</script>
	<%@ include file="/templates/footer.jsp" %>
</body>
<script>
$("#flex1").flexigrid({
      url : '../user/newsdata?command=jsonlist&type=' + getParamValue("type"),
      dataType : 'json',
      colModel : [ {
      	display : '标题',
          name : 'title',
          width : 308,
          sortable : true,
          align : 'left'
      	},{
          display : '作者',
          name : 'author',
          width : 70,
          sortable : true,
          align : 'center'
        },{
            display : '创建时间',
            name : 'createtime',
            width : 70,
            sortable : true,
            align : 'left'
        }, {
            display : '修改时间',
            name : 'modifytime',
            width : 80,
            sortable : true,
            align : 'left'
        }, {
            display : '关注度',
            name : 'accesstime',
            width : 50,
            sortable : true,
            align : 'left'
            //hide : true
        }, {
            display : '审核状态',
            name : 'ispublic',
            width : 70,
            sortable : true,
            align : 'left'
            //hide : true
        } ],
      buttons:[{            
          name : '修改',
          bclass : 'edit',
          onpress : handle
      },{
          name : '删除',
          bclass : 'delete',
          onpress : handle
      },{
          name : '审核',
          bclass : 'verify',
          onpress : handle
      },{
          separator : true
      }],
      searchitems:[{
       	  display : '标题',
       	  name : 'title',
       	  isdefault : true
      },{
          display : '作者',
          name : 'author',
      }],
      sortname : "modifytime",
      sortorder : "desc",
      usepager : true,
      singleSelect: true,
      title : getStrtype(getParamValue("type"))+'管理',
      useRp : true,
      rp : 12,
      showTableToggleBtn : true,
      width : 718,
      height : 330,
      });
      
	  var layerindex;
      function handle(com, grid) {
    	  var id = $('.trSelected', grid).attr("id").replace("row", "");
          if (com == '删除') {
        	  var title = $('.trSelected').children('td').eq(0).children('div').html();
        	  var index1 = title.indexOf("title=\"");
        	  var index2 = title.indexOf("\">");
        	  var tt = title.substring(index1+7,index2);
              var conf = confirm('删除 ' + tt + ' 吗?');
              if(conf){
                  $.each($('.trSelected', grid),
                      function(key, value){
                          $.get('../user/newsdata?command=delete&type=' + getParamValue("type") + '&id=' + id,
                        	function(result){
                              	if (result=="true")
                              		alert("删除成功！");
                              	else 
                              		alert("删除失败");
                                  // when ajax returns (callback), update the grid to refresh the data
                                  $("#flex1").flexReload();
                          });
                  });    
              }
          } else if (com == '修改') {
        	  $("#id").attr("value", id);
              $.get('../user/newsdata?command=get&type=' + getParamValue("type") + "&id=" + id,
              function (result) {
                  var json = JSON.parse(result);
                  temp = json;
                  $("#title").val(json.title);
                  if (CKEDITOR.instances.editor1) {
                      CKEDITOR.instances.editor1.destroy();
                  }
                  CKEDITOR.replace('editor1',
                  {
                      height: 400
                  });
                   CKEDITOR.instances.editor1.setData(json.content, function (){});
                   var i = $.layer({
                       type: 1,
                       title: false,
                       shade: [0.5, '#000', true],
                       shadeClose: false,
                       fix: false,
                       move: ['.xubox_title', false],
                       closeBtn: [1, true],
                       border: [5, 0.5, '#666', true],
                       loading: { type: 0 },
                       offset: ['20px', ''],
                       area: ['740px', '740px'],
                       page: { dom: '#newsdiv' },
                       close: function (index) {
                           if (CKEDITOR.instances.editor1) {
                               CKEDITOR.instances.editor1.destroy();
                           }
                           layer.close(i);
                       }
                   });
                   layerindex = i;
               });
          } else if (com == '审核') {
        	  var title = $('.trSelected').children('td').eq(0).children('div').html();
        	  var index1 = title.indexOf("title=\"");
        	  var index2 = title.indexOf("\">");
        	  var tt = title.substring(index1+7,index2);
        	  var conf = confirm('将 ' + tt + ' 通过审核吗?');
        	  if(conf){
                  $.each($('.trSelected', grid),
                      function(key, value){
                          $.get('../user/newsdata?command=verify&type=' + getParamValue("type") + '&id=' + id,
                        	function(result){
                              	if (result=="true")
                              		alert("审核通过");
                              	else 
                              		alert("审核失败");
                                  // when ajax returns (callback), update the grid to refresh the data
                                  $("#flex1").flexReload();
                          });
                  });    
              }
          }
      }
      function saveNews()
      {
    	  var title = $("#title").val();
          var id = $("#id").val();
          var content = CKEDITOR.instances.editor1.getData();
          if (CKEDITOR.instances.editor1) {
              CKEDITOR.instances.editor1.destroy();
          }
          $.post('../user/newsdata?command=update&type=' + getParamValue("type") + "&id=" + id,
              {title:title,id:id,content:content},
              function (data) {
                  $("#flex1").flexReload();
                  layer.close(layerindex);
                  if (data == "true") {
                      alert("修改成功！");
                  }
                  else {
                      alert("修改失败！");
                  }
                  //layer.close(layerindex);
              }
              );
      }
</script>
  	<div id="newsdiv" style="height:820px;width:720px;padding:10px 10px;display:none">
  		<div style="height:40px;line-height:40px;">
    		<div style="float:left;">标题：<input id="title" name="title" size="80" style="margin:2px;height:22px;" /></div>
    		<div style="float:right;">
    			<input type="submit" name="publish" value="保   存" id="publish" onclick="saveNews()" style="border-width:0px;margin-top:5px;color:#fff;font-weight:bold;height:30px;width:80px;background:url(<%=request.getContextPath() %>/image/nav_bg.png) repeat-x" />
    		</div>
   		</div>
   		<input id="id" name="id" style="display:none"/>
   		<textarea id="editor1" class="ckeditor" name="editor1" style=""></textarea>
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
    		if (editor.mode == 'wysiwyg') {
    			editor.insertHtml('<a href=\'.'+ data + '\'>' + file.name + '</a>');
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