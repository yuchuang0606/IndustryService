<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*,java.text.SimpleDateFormat" %>
<%
	
%>
<link rel="stylesheet" href="./css/slist.css" type="text/css" />
<div id="main" class="main">
	<%@ include file="/templates/leftmenu.jsp"%>
	<div id="content" class="content">
		<div class="divtitle">
			<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">软件列表</span>
		</div>
		<div style="padding:0 5px;">
		<div class="softtype">
			<span>产品类型：</span>
			<span style="background-color:#39F;color:#fff"><a href="#">全部</a></span>
			<span><a href="#">电子图版</a></span>
			<span><a href="#">实体设计</a></span>
			<span><a href="#">图文档</a></span>
		</div>
		<!--  
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
		-->
		<div class="sortoption">
			<span>排序方式：</span>
			<span><a href="#">更新时间</a></span>
			<span><a href="#">下载次数</a></span>
			<span><a href="#">浏览次数</a></span>
			<span style="float:right;height:36px;line-height:36px;margin:0px 10px;">
				<span>每页显示条数：</span>
				<select name="selection" style="height:20px">
					<option value ="op_10">10</option>
					<option value ="op_30">30</option>
					<option value ="op_50">50</option>
				</select>
			</span>
		</div>
		<div class="listinfo">
			<div class="softinfo">
				<div class="softimage">
			    	<a href=""><img src="./image/cad2d.png" height="60" width="60"></img></a>
			    </div>
			    <div class="softdetail">
	    			<span>名称：<a href="#">变形金刚大黄蜂</a></span><br/>
	    			<span>标签：变形金刚 实体设计</span><br/>
	    			<span>作者：<a href="#" title="">aaaaaaa</a>&nbsp;&nbsp;</span>
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
			<div class="softinfo">
				<div class="softimage">
			    	<a href=""><img src="./image/cad2d.png" height="60" width="60"></img></a>
			    </div>
			    <div class="softdetail">
	    			<span>名称：<a href="#">变形金刚大黄蜂</a></span><br/>
	    			<span>标签：变形金刚 实体设计</span><br/>
	    			<span>作者：<a href="#" title="">aaaaaaa</a>&nbsp;&nbsp;</span>
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
			<div class="softinfo">
				<div class="softimage">
			    	<a href=""><img src="./image/cad2d.png" height="60" width="60"></img></a>
			    </div>
			    <div class="softdetail">
	    			<span>名称：<a href="#">变形金刚大黄蜂</a></span><br/>
	    			<span>标签：变形金刚 实体设计</span><br/>
	    			<span>作者：<a href="#" title="">aaaaaaa</a>&nbsp;&nbsp;</span>
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
			<div class="softinfo">
				<div class="softimage">
			    	<a href=""><img src="./image/cad2d.png" height="60" width="60"></img></a>
			    </div>
			    <div class="softdetail">
	    			<span>名称：<a href="#">变形金刚大黄蜂</a></span><br/>
	    			<span>标签：变形金刚 实体设计</span><br/>
	    			<span>作者：<a href="#" title="">aaaaaaa</a>&nbsp;&nbsp;</span>
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
			<div class="softinfo">
				<div class="softimage">
			    	<a href=""><img src="./image/cad2d.png" height="60" width="60"></img></a>
			    </div>
			    <div class="softdetail">
	    			<span>名称：<a href="#">变形金刚大黄蜂</a></span><br/>
	    			<span>标签：变形金刚 实体设计</span><br/>
	    			<span>作者：<a href="#" title="">aaaaaaa</a>&nbsp;&nbsp;</span>
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
			<div class="softinfo">
				<div class="softimage">
			    	<a href=""><img src="./image/cad2d.png" height="60" width="60"></img></a>
			    </div>
			    <div class="softdetail">
	    			<span>名称：<a href="#">变形金刚大黄蜂</a></span><br/>
	    			<span>标签：变形金刚 实体设计</span><br/>
	    			<span>作者：<a href="#" title="">aaaaaaa</a>&nbsp;&nbsp;</span>
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
			<div class="softinfo">
				<div class="softimage">
			    	<a href=""><img src="./image/cad2d.png" height="60" width="60"></img></a>
			    </div>
			    <div class="softdetail">
	    			<span>名称：<a href="#">变形金刚大黄蜂</a></span><br/>
	    			<span>标签：变形金刚 实体设计</span><br/>
	    			<span>作者：<a href="#" title="">aaaaaaa</a>&nbsp;&nbsp;</span>
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
			<div class="softinfo">
				<div class="softimage">
			    	<a href=""><img src="./image/cad2d.png" height="60" width="60"></img></a>
			    </div>
			    <div class="softdetail">
	    			<span>名称：<a href="#">变形金刚大黄蜂</a></span><br/>
	    			<span>标签：变形金刚 实体设计</span><br/>
	    			<span>作者：<a href="#" title="">aaaaaaa</a>&nbsp;&nbsp;</span>
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
		<div class="paging">
			<span>第1页/共1页</span>
			<span><a href="#">[首页]</a></span>
			<span><a href="#">[上一页]</a></span>
			<span><a href="#">[下一页]</a></span>
			<span><a href="#">[尾页]</a></span>
		</div>
	</div>
	<script type="text/javascript">
		document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
	</script>
	</div>
	<!--
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
	 -->
</div>