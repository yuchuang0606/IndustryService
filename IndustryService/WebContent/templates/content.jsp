<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="./css/content.css" type="text/css"/>
<link rel="stylesheet" href="./css/loginform.css" type="text/css" />
<script type="text/javascript" src="./js/SlideTrans.js"></script>
<div class="content">
	<div class="mainleft">
		<div class="memberlogin">
			<div class="divtitle">
				<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">用户登录</span>
			</div>
			<div class="loginform">
				<form action="/people/login?" method="post">
				<div class="row">
					<label>用户名：</label>
					<input type="text" name="username" size="20" value="请输入用户名" style="color:gray" onfocus="if(this.value==defaultValue){this.value='';this.style.color='black'}" onblur="if(!value){this.value=defaultValue;this.style.color='gray'}"/><br>
				</div>
				<div class="row">
					<label>密&nbsp;&nbsp;码：</label>
					<input type="text" name="pwd" size="20" value="请输入密码" style="color:gray" onfocus="if(this.value==defaultValue){this.value='';this.type='password';this.style.color='black'}" onblur="if(!value){this.value=defaultValue;this.type='text',this.style.color='gray'}"/>
				</div>
				<div class="row">
					<input type="submit" value="登  录" id="submit" style="font-weight:bold"/>
					<a href="/people/forgetpwd" >忘记密码？</a>
				</div>
				</form>
			</div>
		</div>
		<div class="notice">
			<div class="divtitle">
				<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">公告</span>
				<div class="more">
					<a href="newslist.jsp">更多》</a>
				</div>
			</div>
			<div class="blockdiv">
				<ul class="texthidden">
					<li>
						<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台</a>
					</li>
					<li>
						<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
					</li>
					<li>
						<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
					</li>
					<li>
						<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
					</li>
					<li>
						<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
					</li>
					<li>
						<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="onlineservice">
			<div class="divtitle">
				<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">在线服务</span>
			</div>
			<div class="blockdiv">
				<ul class="texthidden">
					<li style="list-style:none;">
						<img src="./image/qq.png"></img>
						<a href=" http://sighttp.qq.com/cgi-bin/check?sigkey=a23326c5fb5b724a2832556846f2b1dc38af642c58526f2cbad099edb08d3223" target=_blank; onclick="var tempSrc='oldscript=document.getElementById('testJs');var newscript=document.createElement('script');newscript.setAttribute('type','text/javascript'); newscript.setAttribute('id', 'testJs');newscript.setAttribute('src',tempSrc);if(oldscript == null){document.body.appendChild(newscript);}else{oldscript.parentNode.replaceChild(newscript, oldscript);}return false;">QQ:85561093</a>
					</li>
					<li style="list-style:none;">
						<img src="./image/email.jpg"></img>
						<a href="mailto:liuwj@dlut.edu.cn">邮箱：liuwj@dlut.edu.cn</a>
					</li>
					<li style="list-style:none;">
						<img src="./image/luntan.jpg"></img>
						<a href="http://top.caxa.com">技术论坛</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="mainright">
		<div class="news">
			<div class="container" id="idContainer">
				<table id="idSlider" border="0"  cellspacing="0">
				<tr>
					<td><a href="#"><img src="./image/news_1.jpg"/></a></td>
					<td><a href="#"><img src="./image/news_2.jpg"/></a></td>
					<td><a href="#"><img src="./image/news_3.jpg"/></a></td>
				</tr>
				</table>
			</div>
			<script type="text/javascript">
			new SlideTrans("idContainer", "idSlider", 3, { Vertical: false }).Run();
			</script>
			<div class="newslist">
				<div class="divtitle">
					<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">新闻</span>
					<div class="more">
						<a href="newslist.jsp">更多》</a>
					</div>
				</div>
				<div class="blockdiv">
					<ul class="texthidden">
						<li>
							<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台">[平台公告] 祝贺诸城市工业设计服务平台</a>
						</li>
						<li>
							<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
						</li>
						<li>
							<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
						</li>
						<li>
							<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
						</li>
						<li>
							<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
						</li>
						<li>
							<a href="#" title="[平台公告] 祝贺诸城市工业设计服务平台上线">[平台公告] 祝贺诸城市工业设计服务平台上线</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="CADService">
			<div class="divtitle">
				<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">CAD介绍</span>
			</div>
			<div class="service">
				<div class="servicediv" style="border-right:1px solid #eee;">
					<div class="serviceimage">	
						<img src="./image/cad2d.png" WIDTH="80" HEIGHT="80" ALT=""> 
					</div>	
					<div class="imageintroduction">
						<a href="./IntroduceHandler?configname=2dCAD" title="CAXA电子图板是具有完全自主知识产权、拥有30万正版用户、经过大规模应用验证、稳定高效性能优越的二维CAD软件。">CAXA电子图板是具有完全自主知识产权、拥有30万正版用户、经过大规模应用验证、稳定高效性能优越的二维CAD软件。</a>
					</div> 
				</div>
				<div class="servicediv" style="border-right:1px solid #eee;">
					<div class="serviceimage">	
						<img src="./image/cad3d.png" WIDTH="80" HEIGHT="80" ALT=""> 
					</div>	
					<div class="imageintroduction">
						<a href="./IntroduceHandler?configname=3dCAD" title="CAXA实体设计是一套 既支持全参数化的工程建模方式，又具备独特的创新模式，并且无缝集成了专业二维工程图模块的 功能全面的CAD软件。">CAXA实体设计是一套 既支持全参数化的工程建模方式，又具备独特的创新模式，并且无缝集成了专业二维工程图模块的 功能全面的CAD软件。</a>
					</div>
				</div>
				<div class="servicediv">
					<div class="serviceimage">	
						<img src="./image/cam5.jpg" WIDTH="80" HEIGHT="80" ALT=""> 
					</div>	
					<div class="imageintroduction">
						<a href="./IntroduceHandler?configname=5CAM" title="CAXA制造工程师是具有卓越工艺性的2-5轴数控编程CAM软件，它能为数控加工提供从造型、设计到加工代码生成、加工仿真、代码校验以及实体仿真等全面数控加工解决方案，具有支持多CPU硬件平台、多任务轨迹计算及管理、多加工参数选择、多轴加工功能、多刀具类型支持、多轴实体仿真等六大先进综合性能。">CAXA制造工程师是具有卓越工艺性的2-5轴数控编程CAM软件，它能为数控加工提供从造型、设计到加工代码生成、加工仿真、代码校验以及实体仿真等全面数控加工解决方案，具有支持多CPU硬件平台、多任务轨迹计算及管理、多加工参数选择、多轴加工功能、多刀具类型支持、多轴实体仿真等六大先进综合性能。</a>
					</div> 
				</div>
			</div>
		</div>
		<div class="software">
			<div class="divtitle">
				<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">软件下载</span>
				<div class="more">
					<a href="softlist.jsp">更多》</a>
				</div>
			</div>
			<div class="softrows">
				<div class="softtop" style="border-bottom:1px solid #eee;">
					<div class="softlist" style="border-right:1px solid #eee">
						<div class="softimage">
							<img src="./image/soft1.jpg"></img>
						</div>
						<div class="softinfo">
							<div class="softname">
							<label>名称：</label>
							<a href="#" title="CAXA电子图板2013r2（2013-11-01发布 支持网盘/高速下载）[CAXA审核]">CAXA电子图板2013r2（2013-11-01发布 支持网盘/高速下载）[CAXA审核]</a>
							</div>
							<label>时间：2013/11/13</label>
						</div>
					</div>
					<div class="softlist" style="border-right:1px solid #eee">
						<div class="softimage">
							<img src="./image/soft2.jpg"></img>
						</div>
						<div class="softinfo">
							<div class="softname">
							<label>名称：</label>
							<a href="#" title="CAXA电子图板2013r2（2013-11-01发布 支持网盘/高速下载）[CAXA审核]">CAXA电子图板2013r2（2013-11-01发布 支持网盘/高速下载）[CAXA审核]</a>
							</div>
							<label>时间：2013/11/13</label>
						</div>
					</div>
					<div class="softlist">
						<div class="softimage">
							<img src="./image/soft3.jpg"></img>
						</div>
						<div class="softinfo">
							<div class="softname">
							<label>名称：</label>
							<a href="#" title="CAXA电子图板2013r2（2013-11-01发布 支持网盘/高速下载）[CAXA审核]">CAXA电子图板2013r2（2013-11-01发布 支持网盘/高速下载）[CAXA审核]</a>
							</div>
							<label>时间：2013/11/13</label>
						</div>
					</div>
				</div>
				<div class="softbottom" style="border-bottom:1px solid #eee;">
					<div class="softlist" style="border-right:1px solid #eee">
						<div class="softimage">
							<img src="./image/soft4.jpg"></img>
						</div>
						<div class="softinfo">
							<div class="softname">
							<label>名称：</label>
							<a href="#" title="CAXA电子图板2013r2（2013-11-01发布 支持网盘/高速下载）[CAXA审核]">CAXA电子图板2013r2（2013-11-01发布 支持网盘/高速下载）[CAXA审核]</a>
							</div>
							<label>时间：2013/11/13</label>
						</div>
					</div>
					<div class="softlist" style="border-right:1px solid #eee">
						<div class="softimage">
							<img src="./image/soft5.png"></img>
						</div>
						<div class="softinfo">
							<div class="softname">
							<label>名称：</label>
							<a href="#" title="CAXA电子图板2013r2（2013-11-01发布 支持网盘/高速下载）[CAXA审核]">CAXA电子图板2013r2（2013-11-01发布 支持网盘/高速下载）[CAXA审核]</a>
							</div>
							<label>时间：2013/11/13</label>
						</div>
					</div>
					<div class="softlist">
						<div class="softimage">
							<img src="./image/soft6.jpg"></img>
						</div>
						<div class="softinfo">
							<div class="softname">
							<label>名称：</label>
							<a href="#" title="CAXA数控仿真2013r1（推荐网盘下载）">CAXA数控仿真2013r1（推荐网盘下载）</a>
							</div>
							<label>时间：2013/11/13</label>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="video">
			<div class="divtitle">
				<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">视频教程</span>
				<div class="more">
					<a href="#">更多》</a>
				</div>
			</div>
			<div class="service">
				<div class="servicediv" style="border-right:1px solid #eee;">
					<div class="videoimage">	
						<img src="./image/video1.jpg"> 
					</div>	
					<div class="videoinfo">
						<div class="videoname">
						<img src="./image/play.jpg" width="15" height="15"/>
						<a href="#" title="变形金刚大黄蜂">变形金刚大黄蜂</a>
						</div>
						<div><label>上传时间：2013/5/10</label></div>
					</div> 
					
				</div>
				<div class="servicediv" style="border-right:1px solid #eee;">
					<div class="videoimage">	
						<img src="./image/video2.jpg"> 
					</div>	
					<div class="videoinfo">
						<div class="videoname">
						<img src="./image/play.jpg" width="15" height="15"/>
						<a href="#" title="工艺图表2013系列教程第四课：工艺汇总表基本功能(仅支持在线播放)">工艺图表2013系列教程第四课：工艺汇总表基本功能(仅支持在线播放)</a>
						</div>
						<div><label>上传时间：2013/5/10</label></div>
					</div> 
				</div>
				<div class="servicediv">
					<div class="videoimage">	
						<img src="./image/video3.jpg"> 
					</div>	
					<div class="videoinfo">
						<div class="videoname">
						<img src="./image/play.jpg" width="15" height="15"/>
						<a href="#" title="电子图板2013系列培训第二讲 基本绘图及编辑">电子图板2013系列培训第二讲 基本绘图及编辑</a>
						</div>
						<div><label>上传时间：2013/5/10</label></div>
					</div> 
				</div>
			</div>
		</div>
	</div>
</div>