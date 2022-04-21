<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1.0">
    <title>OFD预览</title>
    <#include "*/commonHeader.ftl">
</head>
<body>

<iframe src="" width="100%" frameborder="0"></iframe>
</body>
<script type="text/javascript">
    document.getElementsByTagName('iframe')[0].src = "${baseUrl}ofd/index.html?file=${currentUrl}";
    document.getElementsByTagName('iframe')[0].height = document.documentElement.clientHeight - 10;
    /**
     * 页面变化调整高度
     */
    window.onresize = function () {
        var fm = document.getElementsByTagName("iframe")[0];
        fm.height = window.document.documentElement.clientHeight - 10;
    }


    /*初始化水印*/
    window.onload = function () {
	    if(isIE()){
			alert("OFD文件预览不支持IE浏览器。\r\nWin10以上系统可以使用系统自带EDGE浏览器，\r\nWin7系统请使用Chrome、火狐、360极速模式等。");
		}
        initWaterMark();
    }
    function isIE() {
	    if (!!window.ActiveXObject || "ActiveXObject" in window)
	        return true;
	    else
	        return false;
    }
</script>
</html>