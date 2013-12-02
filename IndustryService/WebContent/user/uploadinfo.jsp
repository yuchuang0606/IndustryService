<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/upload.css" type="text/css" />
<div id="main" class="main">
	<%@ include file="/user/userleftmenu.jsp"%>
	<div id="content" class="content"> 
    	<div style="height:30px;width:717px;line-height:30px;text-align:center;background:#f5f5f5;">
       		<font style="font-weight:800;color: #265f9d;">上传资源</font>
       	</div>      
		<div style="padding:10px 20px;text-align:center">
   			<table class="uptb" width="100%" border="0" cellpadding="0" cellspacing="0" align="center" >
           		<tr>
           			<td height="25" align="left" width = "100px" valign = "top" style =" padding-top:8px;">
               		<font size = 2>类型：</font>
               		</td>
               		<td valign="middle" align="left" valign = "top">
               		<table id="ty" border="0">
						<tr>
							<td>
								<input id="ty0" type="radio" name="type" value="1" checked="checked" /><label for="ty0"><font size = 2>2D图库</font></label>
							</td>
							<td>
								<input id="ty1" type="radio" name="type" value="2" onclick="" /><label for="ty1"><font size = 2>2D图纸</font></label>
							</td>
							<td>
								<input id="ty2" type="radio" name="type" value="3" onclick="" /><label for="ty2"><font size = 2>3D图库</font></label>
							</td>
							<td>
								<input id="ty3" type="radio" name="type" value="4" onclick="" /><label for="ty3"><font size = 2>3D模型</font></label>
							</td>
							<td>
								<input id="ty4" type="radio" name="type" value="5" onclick="" /><label for="ty4"><font size = 2>文档</font></label>
							</td>
						</tr>
					</table>
                   	</td>
               	</tr>
                   <tr>
                   	<td height="25" align="left">
                       	<font size = 2>大类：</font>
                   	</td>
                   	<td valign="top" align="left">
                       	<table id="b_ty" border="0">
							<tr>
								<td>
									<input id="b_ty0" type="radio" name="b_ty" value="1" checked="checked" /><label for="b_ty0"><font size = 2>国家标准</font></label>
								</td>
								<td>
									<input id="b_ty1" type="radio" name="b_ty" value="2" onclick="" /><label for="b_ty1"><font size = 2>机械行业标准</font></label>
								</td>
								<td>
									<input id="b_ty2" type="radio" name="b_ty" value="19" onclick="" /><label for="b_ty2"><font size = 2>化工行业标准</font></label>
								</td>
								<td>
									<input id="b_ty3" type="radio" name="b_ty" value="20" onclick="" /><label for="b_ty3"><font size = 2>石化行业标准</font></label>
								</td>
								<td>
									<input id="b_ty4" type="radio" name="b_ty" value="3" onclick="" /><label for="b_ty4"><font size = 2>其它</font></label>
								</td>
							</tr>
							<tr>
								<td>
									<input id="b_ty5" type="radio" name="b_ty" value="56" onclick="" /><label for="b_ty5"><font size = 2>螺栓</font></label>
								</td>
								<td>
									<input id="b_ty6" type="radio" name="b_ty" value="57" onclick="" /><label for="b_ty6"><font size = 2>螺母</font></label>
								</td>
								<td>
									<input id="b_ty7" type="radio" name="b_ty" value="58" onclick="" /><label for="b_ty7"><font size = 2>螺钉</font></label>
								</td>
								<td>
									<input id="b_ty8" type="radio" name="b_ty" value="59" onclick="" /><label for="b_ty8"><font size = 2>法兰</font></label>
								</td>
								<td>
									<input id="b_ty9" type="radio" name="b_ty" value="60" onclick="" /><label for="b_ty9"><font size = 2>法兰盖</font></label>
								</td>								
							</tr>
						</table>
                   	</td>
               	</tr>
               	<tr>
                   	<td height="25" align="left">
                       	<font size = 2>小类：</font>
                   	</td>
                   	<td valign="top" align="left">
                       	<table id="s_ty" border="0">
							<tr>
								<td>
									<input id="s_ty0" type="radio" name="s_ty" value="28" checked="checked" /><label for="s_ty0"><font size = 2>未分</font></label>
								</td>
								<td>
									<input id="s_ty1" type="radio" name="s_ty" value="136" onclick="" /><label for="s_ty1"><font size = 2>联接与紧固</font></label>
								</td>
								<td>
									<input id="s_ty2" type="radio" name="s_ty" value="137" onclick="" /><label for="s_ty2"><font size = 2>轴承</font></label>
								</td>
								<td>
									<input id="s_ty3" type="radio" name="s_ty" value="138" onclick="" /><label for="s_ty3"><font size = 2>联轴器、离合器和制动器</font></label>
								</td>
							</tr>
							<tr>
								<td>
									<input id="s_ty4" type="radio" name="s_ty" value="139" onclick="" /><label for="s_ty4"><font size = 2>起重运输机械零部件</font></label>
								</td>
								<td>
									<input id="s_ty5" type="radio" name="s_ty" value="140" onclick="" /><label for="s_ty5"><font size = 2>操作件、小五金</font></label>
								</td>
								<td>
									<input id="s_ty6" type="radio" name="s_ty" value="141" onclick="" /><label for="s_ty6"><font size = 2>管道与管道附件</font></label>
								</td>
								<td>
									<input id="s_ty7" type="radio" name="s_ty" value="334" onclick="" /><label for="s_ty7"><font size = 2>常见工程材料及工艺</font></label>
								</td>
							</tr>
							<tr>
								<td>
									<input id="s_ty8" type="radio" name="s_ty" value="338" onclick="" /><label for="s_ty8"><font size = 2>润滑与密封</font></label>
								</td>
								<td>
									<input id="s_ty9" type="radio" name="s_ty" value="341" onclick="" /><label for="s_ty9"><font size = 2>弹簧</font></label>
								</td>
								<td>
									<input id="s_ty10" type="radio" name="s_ty" value="343" onclick="" /><label for="s_ty10"><font size = 2>螺旋传动、摩擦轮传动</font></label>
								</td>
								<td>
									<input id="s_ty11" type="radio" name="s_ty" value="344" onclick="" /><label for="s_ty11"><font size = 2>带、链传动</font></label>
								</td>
							</tr>
							<tr>
								<td>
									<input id="s_ty12" type="radio" name="s_ty" value="345" onclick="" /><label for="s_ty12"><font size = 2>齿轮与齿轮传动</font></label>
								</td>
								<td>
									<input id="s_ty13" type="radio" name="s_ty" value="346" onclick="" /><label for="s_ty13"><font size = 2>减速器和变速器</font></label>
								</td>
								<td>
									<input id="s_ty14" type="radio" name="s_ty" value="347" onclick="" /><label for="s_ty14"><font size = 2>常用电动机</font></label>
								</td>
								<td>
									<input id="s_ty15" type="radio" name="s_ty" value="348" onclick="" /><label for="s_ty15"><font size = 2>液压传动</font></label>
								</td>
							</tr>
							<tr>
								<td>
									<input id="s_ty16" type="radio" name="s_ty" value="349" onclick="" /><label for="s_ty16"><font size = 2>气压传动</font></label>
								</td>
								<td>
									<input id="s_ty17" type="radio" name="s_ty" value="350" onclick="" /><label for="s_ty17"><font size = 2>化工机械</font></label>
								</td>
								<td>
									<input id="s_ty18" type="radio" name="s_ty" value="351" onclick="" /><label for="s_ty18"><font size = 2>机床综合</font></label>
								</td>
								<td>
									<input id="s_ty19" type="radio" name="s_ty" value="352" onclick="" /><label for="s_ty19"><font size = 2>模具综合</font></label>
								</td>
							</tr>
							<tr>
								<td>
									<input id="s_ty20" type="radio" name="s_ty" value="353" onclick="" /><label for="s_ty20"><font size = 2>机构运动</font></label>
								</td>
								<td>
									<input id="s_ty21" type="radio" name="s_ty" value="354" onclick="" /><label for="s_ty21"><font size = 2>农业机械</font></label>
								</td>
								<td>
									<input id="s_ty22" type="radio" name="s_ty" value="355" onclick="" /><label for="s_ty22"><font size = 2>电气元件</font></label>
								</td>								
							</tr>
						</table>
                   	</td>
               	</tr>
                <tr id="ViewFlag">
					<td height="25" align="left">
                        <font size = 2>是否公开：</font>
                    </td>
					<td valign="top" align="left">
                        <table id="view" border="0">
							<tr>
								<td>
									<input id="view0" type="radio" name="view" value="0" checked="checked" /><label for="view0"><font size = 2>公开</font></label>
								</td>
								<td>
									<input id="view1" type="radio" name="view" value="1" /><label for="view1"><font size = 2>不公开（仅自己可见）</font></label>
								</td>
							</tr>
						</table>
                    </td>
				</tr>
                <tr>
                    <td height="25" align="left">
                        <font size = 2>文件大小：</font>
                    </td>
                    <td align="left">
                        <table id="size" border="0">
							<tr>
								<td>
									<input id="size0" type="radio" name="size" value="0" checked="checked" /><label for="size0"><font size = 2>小于等于10M</font></label>
								</td>
								<td>
									<input id="size1" type="radio" name="size" value="1" onclick="" /><label for="size1"><font size = 2>大于10M(如果大于10M的文件需要上传，请联系QQ:1346158517)</font></label>
								</td>
							</tr>
						</table>
                        
                    </td>
                </tr>
                <tr>
                    <td height="25" align="left">
                        <font size = 2>下载金币：</font>
                    </td>
                    <td valign="middle" align="left">
                        <input name="coin" type="text" id="coin" value="0" onblur="checkright();" style="width:150px;margin-left:5px;" />
                        <font size = 2>（每次下载将收取30%平台维护费）</font>
                    </td>
                </tr>
                <tr>
                    <td width="100" height="25" align="left">
                        <font size = 2>资源名称：</font>
                    </td>
                    <td width="630" align="left">
                        <input name="name" type="text" id="name" maxlength="150" style="width:370px;margin-left:5px;" />
                        <font size = 2>（150个字之内）</font>
                    </td>
                </tr>
                <tr>
                    <td height="25" align="left">
                        <font size = 2>标签：</font>
                    </td>
                    <td valign="middle" align="left">
                        <input name="tag" type="text" id="tag" maxlength="1024" style="width:370px;margin-left:5px;" />
                        <font size = 2>（如果是多个标签请用空格隔开）</font>
                    </td>
                </tr>
                <tr>
                    <td height="100" align="left">
                       <font size = 2> 资源说明 ：</font><br />
                        <font size = 2>(1024个字符)</font>
                    </td>
                    <td align="left">
                        <textarea name="tips" id="tips" rows="10" cols="85" style="margin-left:5px;"></textarea>
                    </td>
                </tr>
            </table>
            <table id="" border="0" cellpadding="0" cellspacing="0" align="left">
				<tr>
					<td align="left" width="80px" height="25px">
                       <font size = 2> 封面图片：</font>
                    </td>
					<td align="left" style="width:120px; height:25px; vertical-align:top;">
                        <input type="file" name="" id="" style="width:460px;" />
                    </td>
					<td rowspan="11" align="left" height="75px" valign="top" width="110px">
                        <table id="file" cellspacing="0" cellpadding="1" border="0" style="border-width:0px;border-collapse:collapse;">
							<tr>
								<td>
									<input id="file0" type="radio" name="file" value="1" checked="checked" /><label for="file0"><font size = 2>设为封面图</font></label>
								</td>
							</tr>
							<!-- 
							<tr>
								<td>
									<input id="file1" type="radio" name="file" value="2" /><label for="file1"><font size = 2>设为封面图</font></label>
								</td>
							</tr>
							<tr>
								<td>
									<input id="file2" type="radio" name="file" value="3" /><label for="file2"><font size = 2>设为封面图</font></label>
								</td>
							</tr> -->
						</table>&nbsp;
                    </td>
				</tr>
				<!-- 
				<tr>
					<td align="left" width="100px" height="25px">
                    	<font size = 2>预览图片2：</font>
                    </td>
					<td align="left" style="width:120px; height:25px; vertical-align:top;">
                        <input type="file" name="file4" id="file4" style="width:460px;" />
                    </td>
				</tr>
				<tr>
					<td align="left" width="100px" height="25px">
                        <font size = 2>预览图片3：</font>
                    </td>
					<td align="left" style="width:120px; height:25px; vertical-align:top;">
                        <input type="file" name="file5" id="file5" style="width:460px;" />
                    </td>
				</tr>
				<tr id="">
					<td width="100px" height="25" align="left">
                       <font size = 2> 选择文件</font><span id=""><font size = 2>(txt)</font></span>：
                    </td>
					<td align="left" colspan="1">
                    	<input type="file" name="" id="" onchange="" style="width:460px;" /><br />                    
                    </td>
				</tr>
				<tr id="">
					<td width="100px" height="25" align="left">
                        <font size = 2>选择文件</font><span id=""><font size = 2>(sbl)</font></span>：
                    </td>
					<td align="left">
                        <input type="file" name="" id="" style="width:460px;" />
                    </td>
				</tr> -->
				<tr>
					<td width="80px" height="25" align="left">
                        &nbsp;
                    </td>
					<td align="left">
                        <input type="submit" name="Submit" value="上传" onclick="" id="" />
                        <br />
                    </td>
				</tr>
			</table>
        </div>            
    </div>
</div>
<script type="text/javascript">
	document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
</script>   