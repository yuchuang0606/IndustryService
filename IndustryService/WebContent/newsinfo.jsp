<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="./image/c.png" type="image/x-icon" />
<link rel="stylesheet" href="./css/introduce.css" type="text/css" />
<title>大连工业设计服务平台</title>
</head>
<%
	String title = (String)request.getAttribute("title");
	String content = (String)request.getAttribute("content");
	//if (title == null || content==null)
	//	request.getRequestDispatcher("error.jsp");
%>
<body style="padding:0px;margin:0px;font-family:Verdana, Geneva, sans-serif;background-color:#F8F8FF;">
	<%@ include file="/templates/header.jsp" %>
	<%@ include file="/templates/logo.jsp" %>
	<%@ include file="/templates/navigator.jsp" %>
	<%@ include file="/templates/location.jsp" %>
	<div id="main" class="main">
		<%@ include file="/templates/leftmenu.jsp"%>
		<div id="content" class="content">
			<div class="title" style="height:auto;width:100%;line-height:30px;margin:0px auto;text-align:center;border:1px solid #e5e5e5">
	        	<span style="font-size:20px;text-align:center;font-weight:bold;">CAXA“工业云”平台获工信部授牌</span><br/>
	        	<span style="font-size:13px;color:#3c3c3c;">作者：admin</span>
	        	<span style="margin-left:20px;font-size:13px;color:#3c3c3c;">发表时间：2011/11/18</span>
	        	<span style="margin-left:20px;font-size:13px;color:#3c3c3c;">关注度：100</span>
	        </div>
			<div style="padding:0 10px;">
	            <div id="Cnt-Main-Article-QQ" bosszone="content" style="position: relative;">
	            	<p style="TEXT-INDENT: 2em">日前，中国工业软件产业发展联盟一周年工作总结会暨国产CAD中小企业公共服务平台授牌仪式在北京西苑饭店举行，工业和信息化部软件与服务业司陈英副司长、中小企业司王建翔副司长，国家信息化专家咨询委员会周宏仁副主任以及中国工程院吴澄院士，各省市工信委领导、业界专家和企业代表等应邀参加。CAXA作为我国工业软件的优秀企业，在青岛经信委的支持下建立的“工业云”平台被工信部授予“国产 CAD中小企业公共服务平台”。 </p>
	            	<div class="mbArticleSharePic" align="center" style="width:100%;">
	            		<img alt="CAXA“工业云”平台获工信部授牌" src="./image/news/61771106.jpg">
	            	</div>
	        	</div>
      			<p class="pictext" align="center"></p><p style="TEXT-ALIGN: center"><span style="FONT-SIZE: 12px">工信部陈英副司长（左1）和王建翔副司长（右1）为CAXA授牌</span></p>
      			<p style="TEXT-INDENT: 2em">CAXA总裁雷毅表示，2011年是“工业云”落地年，CAXA与青岛、襄樊、江门、大足、安徽等地方政府和园区合作，共同搭建“工业云”平台，这种合作模式还会在全国其他地方全面铺开，让我国的“工业云”全面惠及全国的工业企业。CAXA作为我国工业软件的代表性企业，已经在工业软件的互联网化方面首度做出了有益尝试，推出了“在线CAD服务”，这种SAAS模式的开创为我国工业企业提供更多的选择空间，大大降低了工业企业信息化建设门槛。因此，“工业云”有望成为我国中小型工业企业进行信息化建设的另外一个理想选择，同时也是软件服务商提升大中型工业企业信息化服务的重要手段。</p>
      			<p style="TEXT-INDENT: 2em">国家信息化专家咨询委员会周宏仁主任在总结会上强调，工业软件是中国软件产业的一个非常重要的领域。工业软件是两化融合的一个融合剂，如果没有工业软件，两化融合就免谈；如果没有高水平的工业软件，两化深度融合也免谈。“国产”这两个字在工业软件当中越来越重要，它影响到我们国家整个工业产业的安全。“震网”病毒、国外软件“后门”事件等都警惕我们，如果不掌握工业软件的核心技术，我国工业生产的安全将来会受到很大的威胁，因此加快国产工业软件的发展具有十分重要战略意义。</p>
	        </div>
	    </div>
	</div>
	<script type="text/javascript">
		document.getElementById("main").style.height=document.getElementById("content").offsetHeight+"px";
	</script>
	<%@ include file="/templates/footer.jsp" %>
</body>
</html>