<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/logo.css" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath() %>/js/util.js"></script>

<div class="logo">
	<div class="logocontent">
		<div class="logoimg">
		<img src="<%=request.getContextPath() %>/image/logo_6.png" />
		</div>
		<div class="top-search">
			
                <form style="height:36px;"name="SearchEcho" onsubmit="SearchSubmit();return false;">
                    <div class="sim-select">
                    	<label id="opt1">云搜索</label>
	                    <!--  <label id="opt1" onclick="displayOpt()">软件</label>-->
                    </div>
					<div class="inp-txt-wrap">
                  		<input type="text" maxlength="40" value="请输入关键字" id="searchkey" class="inp-txt" onfocus="if(this.value=='请输入关键字'){this.value='';this.className='inp-txt inp-txt-active'}" onblur="if(this.value==''){this.value='请输入关键字';this.className='inp-txt'}" autocomplete="off">
					</div>
                  	<input type="button" name="SearchSubButton" onclick="SearchSubmit()" class="submit-second-btn" value="">
                </form>
                <!--  
                <div id="simtype1" class="simtype">
                	<label onclick="hiddenOpt(this.innerHTML)">软件</label>
                </div>
                <div id="simtype2" class="simtype">
                	<label onclick="hiddenOpt(this.innerHTML)">视频</label>
                </div>
                -->
                <!--  
                <div id="simtype3" class="simtype">
                	<label onclick="hiddenOpt(this.innerHTML)">文档</label>
                </div>-->
        </div>
	</div>
</div>