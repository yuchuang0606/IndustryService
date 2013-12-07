<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/image/c.png" type="image/x-icon" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/slist.css" type="text/css" />
<link href="<%=request.getContextPath() %>/js/uploadify/uploadify.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/admin/Flexigrid-master/css/flexigrid.pack.css" />
<title>大连工业设计服务平台</title>
</head>
<body>
	<%@ include file="/templates/header.jsp" %>
	<%@ include file="/templates/logo.jsp" %>
	<%@ include file="/templates/navigator.jsp" %>
	<%@ include file="/templates/location.jsp" %>
	<div id="main" class="main">
		<%@ include file="/admin/leftindex.jsp"%>
		<script src="<%=request.getContextPath()%>/js/jquery-1.10.2.min.js" type="text/javascript"></script>
		<script type="text/javascript" src="<%=request.getContextPath()%>/admin/Flexigrid-master/js/flexigrid.pack.js"></script> 
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
      url : '../newsdata?command=jsonlist&type=' + getParamValue("type"),
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
      height : 330
      });

      function handle(com, grid) {
          if (com == '删除') {
              var conf = confirm('删除 ' + $('.trSelected').children('td').eq(0).children('div').html() + ' 吗?')
              if(conf){
                  $.each($('.trSelected', grid),
                      function(key, value){
                          $.get('../newsdata?command=delete&type=' + getParamValue(type) + '&id=' + id,
                        	function(result){
                              	if (result=="true")
                              		alert("删除成功！");
                                  // when ajax returns (callback), update the grid to refresh the data
                                  $("#flex1").flexReload();
                          });
                  });    
              }
          } else if (com == '修改') {
              var conf = confirm('修改第 ' + $('.trSelected', grid).length + ' 条记录?')
              if(conf){
                  $.each($('.trSelected', grid),
                      function(key, value){
                          // collect the data
                          var userID = value.children[0].innerText; // in case we're changing the key
                          var username = prompt("请输入用户名",value.children[1].innerText);
                          var group = prompt("用户组属性",value.children[2].innerText);
                          var email = prompt("邮箱",value.children[3].innerText);
                          var phoneNum = prompt("联系电话",value.children[4].innerText);
                          var company = prompt("所属公司",value.children[5].innerText);
                          
                          // call the ajax to save the data to the session
                          $.get('../userdata?type=update&id=' + userID 
                          		+ '&username=' + username + '&group='
                          		+ group + '&email=' + email 
                          		+ '&phoneNum=' + phoneNum 
                          		+ '&company=' + company , 
                              { Edit: true
                                  , userID: userID
                                  , username: username
                                  , group: group
                                  , email: email
                                  , phoneNum: phoneNum
                                  , company: company   }
                              , function(){
                              	if (result=="true")
                              		alert("修改成功！");
                                  // when ajax returns (callback), update the grid to refresh the data
                                  $("#flex1").flexReload();
                          });
                  });    
              }
          }      
      }
  
</script>
</html>