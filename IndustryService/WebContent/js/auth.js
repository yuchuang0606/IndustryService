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

//���Http����������ڿͻ��������/�˷����첽��http����
function getHttpObject() 
{ 
    var _http;
    var browser = navigator.appName;
    if(browser == "Microsoft Internet Explorer") 
    {
        //����û�ʹ��IE���ͷ���XMLHTTP��ActiveX����
        _http = new ActiveXObject("MSXML2.XMLHTTP.3.0"); 
    }
    else//��IE
    {
        //���򷵻�һ��XMLHttpRequest����
        _http = new XMLHttpRequest(); 
    }
    return _http;
}
//��ȡȫ�ֵ�HTTP�������
var http = getHttpObject();//Ҳ�����ڶ�������
//��������״̬�仯
function getHello() 
{ 
    //4��ʾ���������
    if (http.readyState == 4) //�����http��ȫ�ֱ���
    {
        //��ȡ����ε���Ӧ�ı�
        var helloStr = http.responseText; 
        if(helloStr == "true")//��ʾ�Ѿ�����
            {document.getElementById("msg_username").innerHTML="用户名不正确";}
        else//û�д���
            {document.getElementById("name_img").style.display = "inline";}
    }
}
function CheckUserName()
{
	document.getElementById("msg_username").innerHTML="";
    if(document.getElementById("txtName").value != "")
    {
        var url = "./ckname?username="+document.getElementById("txtName").value;
        //ָ������˵ĵ�ַ
        http.open("GET", url, true); 
        //����״̬�仯ʱ�Ĵ��?��
        http.onreadystatechange = getHello; 
        //��������
        http.send(null);
        return true;
    }
    else
    {
         document.getElementById("msg_username").innerHTML="密码不正确";
         return false;
    }
}
function clearNameMsg()
{
	document.getElementById("msg_username").innerHTML="";
	document.getElementById("name_img").style.display = "none";
}