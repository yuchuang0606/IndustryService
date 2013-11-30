/*
 * Copyright (c) 2013 DLUT - All rights reserved.
 * This software is the confidential and proprietary information of 
 * DLUT ("Confidential Information"). You shall not disclose such 
 * Confidential Information and shall use it only in accordance with 
 * the terms of the license agreement you entered into with DLUT.
 * =======================================
 * Initially Created: 27/11/2013  
 * File Name: call background api 
 * Author: Yu Chuang
 */

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
            {document.getElementById("msg_username").innerHTML="用户名不存在";}
        else//没有存在
            {document.getElementById("name_img").style.display = "inline";}
    }
}
function CheckUserName()
{
	document.getElementById("msg_username").innerHTML="";
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