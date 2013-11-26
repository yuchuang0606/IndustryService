/*
 * Copyright (c) 2013 DLUT - All rights reserved.
 * This software is the confidential and proprietary information of 
 * DLUT ("Confidential Information"). You shall not disclose such 
 * Confidential Information and shall use it only in accordance with 
 * the terms of the license agreement you entered into with DLUT.
 * =======================================
 * Initially Created: 25/11/2013  
 * File Name: call background api 
 * Author: Yu Chuang
 */
$(document).ready(function(){
	$("#s").change(function(){
		var url = window.location.href;
		var index = url.indexOf("?");
		var urlbef = url.substring(0, index+1);
	    var paramStr = url.substring(url.indexOf("?") + 1);
	    var params = paramStr.split("&");
	    var type = null, orderby = null, page = null, rp = null;
	    for (var i = 0; i < params.length; i++)
	    {
	    	var p = params[i].split("=");
	    	if (p[0] == "type")
	    		type = p[1];
	    	else if (p[0] == "orderby")
	    		orderby = p[1];
	    	else if (p[0] == "page")
	    		page = p[1];
	    	else if (p[0] == "rp")
	    		rp = p[1];
	    }
	    var nrp = $("#s").val();
	    if (nrp != rp && null != type && null != orderby && null != page && null != rp)
	    {
	    	var urltemp = urlbef+"type={type}&orderby={orderby}&page={page}&rp={rp}";  
	        var url = urltemp.replace("{type}", type).replace("{orderby}", orderby).replace("{page}", page).replace("{rp}", nrp);
	        window.location.href = url;
	    } 
	});
});

window.onload=function()
{
	var url = window.location.href;
	var paramStr = url.substring(url.indexOf("?") + 1);
    var params = paramStr.split("&");
    var rp = null;
    for (var i = 0; i < params.length; i++)
    {
    	var p = params[i].split("=");
    	if (p[0] == "rp")
    		rp = p[1];
    }
    document.getElementById("s").value=rp;
}