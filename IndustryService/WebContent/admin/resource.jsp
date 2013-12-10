<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/slist.css" type="text/css" />
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
    	<script type="text/javascript" src="<%=request.getContextPath() %>/admin/layer/layer.js"></script>
		<script src="<%=request.getContextPath() %>/js/util.js"></script>
		<div id="content" class="content">
			<div class="title" style="height:36px;wclassth:100%;line-height:36px;margin:0px auto;text-align:center;background-color:#f5f5f5">
	        	<span style="font-size:16px;"><strong>资源管理</strong></span>
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
      url : '../user/resourcedata?command=jsonlist&type=' + getParamValue("type"),
      dataType : 'json',
      colModel : [ {
      	display : '资源名称',
          name : 'title',
          width : 203,
          sortable : true,
          align : 'left'
      	},{
          display : '作者',
          name : 'author',
          width : 50,
          sortable : true,
          align : 'center'
        },{
            display : '类型',
            name : 'restype',
            width : 25,
            sortable : true,
            align : 'left'
        },{
            display : '创建时间',
            name : 'createtime',
            width : 60,
            sortable : true,
            align : 'left'
        },{
            display : '大小',
            name : 'ressize',
            width : 50,
            sortable : true,
            align : 'left'
        },{
            display : '金币',
            name : 'coin',
            width : 25,
            sortable : true,
            align : 'left'
        },{
            display : '关注度',
            name : 'viewtimes',
            width : 40,
            sortable : true,
            align : 'left'
            //hide : true
        },{
            display : '下载次数',
            name : 'downloadtimes',
            width : 50,
            sortable : true,
            align : 'left'
        },{
            display : '是否公开',
            name : 'ispublic',
            width : 50,
            sortable : true,
            align : 'left'
        },{
            display : '审核状态',
            name : 'ispass',
            width : 50,
            sortable : true,
            align : 'left'
            //hide : true
        } ],
      buttons:[{
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
          display : '标签',
          name : 'tag',
      }],
      sortname : "createtime",
      sortorder : "desc",
      usepager : true,
      singleSelect: true,
      title : getStrtype(getParamValue("type"))+'管理',
      useRp : true,
      rp : 12,
      showTableToggleBtn : true,
      width : 718,
      height : 330
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
                          $.get('../user/resourcedata?command=delete&type=' + getParamValue("type") + '&id=' + id,
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
          } else if (com == '审核') {
        	  var title = $('.trSelected').children('td').eq(0).children('div').html();
        	  var index1 = title.indexOf("title=\"");
        	  var index2 = title.indexOf("\">");
        	  var tt = title.substring(index1+7,index2);
        	  var conf = confirm('将 ' + tt + ' 通过审核吗?');
        	  if(conf){
                  $.each($('.trSelected', grid),
                      function(key, value){
                          $.get('../user/resourcedata?command=verify&type=' + getParamValue("type") + '&id=' + id,
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
</script>
</html>