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
<script type="text/javascript" src="../js/flexigrid.pack.js"></script> 
<script type="text/javascript" src="../js/jquery.min.js"></script>
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
		<div class="flexigrid" style="width: 720px;">
		<div class="gBlock" style="height: 200px; background-color: white; position: relative; margin-bottom: -200px; z-index: 1; top: 76px; left: 0px; opacity: 0.5; display: block; background-position: initial initial; background-repeat: initial initial;"></div>
		<div class="nDiv" style="margin-bottom: -200px; display: none; top: 76px; height: auto; width: auto; left: 440px;">
			<table cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td class="ndcol1">
							<input type="checkbox" checked="checked" class="togCol" value="0">
						</td>
						<td class="ndcol2">视频序号</td>
					</tr>
					<tr>
						<td class="ndcol1">
							<input type="checkbox" checked="checked" class="togCol" value="1">
						</td>
						<td class="ndcol2">视频名称</td>
					</tr>
					<tr>
						<td class="ndcol1">
							<input type="checkbox" checked="checked" class="togCol" value="2">
						</td>
						<td class="ndcol2">视频作者</td>
					</tr>
					<tr>
						<td class="ndcol1">
							<input type="checkbox" checked="checked" class="togCol" value="3">
						</td>
						<td class="ndcol2">视频大小</td>
					</tr>
					<tr>
						<td class="ndcol1">
							<input type="checkbox" class="togCol" value="4">
						</td>
						<td class="ndcol2">视频路径</td>
					</tr>
					<tr>
						<td class="ndcol1">
							<input type="checkbox" checked="checked" class="togCol" value="5">
						</td>
						<td class="ndcol2">视频类型</td>
					</tr>
					<tr>
						<td class="ndcol1">
							<input type="checkbox" checked="checked" class="togCol" value="6">
						</td>
						<td class="ndcol2">审核状态</td>
					</tr>
					<tr>
						<td class="ndcol1">
							<input type="checkbox" checked="checked" class="togCol" value="7">
						</td>
						<td class="ndcol2">详细信息</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="mDiv">
			<div class="ftitle">视频管理</div>
			<div class="ptogtitle" title="Minimize/Maximize Table"><span></span></div>
		</div>
		<div class="tDiv">
			<div class="tDiv2">
			
				<div class="fbutton">					
					<div><span class="add" style="padding-left: 20px;">上传</span>
						<input type="file" name="" id="" style="width:150px;" />
					</div>
				</div>
				<div class="fbutton">
					<div><span class="edit" style="padding-left: 20px;">修改</span></div>		
				</div>
				<div class="fbutton">
					<div><span class="delete" style="padding-left: 20px;">删除</span></div>		
				</div>
				<div class="btnseparator"></div>
			</div>
			<div style="clear:both"></div>
		</div>
		<div class="hDiv">
			<div class="hDivBox">
				<table cellpadding="0" cellspacing="0">
				<thead>
					<tr>
						<th axis="col0" abbr="softID" align="center" class="">
							<div class="" style="text-align: center; width: 45px;">视频序号</div>
						</th>
						<th axis="col1" abbr="softname" align="center" class="">
							<div class="" style="text-align: center; width: 90px;">视频名称</div>
						</th>
						<th axis="col2" abbr="author" align="center" class="">
							<div class="" style="text-align: center; width: 70px;">视频作者</div>
						</th>
						<th axis="col3" abbr="size" align="center" class="">
							<div style="text-align: center; width: 45px;" class="">视频大小</div>
						</th>
						<th axis="col4" abbr="path" align="center" class="">
							<div style="text-align: center; width: 80px;">视频路径</div>
						</th>
						<th axis="col5" abbr="verify" align="center" class="">
							<div class="" style="text-align: center; width: 50px;">视频类型</div>
						</th>
						<th axis="col6" abbr="verify" align="center" class="">
							<div class="" style="text-align: center; width: 100px;">审核状态</div>
						</th>
						<th axis="col7" abbr="verify" align="center" class="">
							<div class="" style="text-align: center; width: 100px;">详细信息</div>
						</th>
					</tr>
				</thead>
				</table>
			</div>
		</div>
		<div class="cDrag" style="top: 52px;">
			<div style="height: 224px; display: block; left: 100px;"></div>
			<div style="height: 224px; display: block; left: 231px;"></div>
			<div style="height: 224px; display: block; left: 362px;"></div>
			<div style="height: 224px; display: block; left: 453px;"></div>
			<div style="height: 224px; display: none;"></div>
		</div>
		<div class="bDiv" style="height: 200px;">
			<table class="flexme4" style="" cellpadding="0" cellspacing="0" border="0"></table>
			<div class="iDiv" style="display: none;"></div>
		</div>
		<div class="sDiv">
			<div class="sDiv2">
			Find 
				<input type="text" value="" size="30" name="q" class="qsbox">  
				<select name="qtype">
					<option value="id">视频序号&nbsp;&nbsp;</option>
					<option value="name" selected="selected">视频名称&nbsp;&nbsp;</option>
				</select>
			</div>
		</div>
		<div class="pDiv">
			<div class="pDiv2">
				<div class="pGroup"> 
					<div class="pSearch pButton"><span></span></div>
				</div>  
				<div class="btnseparator"></div>
				<div class="pGroup">
					<select name="rp">
						<option value="10">10&nbsp;&nbsp;</option>
						<option value="20">20&nbsp;&nbsp;</option>
						<option value="30">30&nbsp;&nbsp;</option>
						<option value="50">50&nbsp;&nbsp;</option>
						<option value="100">100&nbsp;&nbsp;</option>
					</select>
				</div> 
				<div class="btnseparator"></div>
				<div class="pGroup">
					<div class="pFirst pButton"><span></span></div>
					<div class="pPrev pButton"><span></span></div>
				</div> 
				<div class="btnseparator"></div> 
				<div class="pGroup">
					<span class="pcontrol">Page <input type="text" size="4" value="1"> of <span> 1 </span></span>
				</div> 
				<div class="btnseparator"></div>
				<div class="pGroup"> 
					<div class="pNext pButton"><span></span></div>
					<div class="pLast pButton"><span></span></div> 
				</div> 
				<div class="btnseparator"></div> 
				<div class="pGroup"> 
					<div class="pReload pButton loading"><span></span></div> 
				</div> 
				<div class="btnseparator"></div> 
				<div class="pGroup"><span class="pPageStat">Processing, please wait ...</span></div>
			</div>
			<div style="clear:both"></div>
		</div>
		<div class="vGrip"><span></span></div>
		<div class="hGrip" style="height: 308px;"><span></span></div>
		</div>
		</div>
		<script type="text/javascript">
		$(".flexme4").flexigrid({
            url : 'video',
            dataType : 'json',
            colModel : [ {
            	display : '视频序号',
                name : 'vID',
                width : 45,
                sortable : true,
                align : 'center'
            	},{
                display : '视频名称',
                name : 'vname',
                width : 90,
                sortable : true,
                align : 'center'
                }, {
                    display : '视频作者',
                    name : 'author',
                    width : 70,
                    sortable : true,
                    align : 'left'
                }, {
                    display : '视频大小',
                    name : 'size',
                    width : 45,
                    sortable : true,
                    align : 'left'
                }, {
                    display : '视频路径',
                    name : 'path',
                    width : 80,
                    sortable : true,
                    align : 'left',
                    hide : true
                }, {
                    display : '视频类型',
                    name : 'type',
                    width : 50,
                    sortable : true,
                    align : 'left',
                    hide : true
                }, {
                    display : '审核状态',
                    name : 'describe',
                    width : 50,
                    sortable : true,
                    align : 'left',
                    hide : true
            } ],
            buttons : [ {
                name : '增加',
                bclass : 'add',
                onpress : Example4
                }
                ,
                {
                    name : '编辑',
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
                display : '视频序号',
                name : 'vID'
                }, {
                    display : '视频名称',
                    name : 'vname',
                    isdefault : true
            } ],
            sortname : "softID",
            sortorder : "asc",
            usepager : true,
            title : '视频管理',
            useRp : true,
            rp : 15,
            showTableToggleBtn : true,
            width : 750,
            height : 200
        });

        function Example4(com, grid) {
            if (com == '删除') {
                var conf = confirm('删除 ' + $('.trSelected', grid).length + ' items?')
                if(conf){
                    $.each($('.trSelected', grid),
                        function(key, value){
                            $.get('example4.php', { Delete: value.firstChild.innerText}
                                , function(){
                                    // when ajax returns (callback), update the grid to refresh the data
                                    $(".flexme4").flexReload();
                            });
                    });    
                }
            }
            else if (com == '编辑') {
                var conf = confirm('编辑 ' + $('.trSelected', grid).length + ' items?')
                if(conf){
                    $.each($('.trSelected', grid),
                        function(key, value){
                            // collect the data
                            var vID = value.children[0].innerText; // in case we're changing the key
                            var vname = prompt("视频名称",value.children[0].innerText);
                            var author = prompt("视频作者",value.children[1].innerText);
                            var size = prompt("视频大小",value.children[2].innerText);
                            var path = prompt("视频路径",value.children[3].innerText);
                            var type = prompt("视频类型",value.children[4].innerText);
                            var describe = prompt("视频描述",value.children[4].innerText);

                            // call the ajax to save the data to the session
                            $.get('example4.php', 
                                { Edit: true
                                    , vID: vID
                                    , vname: vname
                                    , author: author
                                    , size: size
                                    , path: path
                                    , type: type        
                                    , describe: describe	}
                                , function(){
                                    // when ajax returns (callback), update the grid to refresh the data
                                    $(".flexme4").flexReload();
                            });
                    });    
                }
            }
            else if (com == '增加') {
                // collect the data
                var vID = prompt("请输入视频序号","6");
                var vname = prompt("请输入视频名称","YHW");
                var author = prompt("请输入视频作者","hahah");
                var size = prompt("请输入视频大小","4M");
                var path = prompt("请输入视频路径","123456789");
                var type = prompt("请输入视频类型","1");
                var describe = prompt("请输入视频描述");
                // call the ajax to save the data to the session
                $.get('example4.php', { Add: true, vID: vID, vname: vname, author: author, size: size, path: path, type: type, describe: describe  }
                    , function(){
                        // when ajax returns (callback), update the grid to refresh the data
                        $(".flexme4").flexReload();
                });
            }
        }
    
		</script>
	</div>
	
	<br><br><br>
	
	<%@ include file="../templates/footer.jsp" %>
</body>
</html>