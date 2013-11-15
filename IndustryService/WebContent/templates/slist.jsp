<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="./css/slist.css" type="text/css" />
<script type="text/javascript" language="javascript" src="./js/jquery.js"></script>
<script type="text/javascript" language="javascript" src="./js/jquery.dataTables.min.js"></script>
<div class="slist">
	<div class="slist_l">
		<div class="divtitle">
			<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">热门下载</span>
		</div>
		<div class="blockdiv">
			<ul class="texthidden">
				<li>
					<em class="num1"></em>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台">[平台公告] 祝贺诸城市工业设计服务平台</a>
				</li>
				<li>
					<em class="num2"></em>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
				<li>
					<em class="num3"></em>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
				<li>
					<em class="num4"></em>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
				<li>
					<span class="num5"></span>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
				<li>
					<span class="num6"></span>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
				<li>
					<span class="num7"></span>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
				<li>
					<span class="num8"></span>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
				<li>
					<span class="num9"></span>
					<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
				</li>
			</ul>
		</div>
	</div>
	<div class="slist_r">
		<div class="divtitle">
			<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">软件列表</span>
		</div>
		<div class="softtype">
			<span>产品类型：</span>
			<span style="background-color:#39F;color:#fff"><a href="#">全部</a></span>
			<span><a href="#">电子图版</a></span>
			<span><a href="#">实体设计</a></span>
			<span><a href="#">图文档</a></span>
		</div>
		<div class="searchsoft">
			<form>
				<span>产品搜索：</span>
				<input type="text" name="keyword" size="40" style="height:20px;margin-left:10px;"></input>
				<input type="submit" value="搜  索" id="submit" style="font-weight:bold"/><br>
				<span>搜索选项：</span>
				<span class="opspan"><input name="option" type="radio" value="titleandlabel" checked/>名称和标签 </span>
				<span class="opspan" style="margin-left:0px;"><input name="option" type="radio" value="title" />名称</span> 
				<span class="opspan"><input name="option" type="radio" value="label" />标签 </span> 
				<span class="opspan"><input name="option" type="radio" value="author" />作者</span>
			</form>
		</div>
		<div class="sortoption">
			<span>排序方式：</span>
			<span><a href="#">更新时间</a></span>
			<span><a href="#">下载次数</a></span>
			<span><a href="#">浏览次数</a></span>
		</div>
		<div class="listinfo">
			<div class="softinfo">
				<div class="softimage">
			    	<img src="./image/cad2d.png" height="60" width="60"></img>
			    </div>
			    <div class="softdetail">
	    			<span>名称：<a href="#">变形金刚大黄蜂</a></span><br/>
	    			<span>标签：变形金刚 实体设计</span><br/>
	    			<span><a href="#" title="">作者：aaaaaaa</a>&nbsp;&nbsp;</span>
	    			<span>时间：2013/10/15</span>
	    			<span>金币：0</span>
	    			<span>浏览:434</span>
	    			<span>下载:20</span>
	    		</div>
	    		<div class="softhandle">
	    			<span><a href="#"><img src="./image/sc.jpg" style="height:21px;width:57px;margin-top:10px;"></img></a></span>
	    			<span><a href="#"><img src="./image/download.jpg" style="height:21px;width:57px;margin-top:5px;"></img></a></span>
	    		</div>
			</div>
			<!--
			<input type="button" id="btnTest" value="刷新" />
			<table id="myDataTable" class="display" cellpadding="0" cellspacing="0" border="0">
			    <thead>
			        <tr>
			            <th style="width:100px;" class="sorting_disabled">缩略图</th>
			            <th style="width:100px;" class="sorting_disabled">详细信息</th>
			            <th style="width:60px;" class="sorting_disabled">操作</th>
			        </tr>
			    </thead>
			    <tbody>
			    	<tr class="softinfo">
			    	<td>
			    		<div class="softimage">
			    			<img src="./image/cad2d.png" height="60" width="60"></img>
			    		</div>
			    	</td>
			    	<td>
			    		<div class="softdetail">
		    			<span>名称：<a href="#">变形金刚大黄蜂</a></span><br/>
		    			<span>标签：变形金刚 实体设计</span><br/>
		    			<span><a href="#" title="">作者：aaaaaaa</a>&nbsp;&nbsp;</span>
		    			<span>时间：2013/10/15</span>
		    			<span>金币：0</span>
		    			<span>浏览:434</span>
		    			<span>下载:20</span>
		    			</div>
			    	</td>
			    	<td>
			    		<div class="softhandle">
			    			<span><a href="#"><img src="./image/sc.jpg" style="height:21px;width:57px;margin-top:10px;"></img></a></span>
			    			<span><a href="#"><img src="./image/download.jpg" style="height:21px;width:57px;margin-top:5px;"></img></a></span>
			    		</div>
			    	</td>
			    	</tr>
			    </tbody>
			</table>
			 -->
		</div>
	</div>
</div>
<script type="text/javascript">
	$(document).ready(function() {
	    $("#myDataTable").dataTable({
	//        "bPaginate": true, //开关，是否显示分页器
	//        "bInfo": true, //开关，是否显示表格的一些信息
	//        "bFilter": true, //开关，是否启用客户端过滤器
	//        "sDom": "<>lfrtip<>",
	//        "bAutoWith": false,
	//        "bDeferRender": false,
	//        "bJQueryUI": false, //开关，是否启用JQueryUI风格
	//        "bLengthChange": true, //开关，是否显示每页大小的下拉框
	//        "bProcessing": true,
	//        "bScrollInfinite": false,
	//        "sScrollY": "800px", //是否开启垂直滚动，以及指定滚动区域大小,可设值：'disabled','2000px'
	//        "bSort": true, //开关，是否启用各列具有按列排序的功能
	//        "bSortClasses": true,
	//        "bStateSave": false, //开关，是否打开客户端状态记录功能。这个数据是记录在cookies中的，打开了这个记录后，即使刷新一次页面，或重新打开浏览器，之前的状态都是保存下来的- ------当值为true时aoColumnDefs不能隐藏列
	//        "sScrollX": "50%", //是否开启水平滚动，以及指定滚动区域大小,可设值：'disabled','2000%'
	//        "aaSorting": [[0, "asc"]],
	//        "aoColumnDefs": [{ "bVisible": false, "aTargets": [0]}]//隐藏列
	//        "sDom": '<"H"if>t<"F"if>',
	        "bAutoWidth": false, //自适应宽度
	        "aaSorting": [[1, "asc"]],
	        "sPaginationType": "full_numbers",
	        "oLanguage": {
	            "sProcessing": "正在加载中...",
	            "sLengthMenu": "每页显示 _MENU_ 条记录",
	            "sZeroRecords": "对不起，查询不到相关数据！",
	            "sEmptyTable": "无数据存在！",
	            "sInfo": "当前显示 _START_ 到 _END_ 条，共 _TOTAL_ 条记录",
	            "sInfoFiltered": "共有 _MAX_ 条记录",
	            "sSearch": "搜索",
	            "oPaginate": {
	                "sFirst": "首页",
	                "sPrevious": "上一页",
	                "sNext": "下一页",
	                "sLast": "末页"
	            }
	        } //多语言配置
	
	    });
	});
    var tbl;
    $(function () {
        tbl = $('#myDataTable').dataTable({
            "bServerSide": true,
            "sAjaxSource": "",      //mvc后台ajax调用接口。
            'bPaginate': true,      //是否分页。
            "bProcessing": true,    //当datatable获取数据时候是否显示正在处理提示信息。
            'bFilter': false,       //是否使用内置的过滤功能。
            'bLengthChange': true,  //是否允许用户自定义每页显示条数。
            'sPaginationType': 'full_numbers',      //分页样式
            "aoColumns": [
                    { "sName": "ID",
                        "bSearchable": false,
                        "bSortable": false,
                        "fnRender": function (oObj) {
                            return '<a href=\"Details/' + oObj.aData[0] + '\">View</a>';
                        }                           //自定义列的样式
                    },
                    { "sName": "COMPANY_NAME" },
                    { "sName": "ADDRESS" },
                    { "sName": "TOWN" }
                ]
        });

        //Ajax重新load控件数据。（server端）
        $("#btnTest").click(function () {
            var oSettings = tbl.fnSettings();
            /*oSettings.sAjaxSource = "Home/AjaxHandler2";
            alert(oSettings.sAjaxSource);
            tbl.fnClearTable(0);
            tbl.fnDraw();*/
        });
    });
</script>