<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/image/small.gif" type="image/x-icon" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/slist.css" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/location.css" type="text/css" />
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
	<div class="location">
		<div class="loccontent">
			<span style="font-size:14px;color:#3C3C3C">您当前位置：</span>
			<img src="<%=request.getContextPath() %>/image/house.png" width="15" height="15"></img>
			<span style="font-size:14px;color:#3C3C3C">
			<a href="<%=request.getContextPath() %>/index.jsp">首页</a> 》 <a href="<%=request.getContextPath() %>/admin/index.jsp">管理中心</a> 》 下载记录管理
			</span>
		</div>
	</div>
	<div id="main" class="main">
		<%@ include file="/admin/siderbar.jsp"%>
		<script src="<%=request.getContextPath()%>/js/jquery-1.9.1.js" type="text/javascript"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/Flexigrid-master/js/flexigrid.pack.js"></script> 
		<script src="<%=request.getContextPath() %>/js/ckeditor/ckeditor.js"></script>
    	<script type="text/javascript" src="<%=request.getContextPath() %>/admin/layer/layer.js"></script>
		<script src="<%=request.getContextPath() %>/js/util.js"></script>
		<div id="content" class="content">
			<div class="title" style="height:36px;wclassth:100%;line-height:36px;margin:0px auto;text-align:center;background-color:#f5f5f5">
	        	<span style="font-size:16px;"><strong>下载记录管理</strong></span>
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
      url : '../user/dlrecorddata?command=jsonlist',
      dataType : 'json',
      colModel : [ {
      	display : '用户名',
          name : 'username',
          width : 100,
          sortable : true,
          align : 'left'
      	},{
          display : '资源名称',
          name : 'restitle',
          width : 400,
          sortable : true,
          align : 'left'
        },{
            display : '类型',
            name : 'restype',
            width : 40,
            sortable : true,
            align : 'center'
         },{
            display : '下载时间',
            name : 'downloadtime',
            width : 128,
            sortable : true,
            align : 'center'
        }],
      buttons:[{
          name : '删除',
          bclass : 'delete',
          onpress : handle
      },{
          separator : true
      }],
      searchitems:[{
       	  display : '用户名',
       	  name : 'username',
       	  isdefault : true
      },{
       	  display : '资源名称',
       	  name : 'restitle',
       	  isdefault : true
      }],
      sortname : "downloadtime",
      sortorder : "desc",
      usepager : true,
      singleSelect: true,
      title : '下载记录表',
      useRp : true,
      rp : 12,
      showTableToggleBtn : true,
      width : 718,
      height : 330
      });
      
	  var layerindex;
      function handle(com, grid) {
    	  var sel = $('.trSelected', grid).attr("id");
    	  if (sel==null)
    		  alert("请选择被操作的数据行");
    	  var id = $('.trSelected', grid).attr("id").replace("row", "");
          if (com == '删除') {
              var conf = confirm('删除 ' + $('.trSelected').children('td').eq(0).children('div').html() + ' 记录吗?');
              if(conf){
                  $.each($('.trSelected', grid),
                      function(key, value){
                          $.get('../user/dlrecorddata?command=delete' + '&id=' + id,
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
          }
      }
</script>
</html>