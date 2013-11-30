<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List,model.*,datacontrol.*,java.text.SimpleDateFormat" %>
<%
	String id = request.getParameter("id");
	VideoControl vc = new VideoControl();
	Video video = (vc.listVideo("videoid", id)).get(0);
	String author = ((new UserControl()).getUser(video.getAuthorid())).getUsername();
	String createtime = new SimpleDateFormat("yyyy/MM/dd").format(video.getCreatetime());
	video.setViewtimes(video.getViewtimes()+1);
	vc.updateVideo(video);
	
	int rp = 8;
	List<Video> videoList = vc.getListByColumn(0, rp, "viewtimes");
%>
<link rel="stylesheet" href="./css/slist.css" type="text/css" />
<div style='width:960px;height:auto;min-height:500px;clear:both;text-align:left;margin: 5px auto;background:#fff;'>
    <div style="width: 698px; float: left;"> 
    	<div style="width:100%;height:36px;line-height:36px;text-align:center;background:#f5f5f5;">
    		<span style="font-size:16px;font-weight:bold;"><%=video.getTitle() %></span>
    	</div>               
        <div style="width: 670px;float:left;padding:5px 10px;">
            <table cellpadding="0" cellspacing="0" align="center">
            	<%if(video.getVideotype()==1 || video.getVideotype()==2) {%>
                <tr align="center">
                    <td colspan="2" height="500px">
                    	<script src='http://union.bokecc.com/player?vid=8352E53A661FD5DC9C33DC5901307461&siteid=470E510AC82C1D91&autoStart=true&width=640&height=481&playerid=3B585756AB7400D2&playertype=2' type="text/javascript"></script>
                    </td>
                </tr>
                <%} %>
                <tr style="margin-top:20px;">
                    <td width="300px" height="260px" valign="middle">
                        <div id="source" style="width:300px;height:240px;padding-left:20px;">
                            <a href='#%>' title="">
                                <img src='<%=video.getVideopic() %>' alt="" border="0" width="240px" height="240px"/>
                            </a>
                        </div>
                    </td>
                    <td width="360px" valign="top" align="left">
                        <table>
                        <!--<tr align="left">
                                <td width="85" align="left" valign="top">
                                	<font size = 2>资源名称：</font>
                                </td>
                                <td valign="top" title=''>
                                  <span></span>
                                </td>
                            </tr>  -->
                            <tr align="left">
                                <td width="80" align="left" valign="top">
                                 	<font size = 2>资源类型：</font>
                                </td>
                                <td valign="top">
                                    <span><font size = 2>视频</font></span>
                                </td>
                            </tr>
                            <tr align="left">
                                <td width="60" align="left" valign="top">
                                   	 <font size = 2>类别：</font>
                                </td>
                                <td valign="top">
                                    <span><font size = 2>无</font></span>
                                </td>
                            </tr>
                            <tr align="left">
	                            <td width="60" align="left" valign="top">
	                               	<font size = 2>标签：</font>
	                            </td>
                                <td title='<%=video.getTag()%>'>
                                     <span><font size = 2><%=video.getTag()%></font></span>
                                </td>
                            </tr>
                            <tr align="left">
                                <td width="60" align="left" valign="top">
                                    	<font size = 2>作者：</font>
                                </td>
                                <td valign="top">
                                    <a id="btOpName" title='<%=author %>' href="#" target="_blank">
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
                                    <span id="rpZyDesc_ctl00_lbZySize"><font size = 2><%=video.getVideosize() %></font></span>
                                    <font size = 2>M</font>
                                </td>
                            </tr>
                            <tr align="left">
                                <td width="60" align="left" valign="top">
                                    	<font size = 2>下载次数：</font>
                                </td>
                                <td valign="top">
                                    <div style="float: left">
                                        <span id="rpZyDesc_ctl00_lbDownNum"><font size = 2><%=video.getDownloadtimes() %></font></span>                                                          
                                    </div>                                                                      
                                </td>
                            </tr>
                            <tr align="left">
                                <td width="60" align="left" valign="top">
                                    	<font size = 2>浏览次数：</font>
                                </td>
                                <td valign="top">
                                    <div style="float: left">
                                        <span><font size = 2><%=video.getViewtimes()%></font></span>
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
                                    <span id="lbFileName"><font size = 2>
                                    <%if (video.getVideotype()==1 || video.getVideotype()==3) {%>
                                    <%=video.getFilename() %>
                                    <%} else {%>无
                                    <%} %>
                                    </font></span>
                                </td>
							</tr>
							<tr id="tr34">
								<td width="80" align="left" valign="baseline">
                                       <font size = 2>文件下载：</font>
                                   </td>
								<td valign="top" align="left">
                                     <div style="float:left;width:255px;">
                                         <div style="float: left; width: 255px;">
                                         	 <%if (video.getVideotype()==1 || video.getVideotype()==3) {%>
                                             <a href="<%=video.getLink2()%>" onclick="highDownClick();">
                                              <span style="color: #614db3; font-weight: bold;text-decoration: underline; line-height: 20px;">
                                                  <font size = 2>高速下载</font>
                                              </span>
                                             </a>
                                             <%} else {%>
                                             	<span style="color: #614db3; font-weight: bold;line-height: 20px;">
                                             	<font size = 2>该视频暂不提供下载</font>
                                             	</span>
                                             <%}%>
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
	           				<span><font size = 2><%=video.getSdescribe() %></font> </span>
	   					</div>
   					</td>
				</tr>
			</table>
		</div>
    </div>
	<div class="slist_l"  style="border:1px solid #CCC;">
		<div class="divtitle">
			<span style="font-size:16px;color:#3C3C3C;font-weight:bold;margin:0px 10px;">热门下载</span>
		</div>
		<div class="blockdiv">
			<ul class="texthidden">
				<%for (Video v:videoList) {%>
				<li>
					<em class="num1"></em>
					<a href="video.jsp?id=<%=v.getVideoid() %>" title="<%=v.getTitle()%>"><%=v.getTitle()%></a>
				</li>
				<%} %>
			</ul>
		</div>
	</div>
</div>