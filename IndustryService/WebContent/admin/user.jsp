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
<link rel="stylesheet" href="../css/flexigrid.css" type="text/css"></link>
<link rel="stylesheet" href="../css/navigator.css" type="text/css"/>
<link rel="stylesheet" href="../css/slist.css" type="text/css" />
<link rel="stylesheet" href="../css/footer.css" type="text/css" />
<script type="text/javascript" src="../js/jquery-1.9.1.js"></script>
<script type="text/javascript" src="../js/jquery-ui.js"></script>
<script type="text/javascript" src="../js/flexigrid.js"></script> 


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
		<div id="content" class="content" style="width:737px;height:700px;float:left;background:#fff;margin:5px auto;">
			<table id="flex1" class="flexigrid" style="display:none"></table>		
		</div>
		
		<script>
		$("#flex1").flexigrid({
            url : '../userdata?type=list',
            dataType : 'json',
            colModel : [ {
            	display : '用户序号',
                name : 'userID',
                width : 40,
                sortable : true,
                align : 'center'
            	},{
                display : '用户名',
                name : 'username',
                width : 90,
                sortable : true,
                align : 'center'
                }, {
                    display : '用户组',
                    name : 'group',
                    width : 70,
                    sortable : true,
                    align : 'left'
                }, {
                    display : '邮箱',
                    name : 'email',
                    width : 80,
                    sortable : true,
                    align : 'left'
                }, {
                    display : '联系电话',
                    name : 'phoneNum',
                    width : 80,
                    sortable : true,
                    align : 'left'
                    //hide : true
                }, {
                    display : '所属公司',
                    name : 'company',
                    width : 80,
                    sortable : true,
                    align : 'left'
                    //hide : true
            } ],
            buttons : [ {            
                    name : '修改',
                    bclass : 'edit',
                    onpress : Example4
                }
                ,
                {
                    name : '删除',
                    bclass : 'delete',
                    onpress : Example4
                }
                ,
                {
                    separator : true
                } 
            ],
            searchitems : [ {
                display : '用户序号',
                name : 'userID'
                }, {
                    display : '用户名',
                    name : 'username',
                    isdefault : true
            } ],
            sortname : "userID",
            sortorder : "asc",
            usepager : true,
            title : '用户管理',
            useRp : true,
            rp : 10,
            showTableToggleBtn : true,
            width : 750,
            height : 200
        });

        function Example4(com, grid) {
            if (com == '删除') {
                var conf = confirm('删除第' + $('.trSelected', grid).length + ' 条记录?')
                if(conf){
                    $.each($('.trSelected', grid),
                        function(key, value){
                            $.get('../userdata?type=delete&id=' + userID, { Delete: value.firstChild.innerText}
                                , function(result){
                                	if (result=="true")
                                		alert("删除成功！");
                                    // when ajax returns (callback), update the grid to refresh the data
                                    $("#flex1").flexReload();
                            });
                    });    
                }
            }
            else if (com == '修改') {
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
	
</div>
	
	<br><br><br>
	
	<%@ include file="../templates/footer.jsp" %>
</body>
</html>