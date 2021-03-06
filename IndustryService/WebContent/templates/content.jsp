<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*,java.text.SimpleDateFormat" %>
<link rel="stylesheet" href="./css/content.css" type="text/css"/>
<link rel="stylesheet" href="./css/loginform.css" type="text/css" />
<script type="text/javascript" src="./js/SlideTrans.js"></script>
<script type="text/javascript" src="./js/util.js"></script>
<%
	User ucontent = (User)request.getSession().getAttribute("user");
	String tip = (String)request.getAttribute("tip");
	if (null==tip)
		tip = "";
	NewsControl nc = new NewsControl();
	NotificationControl nfc = new NotificationControl();
	ResourceControl rc = new ResourceControl();
	ConfigurationControl cclink = new ConfigurationControl();

	int rp = 6;
	List<News> newsList = nc.getByPropAndColumn("ispass", "1", "modifytime", 0, rp);
	List<Notification> noticeList = nfc.getByPropAndColumn("ispass", "1", "modifytime", 0, rp);
	List<Resource> softList = rc.getByPropAndColumnes("typeid", "1", "ispublic", "1", "ispass", "1", "downloadtimes", 0, rp);
	List<Resource> videoList = rc.getByPropAndColumnes("typeid", "2", "ispublic", "1", "ispass", "1", "downloadtimes", 0, rp);
	List<Configuration> linkList = cclink.listConfiguration("config_name", "link");
	List<Configuration> contactList = cclink.listConfiguration("config_name", "contact");
	List<Configuration> newspicList = cclink.listConfiguration("config_name", "newspic");
	List<Configuration> purchaseList = cclink.listConfiguration("config_name", "purchase");
	Configuration cf2d = cclink.listConfiguration("config_name", "2dCAD").get(0);
	Configuration cf3d = cclink.listConfiguration("config_name", "3dCAD").get(0);
	Configuration cf5d = cclink.listConfiguration("config_name", "5CAM").get(0);
%>
<script type="text/javascript">  
//判断浏览器是否支持 placeholder属性  
function isPlaceholder(){  
    var input = document.createElement('input');  
    return 'placeholder' in input;  
}  
  
if (!isPlaceholder()) {//不支持placeholder 用jquery来完成  
    $(document).ready(function() {  
        if(!isPlaceholder()){  
            $("input").not("input[type='password']").each(//把input绑定事件 排除password框  
                function(){  
                    if($(this).val()=="" && $(this).attr("placeholder")!=""){  
                        $(this).val($(this).attr("placeholder"));  
                        $(this).focus(function(){  
                            if($(this).val()==$(this).attr("placeholder")) $(this).val("");  
                        });  
                        $(this).blur(function(){  
                            if($(this).val()=="") $(this).val($(this).attr("placeholder"));  
                        });  
                    }  
            });  
            //对password框的特殊处理1.创建一个text框 2获取焦点和失去焦点的时候切换  
            var pwdField    = $("input[type=password]");  
            var pwdVal      = pwdField.attr('placeholder');  
            pwdField.after('<input id="pwdPlaceholder" type="text" value='+pwdVal+' autocomplete="off" />');  
            var pwdPlaceholder = $('#pwdPlaceholder');  
            pwdPlaceholder.show();  
            pwdField.hide();  
              
            pwdPlaceholder.focus(function(){  
                pwdPlaceholder.hide();  
                pwdField.show();  
                pwdField.focus();  
            });  
              
            pwdField.blur(function(){  
                if(pwdField.val() == '') {  
                    pwdPlaceholder.show();  
                    pwdField.hide();  
                }  
            });  
              
        }  
    });  
      
}  
</script>  
<div id="content" class="content">
	<div class="mainleft">
		<div class="memberlogin">
			<div class="divtitle">
				<span style="font-size:16px;color:#3c3c3c;font-weight:bold;margin:0px 10px;">会员登录</span>
			</div>
			<% if (null != ucontent) {%>
			<div style="width:280px;height:165px;padding:20px 20px;background:#">
				<div style="height:120px;width:120px;float:left;padding-top:30px;">
					<img src="<%=request.getContextPath() %><%=ucontent.getUserpic()%>" width="100" height="100"/>
				</div>
				<div style="height:120px;width:120px;float:left;padding-top:20px;">
					<table style="height:120px;width:150px;">
						<tr height="25">
							<td width="50">欢迎：</td>
							<td><%=ucontent.getUsername() %></td>
						</tr>
						<tr>
							<td width="50">单位：</td>
							<td><%=ucontent.getCompany() %></td>
						</tr>
						<tr>
							<td width="50">金币：</td>
							<td><%=ucontent.getCoin() %></td>
						</tr>
						<tr>
							<td colspan="2">
								<font style="color:#0099FF;"><a href="javascript:void(0);">[立即充值]</a></font><font size="1" color="gray">（暂未开通）</font>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<%} else { %>
			<div class="tips">
				<label id="msg_login" style="margin-left:100px;"><%=tip%></label>
			</div>
			<div class="loginform">
				<form action="./auth?" method="post" onsubmit="return checkLogin();">
				<div class="row">
					<label>用户名：</label>
					<input id="un" type="text" name="un" size="20" placeholder="请输入用户名" style="color:gray"  /><br>
				</div>
				<div class="row">
					<label>密&nbsp;&nbsp;码：</label>
					<input id="pwd" type="password" name="pwd" size="20" placeholder="请输入密码" style="color:gray" autocomplete="off"/>
				</div>
				<div class="row">
					<input type="submit" value="登  录" id="submit" style="font-weight:bold;margin-left:100px;border-width:0px;"/>
					<div class="reg"><a href="register.jsp" style="color:#fff;margin-left:0px;">&nbsp;&nbsp;&nbsp;&nbsp;注&nbsp;&nbsp;册&nbsp;&nbsp;&nbsp;&nbsp;</a></div>
				</div>
				</form>
			</div>
			<%} %>
		</div>
		<div class="notice">
			<div class="divtitle">
				<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">公告</span>
				<div class="more">
					<a href="./news?type=notice&page=1&rp=10">更多》</a>
				</div>
			</div>
			<div class="blockdiv">
				<ul class="texthidden">
				<% for (Notification notice:noticeList) {%>
					<li>
						<a href="./newsinfo.jsp?type=notice&newsid=<%=notice.getNewsid() %>" title="<%=notice.getTitle()%>"><%=notice.getTitle()%></a>
					</li>
				<%} %>
				</ul>
			</div>
		</div>
		<div class="onlineservice">
			<div class="divtitle">
				<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">在线服务</span>
			</div>
			<div class="blockdiv" style="height:200px;">
				<ul class="texthidden">
					<li style="list-style:none;">
						<a target="_blank" href="http://wpa.qq.com/msgrd?v=3&uin=<%=contactList.get(0).getDescription() %>&site=qq&menu=yes"><img border="0" src="http://wpa.qq.com/pa?p=2:<%=contactList.get(0).getDescription() %>:41" alt="点击这里给我发消息" title="点击这里给我发消息"/></a>
					</li>
					<li style="list-style:none;">
						<img src="./image/email.jpg"></img>
						<a href="mailto:liuwj@dlut.edu.cn">邮箱：<%=contactList.get(1).getDescription() %></a>
					</li>
					<li style="list-style:none;">
						<img src="./image/luntan.jpg"></img>
						<a href="<%=contactList.get(2).getDescription() %>">技术论坛</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="friendlink">
			<div class="divtitle">
				<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">友情链接</span>
			</div>
			<div class="blockdiv" style="height:200px;">
				<ul class="texthidden" >
					<% for (Configuration link:linkList) {%>
					<li style="list-style:none;">
						<a href="<%=link.getConfig_path() %>" title="<%=link.getConfig_path() %>" target=_blank;><%=link.getDescription() %></a>
					</li>
					<%}%>
				</ul>
			</div>
		</div>
	</div>
	<div id="mainright" class="mainright">
		<div class="news">
			<div class="container" id="idContainer">
				<table id="idSlider" border="0"  cellspacing="0">
				<tr>
				<% for(Configuration newspic:newspicList) {
					if (newspic.getDescription() != null && !"".equals(newspic.getDescription())) {
				%>
					<td><a href="<%=request.getContextPath()%><%=newspic.getConfig_path()%>" target="_blank"><img src="<%=request.getContextPath()%><%=newspic.getDescription()%>"/></a></td>
				<%} }%>
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
						<a href="./news?type=news&page=1&rp=10">更多》</a>
					</div>
				</div>
				<div class="blockdiv">
					<ul class="texthidden">
						<% for (News news:newsList) {%>
							<li>
								<a href="./newsinfo.jsp?type=news&newsid=<%=news.getNewsid() %>" title="<%=news.getTitle()%>"><%=news.getTitle()%></a>
							</li>
						<%} %>
					</ul>
				</div>
			</div>
		</div>
		<div class="CADService">
			<div class="divtitle">
				<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">套餐购买</span>
			</div>
			<div class="service">
				<div class="servicediv" style="border-right:1px solid #eee;">
					<div style="height:30px;width:100%;text-align:center;">
						<span style="font-size:15px;color:#3c3c3c;font-weight:bold;"><%=purchaseList.get(0).getDescription() %></span>
					</div>
					<div class="serviceimage">
						<div style="float:left">
						<img src="<%=request.getContextPath() %><%=cf2d.getConfig_path() %>" WIDTH="80" HEIGHT="80" ALT=""> 
						</div>
						<div style="float:left;padding:5px 10px;text-align:left;">
	                        <div style="height:30px;color: blue;font-size:14px;">
	                        	<span style="color:#cc0000;">&nbsp;<%=purchaseList.get(0).getProperty() %></span>元/年<br/>
	                        </div>
	                        <div style="height:30px;padding: 5px 0px 5px 0px;">
		                        <a href="<%=request.getContextPath() %><%=purchaseList.get(0).getConfig_path() %>" target="_blank">
		                        <img src="./image/djxz.jpg" style="border-width:0px;height:24px;width:83px;"/></a>
		                    </div>
                    	</div>
					</div>	
					<div class="imageintroduction">
						<a href="./config?configname=2dCAD" title="CAXA电子图板是具有完全自主知识产权、拥有30万正版用户、经过大规模应用验证、稳定高效性能优越的二维CAD软件。">CAXA电子图板是具有完全自主知识产权、拥有30万正版用户、经过大规模应用验证、稳定高效性能优越的二维CAD软件。</a>
					</div> 
				</div>
				<div class="servicediv" style="border-right:1px solid #eee;">
					<div style="height:30px;width:100%;text-align:center;">
						<span style="font-size:15px;color:#3c3c3c;font-weight:bold;"><%=purchaseList.get(1).getDescription() %></span>
					</div>
					<div class="serviceimage">
						<div style="float:left">
						<img src="<%=request.getContextPath() %><%=cf3d.getConfig_path() %>" WIDTH="80" HEIGHT="80" ALT=""> 
						</div>
						<div style="float:left;padding:5px 10px;text-align:left;">
	                        <div style="height:30px;color: blue;font-size:14px;">
	                        	<span style="color:#cc0000;">&nbsp;<%=purchaseList.get(1).getProperty() %></span>元/年<br/>
	                        </div>
	                        <div style="height:30px;padding: 5px 0px 5px 0px;">
		                        <a href="<%=request.getContextPath() %><%=purchaseList.get(1).getConfig_path() %>" target="_blank">
		                        <img src="./image/djxz.jpg" style="border-width:0px;height:24px;width:83px;"/></a>
		                    </div>
                    	</div>
					</div>	
					<div class="imageintroduction">
						<a href="./config?configname=3dCAD" title="CAXA实体设计是一套 既支持全参数化的工程建模方式，又具备独特的创新模式，并且无缝集成了专业二维工程图模块的 功能全面的CAD软件。">CAXA实体设计是一套 既支持全参数化的工程建模方式，又具备独特的创新模式，并且无缝集成了专业二维工程图模块的 功能全面的CAD软件。</a>
					</div>
				</div>
				<div class="servicediv">
					<div style="height:30px;width:100%;text-align:center;">
						<span style="font-size:15px;color:#3c3c3c;font-weight:bold;"><%=purchaseList.get(2).getDescription() %></span>
					</div>
					<div class="serviceimage">
						<div style="float:left">
						<img src="<%=request.getContextPath() %><%=cf5d.getConfig_path() %>" WIDTH="80" HEIGHT="80" ALT=""> 
						</div>
						<div style="float:left;padding:5px 10px;text-align:left;">
	                        <div style="height:30px;color: blue;font-size:14px;">
	                        	<span style="color:#cc0000;">&nbsp;<%=purchaseList.get(2).getProperty() %></span>元/年<br/>
	                        </div>
	                        <div style="height:30px;padding: 5px 0px 5px 0px;">
		                        <a href="<%=request.getContextPath() %><%=purchaseList.get(2).getConfig_path() %>" target="_blank">
		                        <img src="./image/djxz.jpg" style="border-width:0px;height:24px;width:83px;"/></a>
		                    </div>
                    	</div>
					</div>	
					<div class="imageintroduction">
						<a href="./config?configname=5CAM" title="CAXA制造工程师是具有卓越工艺性的2-5轴数控编程CAM软件，它能为数控加工提供从造型、设计到加工代码生成、加工仿真、代码校验以及实体仿真等全面数控加工解决方案，具有支持多CPU硬件平台、多任务轨迹计算及管理、多加工参数选择、多轴加工功能、多刀具类型支持、多轴实体仿真等六大先进综合性能。">CAXA制造工程师是具有卓越工艺性的2-5轴数控编程CAM软件，它能为数控加工提供从造型、设计到加工代码生成、加工仿真、代码校验以及实体仿真等全面数控加工解决方案，具有支持多CPU硬件平台、多任务轨迹计算及管理、多加工参数选择、多轴加工功能、多刀具类型支持、多轴实体仿真等六大先进综合性能。</a>
					</div> 
				</div>
			</div>
		</div>
		<div class="software">
			<div class="divtitle">
				<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">软件服务</span>
				<div class="more">
					<a href="resource?type=1&orderby=createtime&page=1&rp=10">更多》</a>
				</div>
			</div>
			<div class="softrows">
				<div class="softtop" style="border-bottom:1px solid #eee;">
					<div class="softlist" style="border-right:1px solid #eee">
						<div class="softimage">
							<img src="<%=request.getContextPath() %><%=softList.get(0).getRespic()%>" style="border-width:0px;"></img>
						</div>
						<div class="softinfo">
							<div class="softname">
							<label>名称：</label>
							<a href="./resinfo.jsp?type=<%=softList.get(0).getRestype() %>&id=<%=softList.get(0).getResourceid()%>" title="<%=softList.get(0).getTitle()%>"><%=softList.get(0).getTitle()%></a>
							</div>
							<label>时间：2013/11/13</label>
						</div>
					</div>
					<div class="softlist" style="border-right:1px solid #eee">
						<div class="softimage">
							<img src="<%=request.getContextPath() %><%=softList.get(1).getRespic()%>" style="border-width:0px;"></img>
						</div>
						<div class="softinfo">
							<div class="softname">
							<label>名称：</label>
							<a href="./resinfo.jsp?type=<%=softList.get(1).getRestype() %>&id=<%=softList.get(1).getResourceid()%>" title="<%=softList.get(1).getTitle()%>"><%=softList.get(1).getTitle()%></a>
							</div>
							<label>时间：2013/11/13</label>
						</div>
					</div>
					<div class="softlist">
						<div class="softimage">
							<img src="<%=request.getContextPath() %><%=softList.get(2).getRespic()%>" style="border-width:0px;"></img>
						</div>
						<div class="softinfo">
							<div class="softname">
							<label>名称：</label>
							<a href="./resinfo.jsp?type=<%=softList.get(2).getRestype() %>&id=<%=softList.get(2).getResourceid()%>" title="<%=softList.get(2).getTitle()%>"><%=softList.get(2).getTitle()%></a>
							</div>
							<label>时间：2013/11/13</label>
						</div>
					</div>
				</div>
				<div class="softbottom" style="border-bottom:1px solid #eee;">
					<div class="softlist" style="border-right:1px solid #eee">
						<div class="softimage">
							<img src="<%=request.getContextPath() %><%=softList.get(3).getRespic()%>" style="border-width:0px;"></img>
						</div>
						<div class="softinfo">
							<div class="softname">
							<label>名称：</label>
							<a href="./resinfo.jsp?type=<%=softList.get(3).getRestype() %>&id=<%=softList.get(3).getResourceid()%>" title="<%=softList.get(3).getTitle()%>"><%=softList.get(3).getTitle()%></a>
							</div>
							<label>时间：2013/11/13</label>
						</div>
					</div>
					<div class="softlist" style="border-right:1px solid #eee">
						<div class="softimage">
							<img src="<%=request.getContextPath() %><%=softList.get(4).getRespic()%>" style="border-width:0px;"></img>
						</div>
						<div class="softinfo">
							<div class="softname">
							<label>名称：</label>
							<a href="./resinfo.jsp?type=<%=softList.get(4).getRestype() %>&id=<%=softList.get(4).getResourceid()%>" title="<%=softList.get(4).getTitle()%>"><%=softList.get(4).getTitle()%></a>
							</div>
							<label>时间：2013/11/13</label>
						</div>
					</div>
					<div class="softlist">
						<div class="softimage">
							<img src="<%=request.getContextPath() %><%=softList.get(5).getRespic()%>" style="border-width:0px;"></img>
						</div>
						<div class="softinfo">
							<div class="softname">
							<label>名称：</label>
							<a href="./resinfo.jsp?type=<%=softList.get(5).getRestype() %>&id=<%=softList.get(5).getResourceid()%>" title="<%=softList.get(5).getTitle()%>"><%=softList.get(5).getTitle()%></a>
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
					<a href="resource?type=2&orderby=createtime&page=1&rp=10">更多》</a>
				</div>
			</div>
			<div class="service">
				<div class="servicediv" style="border-right:1px solid #eee;">
					<div class="videoimage">	
						<a href="./resinfo.jsp?type=<%=videoList.get(0).getRestype() %>&id=<%=videoList.get(0).getResourceid()%>" title="<%=videoList.get(0).getTitle()%>">
						<img src="<%=request.getContextPath() %><%=videoList.get(0).getRespic()%>" style="border-width:0px;"/> </a>
					</div>	
					<div class="videoinfo">
						<div class="videoname">
						<img src="./image/play.jpg" width="15" height="15" style="border-width:0px;"/>
						<a href="./resinfo.jsp?type=<%=videoList.get(0).getRestype() %>&id=<%=videoList.get(0).getResourceid()%>" title="<%=videoList.get(0).getTitle()%>"><%=videoList.get(0).getTitle()%></a>
						</div>
						<div><label>上传时间：2013/5/10</label></div>
					</div> 
					
				</div>
				<div class="servicediv" style="border-right:1px solid #eee;">
					<div class="videoimage">	
						<a href="./resinfo.jsp?type=<%=videoList.get(1).getRestype() %>&id=<%=videoList.get(1).getResourceid()%>" title="<%=videoList.get(1).getTitle()%>">
						<img src="<%=request.getContextPath() %><%=videoList.get(1).getRespic()%>" style="border-width:0px;"/> </a>
					</div>	
					<div class="videoinfo">
						<div class="videoname">
						<img src="./image/play.jpg" width="15" height="15" style="border-width:0px;"/>
						<a href="./resinfo.jsp?type=<%=videoList.get(1).getRestype() %>&id=<%=videoList.get(1).getResourceid()%>" title="<%=videoList.get(1).getTitle()%>"><%=videoList.get(1).getTitle()%></a>
						</div>
						<div><label>上传时间：2013/5/10</label></div>
					</div> 
				</div>
				<div class="servicediv">
					<div class="videoimage">	
						<a href="./resinfo.jsp?type=<%=videoList.get(2).getRestype() %>&id=<%=videoList.get(2).getResourceid()%>" title="<%=videoList.get(2).getTitle()%>">
						<img src="<%=request.getContextPath() %><%=videoList.get(2).getRespic()%>" style="border-width:0px;"/></a> 
					</div>	
					<div class="videoinfo">
						<div class="videoname">
						<img src="./image/play.jpg" width="15" height="15"/>
						<a href="./resinfo.jsp?type=<%=videoList.get(2).getRestype() %>&id=<%=videoList.get(2).getResourceid()%>" title="<%=videoList.get(2).getTitle()%>"><%=videoList.get(2).getTitle()%></a>
						</div>
						<div><label>上传时间：2013/5/10</label></div>
					</div> 
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">
	document.getElementById("content").style.height=document.getElementById("mainright").offsetHeight+"px";
</script>