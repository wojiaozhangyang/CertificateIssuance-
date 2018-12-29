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
	.reg-bei{
		    background: url(./images/background-image.png) no-repeat;
		    background-size: cover;
    background-attachment: fixed;
    width:100%;
    height:100%;
			
	}
	.col-md-8{
		margin-top: 100px;
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

	
}

.error {
	color: red;
	    color: red;
    font-weight: normal;
    font-size: 14px;
    padding-left: 20px;
}
#SubmitButton{
	border-style:none;
	border:-5px gray solid;
	width: 137px;
    height: 44px;
    font-size: 24px;
    color: #FFF;
    outline: none;
    font-weight: bold;
    background: rgba(0,163,222,1);
	border-radius: 5px;
}
#SubmitButton:hover{
	background: #197796;
}
#LoginHref{
	padding-left: 440px;
    font-size: 12px;
    font-weight: 400;
    color: #948f8f;

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
<body class="reg-bei">	
<header id="header" class="header" style="background: rgba(2,16,46,1);">
			<div class="w1200" style="float: right; margin-top: 10px;">
					<img src="./images/with.png" class="logo-header" height="82px" style="float: left;margin: -20px 0 0 60px;">
                   <ul class="header-list" style="float: right;">
                      
                       <li><a href="help.jsp">帮助中心</a></li>
                       <li><a href="aboutMe.jsp">联系我们</a></li>
                       
                   </ul>
                </div>
	     
	<div class="container" style="background:#FFF;width:1009px; height:650px;margin: 110px auto 0;;    border-radius: 10px;">
		<div class="row">
			<div class="col-md-8"style="font-size: 15px;">
				<p id="LoginHref">已有账号？请<a href="login.jsp">登陆</a></p>
				
				<form id="myform" class="form-horizontal"
					action="${pageContext.request.contextPath }/register" method="post"
					style="margin-top: 5px;">

					<div class="form-group">
					
						<div class="col-sm-6">
							<input type="text" class="form-control" id="name" name="name"
								placeholder="请输入用户名" placeholder="sm">
						</div>
					</div>

					<div class="form-group">
						
						<div class="col-sm-6">
							<input type="password" class="form-control" id="passwd"
								name="passwd" placeholder="请输入密码">
						</div>
					</div>


					<div class="form-group">
						
						<div class="col-sm-6">
							<input type="password" class="form-control" id="confirmpwd"
								name="repasswd" placeholder="请输入确认密码">
						</div>
					</div>


					<div class="form-group">
						
						<div class="col-sm-6">
							<input type="email" class="form-control" id="inputEmail3"
								name="email" placeholder="请输入邮箱账号">
						</div>
					</div>
					<div class="form-group">
						
						<div class="col-sm-6">
							<input type="text" class="form-control" id="phoneNum"
								name="phoneNum" placeholder="请输入电话">
						</div>
					</div>

					<div class="form-group">
						
						<div class="col-sm-6">
							<input type="text" class="form-control" id="company"
								name="company" placeholder="请输入公司">
						</div>
					</div>
					<div class="form-group">
						
						<div class="col-sm-6" style="color:#555;margin-right: 283px;">
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

	<script src="js/area.js" type="text/javascript"></script>
	</header>
</body>
</html>






