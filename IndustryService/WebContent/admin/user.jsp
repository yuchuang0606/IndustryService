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
			<a href="<%=request.getContextPath() %>/index.jsp">首页</a> 》 <a href="<%=request.getContextPath() %>/admin/index.jsp">管理中心</a> 》 用户管理
			</span>
		</div>
	</div>
	<div id="main" class="main">
		<%@ include file="/admin/siderbar.jsp"%>
		<script src="<%=request.getContextPath()%>/js/jquery-1.10.2.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/Flexigrid-master/js/flexigrid.pack.js"></script> 
		<script src="<%=request.getContextPath() %>/js/ckeditor/ckeditor.js"></script>
    	<script type="text/javascript" src="<%=request.getContextPath() %>/admin/layer/layer.js"></script>
		<script src="<%=request.getContextPath() %>/js/util.js"></script>
		<div id="content" class="content">
			<div class="title" style="height:36px;wclassth:100%;line-height:36px;margin:0px auto;text-align:center;background-color:#f5f5f5">
	        	<span style="font-size:16px;"><strong>用户管理</strong></span>
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
<div id="infodiv" style="height:220px;width:300px;display:none">
	<div style="height:36px;line-height:36px;background:#f5f5f5;text-align:center;">
		<font size="2"><strong>信息修改</strong></font>
	</div>
	<table style="padding:10px 20px;">
		<tr>
			<td></td>
			<td><input width="220" value="" id="id" style="display:none"/></td>
		</tr>
		<tr height="50">
			<td width="100">用&nbsp;&nbsp;户&nbsp;&nbsp;名：</td>
			<td><input value="" id="username" disabled style="height:22px;width:160px;"/></td>
		</tr>
		<tr height="50">
			<td width="100">上传限制：</td>
			<td><input value="" id="uploadsize" style="height:22px;width:160px;"/></td>
		</tr>
		<tr height="50">
			<td colspan="2" align="center"><input type="submit" value="提   交" onclick="saveInfo()" style="cursor:pointer;border-width:0px;margin-top:5px;color:#fff;font-weight:bold;height:30px;width:80px;background:url(<%=request.getContextPath() %>/image/nav_bg.png) repeat-x"/></td>
		</tr>
	</table>
</div>
<script>
$("#flex1").flexigrid({
      url : '../user/userdata?type=jsonlist',
      dataType : 'json',
      colModel : [ 
        {display : '用户名',name : 'username', width : 50,sortable : true,align : 'left'},
      	{display : '用户组',name : 'usergroup',width : 55,sortable : true,align : 'left'},
      	{display : '金币',name : 'coin',width : 25,sortable : true,align : 'left'},
      	{display : '上传限制',name : 'uploadsize',width : 45,sortable : true,align : 'left'},
      	{display : '下载数量',name : 'downloadnumber',width : 45,sortable : true,align : 'left'},
      	{display : '上传数量',name : 'uploadnumber',width : 45,sortable : true,align : 'left'},
      	{display : '上次登录',name : 'lastlogin',width : 58,sortable : true,align : 'left'},
      	{display : '登录次数',name : 'logintimes',width : 45,sortable : true,align : 'left'},
      	{display : '注册时间',name : 'regtime',width : 58,sortable : true,align : 'left'},
      	{display : '邮箱',name : 'email',width : 80,sortable : true,align : 'left'},
      	{display : '手机号',name : 'phonenumber',width : 50,sortable : true, align : 'left'},
      	{display : '所属公司',name : 'company',width : 50,sortable : true,align : 'left'},
      	{display : '部门',name : 'department',width : 50,sortable : true,align : 'left'},
      	{display : '职位',name : 'jobtitle',width : 50,sortable : true,align : 'left'},
      	{display : '地址',name : 'address',width : 50,sortable : true,align : 'left'},
      	{display : '邮寄地址',name : 'mailaddress',width : 50,sortable : true,align : 'left'},
      	{display : '邮编',name : 'postcode',width : 50,sortable : true,align : 'left'},
      	{display : '姓名',name : 'realname',width : 50,sortable : true,align : 'left'},
      	{display : '生日',name : 'birthday',width : 50,sortable : true,align : 'left'},
      	{display : '性别',name : 'gender',width : 50,sortable : true,align : 'left'}
      ],
      buttons:[{name : '修改',bclass : 'edit',onpress : handle},
               {name : '删除',bclass : 'delete',onpress : handle},
               {name : '激活',bclass : 'verify',onpress : handle},
               {separator : true}],
      searchitems:[{display : '用户名',name : 'title',isdefault : true}],
      sortname : "regtime",
      sortorder : "asc",
      usepager : true,
      singleSelect: true,
      title : '用户管理',
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
              var conf = confirm('删除 ' + $('.trSelected').children('td').eq(0).children('div').html() + ' 用户吗?');
              if(conf){
                  $.each($('.trSelected', grid),
                      function(key, value){
                          $.get('../user/userdata?type=delete' + '&id=' + id,
                        	function(result){
                              	if (result=="true")
                              		alert("删除成功！");
                              	else if (result == "reject")
                              		alert("管理员组用户不能被删除");
                              	else
                              		alert("删除失败");
                                  // when ajax returns (callback), update the grid to refresh the data
                                  $("#flex1").flexReload();
                          });
                  });    
              }
          } else if (com == '修改') {
        	  $("#id").attr("value", id);
              $.get('../user/userdata?type=get' + "&id=" + id,
              function (result) {
                  var json = JSON.parse(result);
                  temp = json;
                  $("#username").val(json.username);
                  $("#uploadsize").val(json.uploadsize);
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
                       offset: ['280px', ''],
                       area: ['300px', '220px'],
                       page: { dom: '#infodiv' },
                       close: function (index) {
                           layer.close(i);
                       }
                   });
                   layerindex = i;
               });
          } else if (com == '激活') {
        	  var conf = confirm('激活 ' + $('.trSelected').children('td').eq(0).children('div').html() + ' 用户吗?');
        	  if(conf){
                  $.each($('.trSelected', grid),
                      function(key, value){
                          $.get('../user/userdata?type=active' + '&id=' + id,
                        	function(result){
                              	if (result=="true")
                              		alert("激活成功");
                              	else if (result == "reject")
                              		alert("管理员组用户不用激活");
                              	else 
                              		alert("激活失败");
                                  // when ajax returns (callback), update the grid to refresh the data
                                  $("#flex1").flexReload();
                          });
                  });    
              }
          }
      }
      function saveInfo()
      {
    	  var uploadsize = $("#uploadsize").val();
          var id = $("#id").val();
          $.post('../user/userdata?type=updatesize',
              {uploadsize:uploadsize,id:id},
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
</html>