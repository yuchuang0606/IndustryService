<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="../css/index.css" type="text/css" />
<link rel="shortcut icon" href="../image/c.png" type="image/x-icon" />
<link rel="stylesheet" href="../css/flexigrid.css" type="text/css"></link>
<link rel="stylesheet" href="../css/header.css" type="text/css" />
<link rel="stylesheet" href="../css/logo.css" type="text/css" />
<link rel="stylesheet" href="../css/footer.css" type="text/css" />
<link rel="stylesheet" href="../css/navigator.css" type="text/css"/>
<link rel="stylesheet" href="../css/slist.css" type="text/css" />
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
		<script type="text/javascript">
		$("#flex1").flexigrid({
            url : '../software?type=list',
            dataType : 'json',
            colModel : [ {
            	display : '软件序号',
                name : 'softID',
                width : 45,
                sortable : true,
                align : 'center'
            	},{
                display : '软件名称',
                name : 'softname',
                width : 90,
                sortable : true,
                align : 'center'
                }, {
                    display : '软件作者',
                    name : 'author',
                    width : 70,
                    sortable : true,
                    align : 'left'
                }, {
                    display : '软件大小',
                    name : 'size',
                    width : 45,
                    sortable : true,
                    align : 'left'
                }, {
                    display : '软件路径',
                    name : 'path',
                    width : 80,
                    sortable : true,
                    align : 'left'                    
                }, {
                    display : '审核状态',
                    name : 'verify',
                    width : 50,
                    sortable : true,
                    align : 'left',                    
            } ],
            buttons : [ {
                name : '增加',
                bclass : 'add',
                onpress : Example4
                }
                ,
                {
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
                display : '软件序号',
                name : 'softID'
                }, {
                    display : '软件名称',
                    name : 'softname',
                    isdefault : true
            } ],
            sortname : "softID",
            sortorder : "asc",
            usepager : true,
            title : '软件管理',
            useRp : true,
            rp : 15,
            showTableToggleBtn : true,
            width : 750,
            height : 200
        });

        function Example4(com, grid) {
            if (com == '删除') {
                var conf = confirm('删除第 ' + $('.trSelected', grid).length + ' 条记录?')
                if(conf){
                    $.each($('.trSelected', grid),
                        function(key, value){
                            $.get('../software?type=delete&id=' + softID, { Delete: value.firstChild.innerText}
                                , function(){
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
                            var softID = value.children[0].innerText; // in case we're changing the key
                            var softname = prompt("软件名称",value.children[1].innerText);
                            var author = prompt("软件作者",value.children[2].innerText);
                            var size = prompt("软件大小",value.children[3].innerText);
                            var path = prompt("软件路径",value.children[4].innerText);
                            var verify = prompt("审核状态",value.children[5].innerText);                         

                            // call the ajax to save the data to the session
                            $.get('../software?type=update&softID=' + softID
                            		+ '&softname=' + softname
                            		+ '&author=' + author
                            		+ '&size=' + size
                            		+ '&path=' + path
                            		+ '&verify' + verify, 
                                { Edit: true
                                    , softID: softID
                                    , softname: softname
                                    , author: author
                                    , size: size
                                    , path: path
                                    , verify: verify        }
                                , function(){
                                	if (result=="true")
                                		alert("修改成功！");
                                    // when ajax returns (callback), update the grid to refresh the data
                                    $("#flex1").flexReload();
                            });
                    });    
                }
            }
            else if (com == '增加') {
                // collect the data
                
                var softname = prompt("请输入软件名称","YHW");
                var author = prompt("请输入软件作者","hahah");
                var size = prompt("请输入软件大小","4M");
                var path = prompt("请输入软件路径","123456789");
                var verify = prompt("请输入软件审核状态","未审核");
                
                // call the ajax to save the data to the session
                $.get('../software?type=add&softname=' + softname
                		+ '&author=' + author 
                		+ '&size=' + size
                		+ '&path=' + path
                		+ '&verify=' + verify, { Add: true, softname: softname, author: author, size: size, path: path, verify:verify  }
                    , function(){
                    	if (result=="true")
                    		alert("增加成功！");
                        // when ajax returns (callback), update the grid to refresh the data
                        $("#flex1").flexReload();
                });
            }
        }
    
		</script>
	</div>
	</div>
	<br><br><br>
	
	<%@ include file="../templates/footer.jsp" %>
</body>
</html>