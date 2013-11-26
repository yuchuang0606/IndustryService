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
	var passwd = document.getElementById("txtPass").value;
	if (passwd == pwd && pwd.length >= 8)
		document.getElementById("pwd_img").style.display = "inline";
	else if (passwd == pwd && pwd.length < 8)
		document.getElementById("msg_password1").innerHTML = "密码不小于8位";
	else
		document.getElementById("msg_password1").innerHTML = "两次密码不一致";
}

function clearPwdMsg1(pwd) {
	var passwd = document.getElementById("txtPass").value;
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
function isValidMobil(str) {
    var pat = /^1[3578][0-9]\d{8}$/;
    if (!(pat3.exec(str))) {
        return false;
    }
    return true;
}

