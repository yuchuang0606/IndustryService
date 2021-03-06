<%@ page import="java.util.List,model.*,datacontrol.*,java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Integer id = Integer.parseInt(request.getParameter("id"));
	String type = request.getParameter("type");
	ResourceControl rc = new ResourceControl();
	Resource res = rc.getResourcebyId(id);
	User user = (User)request.getSession().getAttribute("user");
	if (res.getIspass() == 0) {
		if (user != null && user.getUserid() == res.getAuthorid()) {}	// 访问用户自己的资源
		else if (user != null && user.getUsergroup() == 1) {}			// 管理员用户无访问限制
		else {
			response.getWriter().write("<html><script> alert('不能访问未通过审核的资源');location.href='"+request.getContextPath()+"/resource?type=1&orderby=createtime&page=1&rp=10"+"';</script></html>");
			return ;
		}
	}
	
	if ( res.getIspublic() == 0) {
		if (user != null && user.getUserid() == res.getAuthorid()) {}	// 访问用户自己的资源
		else if (user != null && user.getUsergroup() == 1) {}			// 管理员用户无访问限制
		else {
			response.getWriter().write("<html><script> alert('不能访问不公开的资源');location.href='"+request.getContextPath()+"/resource?type=1&orderby=createtime&page=1&rp=10"+"';</script></html>");
			return ;
		}
	}
	String author = ((new UserControl()).getUser(res.getAuthorid())).getUsername();
	String createtime = new SimpleDateFormat("yyyy/MM/dd").format(res.getCreatetime());
	res.setViewtimes(res.getViewtimes()+1);
	rc.updateResource(res);
	int rp = 8;
	List<Resource> resList = rc.getByPropAndColumnes("typeid", type, "ispublic", "1", "ispass", "1", "downloadtimes", 0, rp);
	String restype = "";
	if ("1".equals(type))
		restype = "软件";
	else if ("4".equals(type))
		restype = "模型";
	else if ("3".equals(type))
		restype = "文档";
	else if ("2".equals(type))
		restype = "视频";
	/*SoftwareControl sc = new SoftwareControl();
	Software soft = (sc.listSoftware("softwareid", id)).get(0);
	String author = ((new UserControl()).getUser(soft.getAuthorid())).getUsername();
	String createtime = new SimpleDateFormat("yyyy/MM/dd").format(soft.getCreatetime());
	soft.setViewtimes(soft.getViewtimes()+1);
	sc.updateSoftware(soft);
	User user = (User)request.getSession().getAttribute("user");
	int rp = 8;
	List<Software> softList = sc.getListByColumn(0, rp, "downloadtimes");
	*/
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="<%=request.getContextPath() %>/image/small.gif" type="image/x-icon" />
<link rel="stylesheet" href="./css/slist.css" type="text/css" />
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/location.css" type="text/css" />
<title>大连工业设计服务平台</title>
</head>
<body>
	<%@ include file="/templates/header.jsp" %>
	<%@ include file="/templates/logo.jsp" %>
	<%@ include file="/templates/navigator.jsp" %>
	<div class="location">
		<div class="loccontent">
			<span style="font-size:14px;color:#3C3C3C">您当前位置：</span>
			<img src="<%=request.getContextPath() %>/image/house.png" width="15" height="15"></img>
			<span style="font-size:14px;color:#3C3C3C">
			<a href="<%=request.getContextPath() %>/index.jsp">首页</a> 》 <a href="<%=request.getContextPath() %>/resource?type=1&orderby=createtime&page=1&rp=10">资源列表</a> 》 <%=restype %>信息
			</span>
		</div>
	</div>
	<div style='width:960px;height:auto;min-height:500px;clear:both;text-align:left;margin: 5px auto;background:#fff;'>
	    <div style="width: 698px; float: left;"> 
	    	<div style="width:100%;height:36px;line-height:36px;text-align:center;background:#f5f5f5;">
	    		<span style="font-size:16px;font-weight:bold;"><%=res.getTitle() %></span>
	    	</div>               
	        <div style="width: 670px;float:left;padding:5px 10px;">
	            <table cellpadding="0" cellspacing="0" align="center">
	                <tr>
	                	<%if ("video".equals(type) && res.getOnlinelink() != null) { %>
	                    <td colspan="2" style="500px;padding:10px 10px;">
	                    	<script src='<%=res.getOnlinelink() %>' type="text/javascript"></script>
	                    </td>
	                    <% } else if ("video".equals(type) && res.getOnlinelink() ==  null) { %>
	                    <td colspan="2" style="padding:10px 10px;text-align:center;height:50px;line-height:50px;">该视频暂不提供观看<td>
	                    <%} else { %>
	                    <td colspan="2" style="50px"></td>
	                    <%} %>
	                </tr>
	                <tr>
	                    <td width="300px" height="260px" valign="middle">
	                        <div id="source" style="width:300px;height:240px;padding-left:20px;">
	                            <a href='<%=request.getContextPath() %><%=res.getRespic() %>' title="">
	                                <img src='<%=request.getContextPath() %><%=res.getRespic()%>' alt="" border="0" width="240px" height="240px"/>
	                            </a>
	                        </div>
	                    </td>
	                    <td width="360px" valign="top" align="left">
	                        <table>
	                        <!--<tr align="left">
	                                <td width="85" align="left" valign="top">
	                                	<font size = 2>资源名称：</font>
	                                </td>
	                                <td valign="top" title='<%=res.getTitle()%>'>
	                                  <span><%=res.getTitle()%></span>
	                                </td>
	                            </tr>  -->
	                            <tr align="left">
	                                <td width="80" align="left" valign="top">
	                                 	<font size = 2>资源类型：</font>
	                                </td>
	                                <td valign="top">
	                                    <span><font size = 2><%=restype %></font></span>
	                                </td>
	                            </tr>
	                            <tr align="left">
		                            <td width="60" align="left" valign="top">
		                               	<font size = 2>标签：</font>
		                            </td>
	                                <td title='<%=res.getTag()%>'>
	                                     <span><font size = 2><%=res.getTag()%></font></span>
	                                </td>
	                            </tr>
	                            <tr align="left">
	                                <td width="60" align="left" valign="top">
	                                    	<font size = 2>作者：</font>
	                                </td>
	                                <td valign="top">
	                                    <!-- <a id="btOpName" title='<%=author %>' href="#" target="_blank"> -->
	                          			<font size = 2><%=author %></font></a>
	                  				</td>
	                            </tr>
	                            <tr align="left">
	                                <td width="60" align="left" valign="top">
	                                    	<font size = 2>更新时间：</font>
	                                </td>
	                                <td valign="top">
	                                    <span id="rpZyDesc_ctl00_lbOpDate"><font size = 2><%=createtime %></font></span>
	                                </td>
	                            </tr>
	                            <tr align="left">
	                                <td width="60" align="left" valign="top">
	                                    	<font size = 2>文件大小：</font>
	                                </td>
	                                <td valign="top">
	                                    <span id="rpZyDesc_ctl00_lbZySize"><font size = 2><%=res.getSize() %></font></span>
	                                    <font size = 2>M</font>
	                                </td>
	                            </tr>
	                            <tr align="left">
	                                <td width="60" align="left" valign="top">
	                                    	<font size = 2>下载次数：</font>
	                                </td>
	                                <td valign="top">
	                                    <div style="float: left">
	                                        <span id="rpZyDesc_ctl00_lbDownNum"><font size = 2><%=res.getDownloadtimes() %></font></span>                                                          
	                                    </div>                                                                      
	                                </td>
	                            </tr>
	                            <tr align="left">
	                                <td width="60" align="left" valign="top">
	                                    	<font size = 2>浏览次数：</font>
	                                </td>
	                                <td valign="top">
	                                    <div style="float: left">
	                                        <span id="rpZyDesc_ctl00_lbViewNum"><font size = 2><%=res.getViewtimes() %></font></span>
	                                    </div>
	                                </td>
	                            </tr>
	                            <!--  
	                            <tr align="left">
	                                <td width="60" align="left" valign="top">
	                                   	 <font size = 2>下载金币：</font>
	                                </td>
	                                <td valign="top">
	                                    <span id="rpZyDesc_ctl00_lbSubMon1"><font size = 2>0</font></span>
	                                </td>
	                            </tr>
	                            -->
	                      	</table>
							<table width="350px">
	                           	<tr id="tr1">
									<td width="80" align="left" valign="top">
	                                       <font size = 2>文件名称：</font>
	                                   </td>
									<td valign="top" align="left">
	                                       <span id="lbFileName"><font size = 2><%=res.getFilename() %></font></span>
	                                   </td>
								</tr>
								<tr id="tr34">
									<td width="80" align="left" valign="baseline">
	                                       <font size = 2>文件下载：</font>
	                                   </td>
									<td valign="top" align="left">
	                                     <div style="float:left;width:255px;">
	                                         <div style="float: left; width: 255px;">
	                                         	<%if ("video".equals(type) && res.getLink() == null) {%>
	                                             <span style="color: #614db3; font-weight: bold;line-height: 20px;">
	                                             	<font size = 2>该视频暂不提供下载</font>
	                                             </span>
	                                             <%} else {%>
	                                             <a href="<%=request.getContextPath() %>/download?id=<%=res.getResourceid() %>" target="_blank">
	                                              <span style="color: #614db3; font-weight: bold;text-decoration: underline; line-height: 20px;">
	                                                  <font size = 2>高速下载</font>
	                                              </span>
	                                             </a>
	                                             <%} %>
	                                         </div>
	                                     </div>
	                                 </td>
								</tr>
							</table>
						</td>
					</tr>
					<tr>
						<td colspan="2" style="width:100%;height:auto;">
							<div style="margin-top:10px;height:30px;line-height:30px;">
		          					 <font size = 2; FACE = 标楷体; color = #424242>详细信息:</font>
		       				</div>
		   					<div style="line-height: 20px; padding: 0 20px 5px 20px">
		           				<span><font size = 2><%=res.getSdescribe() %></font> </span>
		   					</div>
	   					</td>
					</tr>
				</table>
			</div>
	    </div>
		<div class="slist_l"  style="border:1px solid #CCC;">
			<div class="divtitle">
				<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">热门<%=restype %></span>
			</div>
			<div class="blockdiv">
				<ul class="texthidden">
					<%int i=1;for (Resource r:resList) {%>
					<li>
						<span class="num<%=i%>"></span>
						<a href="resinfo.jsp?type=<%=type%>&id=<%=r.getResourceid()%>" title="<%=r.getTitle()%>" style="margin-left:0px;"><%=r.getTitle()%></a>
					</li>
					<%i++;} %>
				</ul>
			</div>
		</div>
	</div>
	<%@ include file="/templates/footer.jsp" %>
</body>
</html>