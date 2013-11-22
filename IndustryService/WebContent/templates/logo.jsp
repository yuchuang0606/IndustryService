<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./css/logo.css" type="text/css" />
<div class="logo">
	<div class="logocontent">
		<div class="logoimg">
		<img src="./image/logo_6.png" />
		</div>
		<div class="top-search">
                <form name="SearchEcho" onsubmit="return SearchSubmit()">
                    <div class="sim-select">
	                    <select style="display:none;" name="SerchType" id="slt_01" autocomplete="off">
	                        <option value="微博" selected="selected">微博</option>
	                        <option value="新闻">新闻</option>
	                        <option value="图片">图片</option>
	                        <option value="博客">博客</option>
	                        <option value="视频">视频</option>
	                        <option value="知识人">知识人</option>
	                    </select>
	                    <h3>软件</h3>
	                    <div class="sim-ul-flt" style="display: block; top: 33px; width: 72px; visibility: hidden;">
	                    	<ul>
	                    		<li class=" ">微博</li>
	                    		<li class=" ">新闻</li>
	                    		<li class=" ">图片</li>
	                    		<li class=" ">博客</li>
	                    		<li class=" ">视频</li>
	                    		<li class=" ">知识人</li>
	                    		<li class=" "><a href="http://search.sina.com.cn/?c=more" target="_blank">更多&gt;&gt;</a></li></ul>
	                    </div>
                    </div>
					<div class="inp-txt-wrap">
                  		<input type="text" maxlength="40" value="请输入关键字" name="SerchKey" class="inp-txt" onfocus="if(this.value=='请输入关键字'){this.value='';this.className='inp-txt inp-txt-active'}" onblur="if(this.value==''){this.value='请输入关键字';this.className='inp-txt'}" autocomplete="off">
					</div>
                  	<input type="submit" name="SearchSubButton" class="submit-second-btn" value="" onmouseover="this.className='submit-second-btn submit-second-btn-hover'" onmouseout="this.className='submit-second-btn'" suda-uatrack="key=index_new_search&amp;value=search_click">
                </form>
            </div>
	</div>
</div>