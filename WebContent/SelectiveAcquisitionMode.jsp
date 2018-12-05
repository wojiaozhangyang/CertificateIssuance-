<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<script src="js/vue.js"></script>
<title>选择证书</title>
</head>
<link rel="stylesheet" href="css/index.css">
<body style="background: url(./images/bei.png); background-size: cover; width: 100%; height: 100%; position: relative;">
	<jsp:include page="./header.jsp" flush="true" ></jsp:include>
	<h1 class="title">请选择证书获取方式</h1>
<div class="content">
  <div class="tab1">
    <div :class="state ?'on' : '' " @click="state=true">在线获取</div>
    <div  :class="!state ?'on' : '' " @click="state=false">离线获取</div>
  </div>
  <div class="box">
	<form action="${pageContext.request.contextPath }/EmailServlet" method="post">
      <div class="box1" v-show="state" style="height:400px;padding-top:100px;">
        <p class="inputBox"><span class="just">邮箱</span><input class="input" name="email" type="email" placeholder="请输入邮箱"></p>
        <input type="submit" class="submit" value="提交">
        </div>
    </form>
  <div class="box1" v-show="!state">
  
  <form action="${pageContext.request.contextPath }/OfflineAcquisitionServlet" method="post">
    <h2 class="title">请填写收货地址:</h2>
    <p class="inputBox"><span class="just">姓名</span><input class="input" name="AddressName" type="text"  placeholder="请输入姓名"></p>
    <p class="inputBox"><span class="just">电话</span><input class="input" name="AddressPhone" type="number" maxlength="11" placeholder="请输入电话"></p>
   
   <div class="inputBox">
	<span class="just">省&nbsp;市&nbsp;区</span><select id="s_province" name="AddressProvince" style="height:30px;margin-left:20px;" ></select>
					<select id="s_city" name="AddressCity" style="height:30px;"></select>&nbsp;<select
													id="s_county" name="AddressArea" style="height:30px;"></select>
												<script class="resources library" src="js/area2.js"
													type="text/javascript"></script>
												<script type="text/javascript">_init_area();</script>
											</div>
   
    <p class="inputBox"><span class="just">详细地址</span><input class="input" name="AddressInfo" type="text" placeholder="请输入详细地址"></p>
    <input type="submit" class="submit" value="提交">
    </form>
  </div>
    

    
  
</div>
</div>

<script type="text/javascript">
new Vue({
	el:'body',
	data:{
		state: true
	}
})
</script>

</body>
</html>