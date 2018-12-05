<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>文件下载</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<style type="text/css"></style>
	<script type="text/javascript">
		onload = function() {
			setInterval(go, 1000);
		};
		var x = 3; //利用了全局变量来执行
		function go() {
			x--;
			if (x > 0) {
				document.getElementById("sp").innerHTML = x; //每次设置的x的值都不一样了。
			} else {
				location.href = '/Info';
			}
		}
	</script>
	<div style="text-align: center;width: 200px;height: 100px;position: absolute;top: 200px;left: 33%;font-size: 18px;border: solid 1px ;line-height: 100px;">
		下载文件成功
		<span id="sp" style="color: red;">3</span>
		秒后回首页
	</div>
  </body>
</html>





