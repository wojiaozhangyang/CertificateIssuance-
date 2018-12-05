<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<title>用户注册</title>

<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>

<script src="js/jquery.validate.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="css/style.css" type="text/css" />
<style>
	.body{
		margin: 0 auto;
		background-position: center;
	}
	.col-md-8{
		margin-top: 15%;
	}

.carousel-inner .item img {
	width: 100%;
	height: 300px;
}

font {
	color:#e4c51a;
	font-size: 25px;
	font-weight: normal;
	padding: 0 10px;
	font-weight: bold;
	font-family: 'Courier New', Courier, monospace
	
}
.video {
	position: fixed;
    right: 0;
    min-width: 100%;
    min-height: 100%;
    width: auto;
    height: auto;
    z-index: -999;
}


.error {
	color: red;
}
#SubmitButton{
	border-style:none;
	border:-5px gray solid;
	width: 150px;
    height: 37px;
    font-size: 20px;
    color: #FFF;
    outline: none;
    font-weight: bold;
    background:#e4c51a;
	border-radius: 5px;
}
#SubmitButton:hover{
	background: #9b8717;
}
#LoginHref{
	padding-left: 100px;
    color: #e4c51a;
    font-size: 15px;
    font-family: 'Courier New', Courier, monospace;
	font-weight: bold;

}
#province,#city,#county{
	height:32px;
	margin-right:1px
}
#myform{
	margin-top:30px !important;
}
</style>
<script type="text/javascript">
	
	//自定义校验规则
	$.validator.addMethod(
		//规则的名称
		"checkUsername",
		//校验的函数
		function(value,element,params){
			
			//定义一个标志
			var flag = false;
			
			//value:输入的内容
			//element:被校验的元素对象
			//params：规则对应的参数值
			//目的：对输入的username进行ajax校验
			$.ajax({
				"async":false,
				"url":"${pageContext.request.contextPath}/CheckUsername",
				"data":{"name":value},
				"type":"POST",
				"dataType":"json",
				"success":function(data){
					flag = data.isExist;
				}
			});
			//返回false代表该校验器不通过
			return !flag;
		}
		
	);

		
	
	$(function(){
		$("#myform").validate({
			rules:{
				"name":{
					"required":true,
					"checkUsername":true,
					"rangelength":[6,12]
				},
				"passwd":{
					"required":true,
					"rangelength":[6,12]
				},
				"repasswd":{
					"required":true,
					"rangelength":[6,12],
					"equalTo":"#passwd"
				},
				"email":{
					"required":true,
					"email":true
				},
				"phoneNum":{
					"required":true,
					 "number":true,
					 "rangelength":[11,11]
					
				},
				"company":{
				    "required":true,
				}
				
			},
			messages:{
				"name":{
					"required":"用户名不能为空",
					"checkUsername":"用户名已存在",
					"rangelength":"账号长度6-12位"
				},
				"passwd":{
					"required":"密码不能为空",
					"rangelength":"密码长度6-12位"
				},
				"repasswd":{
					"required":"密码不能为空",
					"rangelength":"密码长度6-12位",
					"equalTo":"两次密码不一致"		
				},
				"email":{
					"required":"邮箱不能为空",
					"email":"邮箱格式不正确"
				},
				"phoneNum":{
					"required":"电话不能为空",
					"rangelength":"电话长度为11位",
					"number":"只能输入为数字"
				},
				"company":{
					"required":"公司不能为空",
				}
			}
		});
	});

</script>

</head>
<body>	
	     
	<div class="container">
		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8"
				style="color:#FFF;font-size: 15px;padding-left: 180px; margin:0,auto">
				
				<font>用户注册</font>
				<a href="login.jsp" id="LoginHref">已有账号？请登陆</a>
				<form id="myform" class="form-horizontal"
					action="${pageContext.request.contextPath }/register" method="post"
					style="margin-top: 5px;">

					<div class="form-group">
						<label for="username" class="col-sm-2 control-label">用户名:</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="请输入用户名" placeholder="sm">
						</div>
					</div>

					<div class="form-group">
						<label for="inputPassword3" class="col-sm-2 control-label">密&nbsp;&nbsp;&nbsp;码:</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="passwd"
								name="passwd" placeholder="请输入密码">
						</div>
					</div>


					<div class="form-group">
						<label for="confirmpwd" class="col-sm-2 control-label">确认密码:</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="confirmpwd"
								name="repasswd" placeholder="请输入确认密码">
						</div>
					</div>


					<div class="form-group">
						<label for="inputEmail3" class="col-sm-2 control-label">邮&nbsp;&nbsp;&nbsp;箱:</label>
						<div class="col-sm-6">
							<input type="email" class="form-control" id="inputEmail3"
								name="email" placeholder="请输入邮箱账号">
						</div>
					</div>
					<div class="form-group">
						<label for="phoneNum" class="col-sm-2 control-label">电&nbsp;&nbsp;&nbsp;话:</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="phoneNum"
								name="phoneNum" placeholder="请输入电话">
						</div>
					</div>

					<div class="form-group">
						<label for="company" class="col-sm-2 control-label">公&nbsp;&nbsp;&nbsp;司:</label>
						<div class="col-sm-6">
							<input type="text" class="form-control" id="company"
								name="company" placeholder="请输入公司">
						</div>
					</div>
					<div class="form-group">
						<label class="col-sm-2 control-label">地&nbsp;&nbsp;&nbsp;址:</label>
						<div class="col-sm-6" style="color:#555">
							<select id="province" onchange="setCity(this.value);"
								name="l" style="width:100px;height:32px">
								<option selected="selected">请选择</option>
							</select> <select id="city" onchange="setCounty(this.value);"
								name="s">
								<option selected="selected">请选择</option>
							</select> <select id="county" name="c">
								<option value="" selected="selected" style="width:10px;">请选择</option>
							</select>
						</div>
					</div>



					<div class="form-group">
						<div class="col-sm-offset-2 col-sm-10">
							<input type="submit" width="100" value="注 册" id="SubmitButton"/>
						</div>
					</div>
				</form>
			</div>

			<div class="col-md-2"></div>

		</div>
	</div>
<div class="foot">
	
			<p class="cop">
			地址： 北京市海淀区杏石口路65号益园文创基地B2楼3层301室
			<br>
			北京安为科技有限公司 版权所有 © 2017京ICP备1702606
			</p>
		</div>
	<script src="js/area.js" type="text/javascript"></script>
</body>
</html>






