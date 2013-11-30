/*
 * Copyright (c) 2013 DLUT - All rights reserved.
 * This software is the confidential and proprietary information of 
 * DLUT ("Confidential Information"). You shall not disclose such 
 * Confidential Information and shall use it only in accordance with 
 * the terms of the license agreement you entered into with DLUT.
 * =======================================
 * Initially Created: 26/11/2013  
 * File Name: call background api 
 * Author: Yu Chuang
 */

/* 检查密码长度是否合理 */
function checkPwdLength(pwd) {
	if (pwd.length < 8)
		document.getElementById("msg_password").innerHTML = "密码不小于8位";
}

function clearPwdMsg() {
	document.getElementById("msg_password").innerHTML = "";
}

/* 判断两次输入的密码是否一致 */
function checkPwdSame(pwd) {
	var passwd = document.getElementById("pwd1").value;
	if (passwd == pwd && pwd.length >= 8)
		document.getElementById("pwd_img").style.display = "inline";
	else if (passwd == pwd && pwd.length < 8)
		document.getElementById("msg_password1").innerHTML = "密码不小于8位";
	else
		document.getElementById("msg_password1").innerHTML = "两次密码不一致";
}

function clearPwdMsg1(pwd) {
	var passwd = document.getElementById("pwd1").value;
	if (passwd == pwd && pwd.length >= 8)
		document.getElementById("pwd_img").style.display = "inline";
	else {
		document.getElementById("pwd_img").style.display = "none";
		document.getElementById("msg_password1").innerHTML = "";
	}
}
/* 检查邮箱格式的正确性*/
function CheckMail(mail) {
	 var filter  = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	 if (filter.test(mail))
	 {
		 document.getElementById("email_img").style.display = "inline";
		 return true;
	 }
	 else {
		 document.getElementById("email_msg").innerHTML = "邮箱格式不正确";
		 return false;
	 }
}

function clearMsg() {
	document.getElementById("email_img").style.display = "none";
	document.getElementById("email_msg").innerHTML = "";
}

//生成Http请求对象，用于客户端向服务/端发送异步的http请求
function getHttpObject() 
{ 
    var _http;
    var browser = navigator.appName;
    if(browser == "Microsoft Internet Explorer") 
    {
        //如果用户使用IE，就返回XMLHTTP的ActiveX对象
        _http = new ActiveXObject("MSXML2.XMLHTTP.3.0"); 
    }
    else//非IE
    {
        //否则返回一个XMLHttpRequest对象
        _http = new XMLHttpRequest(); 
    }
    return _http;
}
//获取全局的HTTP请求对象
var http = getHttpObject();//也可以在顶端声明
//处理请求状态变化
function getHello() 
{ 
    //4表示请求已完成
    if (http.readyState == 4) //这里的http是全局变量
    {
        //获取服务段的响应文本
        var helloStr = http.responseText; 
        if(helloStr == "true")//表示已经存在
            {document.getElementById("msg_username").innerHTML="用户名已存在";}
        else//没有存在
            {document.getElementById("name_img").style.display = "inline";}
    }
}
function CheckUserName()
{
	document.getElementById("msg_username").innerHTML="";
	document.getElementById("name_img").style.display = "none";
    if(document.getElementById("txtName").value != "")
    {
        var url = "./ckname?username="+document.getElementById("txtName").value;
        //指定服务端的地址
        http.open("GET", url, true); 
        //请求状态变化时的处理函数
        http.onreadystatechange = getHello; 
        //发送请求
        http.send(null);
        return true;
    }
    else
    {
         document.getElementById("msg_username").innerHTML="请输入用户名";
         return false;
    }
}
function clearNameMsg()
{
	document.getElementById("msg_username").innerHTML="";
	document.getElementById("name_img").style.display = "none";
}
//手机号验证
function isValidMobile(str) {
    var pat = /^1[3578][0-9]\d{8}$/;
    if (!(pat.exec(str))) {
    	document.getElementById("mobile_msg").innerHTML="手机号格式错误";
    	return false;
    }
    else {
    	document.getElementById("mobile_img").style.display = "inline";
    	return true;
    }
}
function clearMobileMsg()
{
	document.getElementById("mobile_msg").innerHTML="";
	document.getElementById("mobile_img").style.display = "none";
}
// 判断是否为空
function isCpnameNull(value)
{
	if (value.length == 0)
		document.getElementById("cpname_msg").innerHTML="不能为空";
	else
		document.getElementById("cpname_img").style.display = "inline";
}
function clearCpnameMsg()
{
	document.getElementById("cpname_msg").innerHTML="";
	document.getElementById("cpname_img").style.display = "none";
}
function isDepartNull(value)
{
	if (value.length == 0)
		document.getElementById("depart_msg").innerHTML="不能为空";
	else
		document.getElementById("depart_img").style.display = "inline";
}
function clearDepartMsg()
{
	document.getElementById("depart_msg").innerHTML="";
	document.getElementById("depart_img").style.display = "none";
}
function isDutyNull(value)
{
	if (value.length == 0)
		document.getElementById("duty_msg").innerHTML="不能为空";
	else
		document.getElementById("duty_img").style.display = "inline";
}
function clearDutyMsg()
{
	document.getElementById("duty_msg").innerHTML="";
	document.getElementById("duty_img").style.display = "none";
}
function register()
{
	var username = document.getElementById("txtName").value;
	if (username.length == 0) {
		document.getElementById("msg_username").innerHTML="请输入用户名";return ;
	}
	var realname = document.getElementById("realname").value;
	var pwd1 = document.getElementById("pwd1").value;
	if (pwd1.length < 8) {
		document.getElementById("msg_password").innerHTML = "密码不小于8位";return;
	}
	var pwd2 = document.getElementById("pwd2").value;
	if (pwd1 != pwd2) {
		document.getElementById("msg_password1").innerHTML = "两次密码不一致";return;
	}
	var email = document.getElementById("txtMail").value;
	if (CheckMail(email) == "false") {
		document.getElementById("email_msg").innerHTML = "邮箱格式不正确";return;
	}
	var sexgroup = document.getElementsByName("Sex");
	var sex = "男";
	for (var i = 0; i < sexgroup.length; i++)
	{
		if (sexgroup[i].checked)
		{
			if (sexgroup[i].value == 2)
				sex = "女";
			break;
		}
	}
	var birthday = document.getElementById("birthday").value;
	var province = document.getElementById("province").options[document.getElementById("province").selectedIndex].text;
	var city = document.getElementById("city").options[document.getElementById("city").selectedIndex].text;
	var area = document.getElementById("area").options[document.getElementById("area").selectedIndex].text;
	var address = province + " " + city + " " + area;
	var cpname = document.getElementById("cpname").value;
	if (cpname.length == 0) {
		document.getElementById("cpname_msg").innerHTML="不能为空";return;
	}
	var industry = document.getElementById("industry").options[document.getElementById("industry").selectedIndex].text;
	var size = document.getElementById("size").options[document.getElementById("size").selectedIndex].text;
	var depart = document.getElementById("depart").value;
	if (depart.length == 0) {
		document.getElementById("depart_msg").innerHTML="不能为空";return;
	}
	var duty = document.getElementById("duty").value;
	if (duty.length == 0) {
		document.getElementById("duty_msg").innerHTML="不能为空";return;
	}
	var mobile = document.getElementById("mobile").value;
	if (isValidMobile(mobile) == false) {
		document.getElementById("mobile_msg").innerHTML="手机号格式错误";return;
	}
	var postcode = document.getElementById("postcode").value;
	var postaddress = document.getElementById("postaddress").value;
	var isagree = 0;
	var agreebox = document.getElementsByName("regright");
	if (agreebox[0].checked)
		isagree = 1;
	if (isagree == 0) {
		document.getElementById("agree_msg").innerHTML="请同意本站条款";return;
	}
	post('./register', {username:username,realname:realname,
						pwd1:pwd1,email:email,sex:sex,
						birthday:birthday,address:address,cpname:cpname,
						industry:industry,size:size,depart:depart,
						duty:duty,mobile:mobile,postcode:postcode,postaddress:postaddress
						});
}
/* 利用JS使用POST方式提交请求的方法 */
function post(URL, PARAMS) {        
    var temp = document.createElement("form");        
    temp.action = URL;        
    temp.method = "post";        
    temp.style.display = "none";        
    for (var x in PARAMS) {        
        var opt = document.createElement("textarea");        
        opt.name = x;
        opt.value = PARAMS[x];        
        // alert(opt.name)        
        temp.appendChild(opt);        
    }        
    document.body.appendChild(temp);        
    temp.submit();        
    return temp;
}

/* 修改个人信息*/
function updateinfo(id,contextPath)
{
	var realname = document.getElementById("realname").value;
	var email = document.getElementById("txtMail").value;
	if (CheckMail(email) == "false") {
		document.getElementById("email_msg").innerHTML = "邮箱格式不正确";return;
	}
	var sexgroup = document.getElementsByName("Sex");
	var sex = "男";
	for (var i = 0; i < sexgroup.length; i++)
	{
		if (sexgroup[i].checked)
		{
			if (sexgroup[i].value == 2)
				sex = "女";
			break;
		}
	}
	var birthday = document.getElementById("birthday").value;
	var province = document.getElementById("province").options[document.getElementById("province").selectedIndex].text;
	var city = document.getElementById("city").options[document.getElementById("city").selectedIndex].text;
	var area = document.getElementById("area").options[document.getElementById("area").selectedIndex].text;
	var address = province + " " + city + " " + area;
	var cpname = document.getElementById("cpname").value;
	if (cpname.length == 0) {
		document.getElementById("cpname_msg").innerHTML="不能为空";return;
	}
	var industry = document.getElementById("industry").options[document.getElementById("industry").selectedIndex].text;
	var size = document.getElementById("size").options[document.getElementById("size").selectedIndex].text;
	var depart = document.getElementById("depart").value;
	if (depart.length == 0) {
		document.getElementById("depart_msg").innerHTML="不能为空";return;
	}
	var duty = document.getElementById("duty").value;
	if (duty.length == 0) {
		document.getElementById("duty_msg").innerHTML="不能为空";return;
	}
	var mobile = document.getElementById("mobile").value;
	if (isValidMobile(mobile) == false) {
		document.getElementById("mobile_msg").innerHTML="手机号格式错误";return;
	}
	var postcode = document.getElementById("postcode").value;
	var postaddress = document.getElementById("postaddress").value;
	var introduction = document.getElementById("introduction").value;
	// post the request
	var url = contextPath + "/update?type=info" +
						"&userid=" + id +
						"&realname=" + realname +
						"&email="+ email +
						"&sex=" + sex +
						"&birthday=" + birthday +
						"&address=" + address +
						"&cpname=" + cpname +
						"&industry=" + industry +
						"&size=" + size +
						"&depart=" + depart +
						"&duty=" + duty + 
						"&mobile=" + mobile + 
						"&postcode=" + postcode +
						"&postaddress=" + postaddress +
						"&introduction=" + introduction;
	alert(url);
    //指定服务端的地址
    http.open("POST", url, true); 
    //请求状态变化时的处理函数
    http.onreadystatechange = updateResult;
    //发送请求
    http.send(null);
}
function updateResult()
{
	//4表示请求已完成
    if (http.readyState == 4) //这里的http是全局变量
    {
        //获取服务段的响应文本
        var helloStr = http.responseText; 
        if(helloStr == "true")//表示已经存在
        {
        	alert("修改成功");
        	location.href = "./user.jsp";
        }
        else//没有存在
        {
        	alert("修改失败");
        }
    }
}
/* 修改密码 */
function updatepwd(id,contextPath)
{
	var oldpwd = document.getElementById("oldpwd").value;
	var newpwd1 = document.getElementById("pwd1").value;
	var newpwd2 = document.getElementById("pwd2").value;
	if (oldpwd == newpwd1) {
		document.getElementById("msg_password").innerHTML="新密码与原密码相同";return;
	}
	if (newpwd1.length <8) {
		document.getElementById("msg_password").innerHTML="密码长度小于8";return;
	}
	if (newpwd1 != newpwd2) {
		document.getElementById("msg_password1").innerHTML="两次密码不一致";return;
	}
	// post the request
	var url = contextPath + "/update?type=pwd" +
						"&userid=" + id +
						"&oldpwd=" + oldpwd +
						"&newpwd="+ newpwd1;
    //指定服务端的地址
    http.open("POST", url, true); 
    //请求状态变化时的处理函数
    http.onreadystatechange = updateResult;
    //发送请求
    http.send(null);
}

/*取消修改，回到用户中心*/
function cancel()
{
	location.href = "./user.jsp";
}
/*取消注册，回到首页*/
function cancelReg()
{
	location.href = "./index.jsp";
}

/* 判断是否是图片 */
function checkImg() 
{	
	var file = document.getElementById("imgfile").value;
	if(file == "")
	{
	    alert('图片不能为空！');
	    return false;
	}
	else
	{
		var ext = file.toLowerCase().split('.');//以“.”分隔上传文件字符串
		if(ext[ext.length-1]=='gif'||ext[ext.length-1]=='jpg'||ext[ext.length-1]=='bmp'||ext[ext.length-1]=='png')//判断图片格式
		{
		    return true;
		}
		else
		{
		    alert('对不起，你选择的图片格式不对\n图片格式应为*.jpg、*.gif、*.png');
		    return false;
		}
	}
}
var userid = null;
var ctxPath = null;
function updateHeadpic(uid, contextPath)
{
	userid = uid;
	ctxPath = contextPath;
	var form = document.getElementById("headform");
//    var fileObj = document.getElementById("imgfile").files;
    var formdata = new FormData(form);
//    formdata.append("imgfile", fileObj);
 // post the request
	var url = contextPath + "/upload";
	alert(url);
    //指定服务端的地址
    http.open("POST", url, true); 
    //请求状态变化时的处理函数
    http.onreadystatechange = uploadResult;
    //发送请求
    http.send(formdata);
    return false;
}
function uploadResult()
{
	//4表示请求已完成
    if (http.readyState == 4) //这里的http是全局变量
    {
        //获取服务段的响应文本
        var resStr = http.responseText;
        if (resStr.substring(0, 8) != "/uploads") {
        	alert("头像上传失败");
            return false;
        } else {
        	var url = ctxPath + "/update?type=headpic& + " +
        				"&userid=" + userid +
        				"&userpic=" + resStr;
            //指定服务端的地址
            http.open("POST", url, true); 
            //请求状态变化时的处理函数
            http.onreadystatechange = updateResult;
            //发送请求
            http.send(null);
        }
    }
}
/* 显示修改头像div */
function displayForm()
{
	document.getElementById("updatepic").style.display = "block";
}
function hiddenForm()
{
	document.getElementById("updatepic").style.display = "none";
}
/* 显示搜索下拉菜单*/
function displayOpt()
{
	document.getElementById("simtype1").style.display = "block";
	document.getElementById("simtype2").style.display = "block";
	//document.getElementById("simtype3").style.display = "block";
}
function hiddenOpt(value)
{
	document.getElementById("simtype1").style.display = "none";
	document.getElementById("simtype2").style.display = "none";
	//document.getElementById("simtype3").style.display = "none";
	document.getElementById("opt1").innerHTML=value;
}
/* 搜索资源 */
function SearchSubmit()
{
	var option = document.getElementById("opt1").innerHTML;
	var keyword = document.getElementById("searchkey").value;
	if ("请输入关键字" == keyword ||  keyword == "")
		return ;
	post('./search', {option:option,keyword:keyword});
}