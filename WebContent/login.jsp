<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
<title>会员登录</title>
<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>


<link rel="stylesheet" href="css/style.css" type="text/css" />
<style>
	.logo-header{
		position: absolute;
		margin-right: 100px;
		left: 50px;
		margin-top:5px;
	}
</style>
</head>
<body>


		<header id="header" class="header">
			<div class="w1200">
					<img src="./images/download.png" class="logo-header">
                   <ul class="header-list" style="float: right; margin-top: 10px;">
                      
                       <li><a href="help.jsp">帮助中心</a></li>
                       <li><a href="aboutMe.jsp">联系我们</a></li>
                       
                   </ul>
                </div>
        </header>
        <!-- /header -->
        
        
     
              
	
	<div class="container">
	<div class="row"> 
			<div class="col-md-12">
					<h1 style="color:#fff;text-align: center; margin-top: 150px; ">视频安全证书签发系统</h1>
				</div>
			<div class="col-md-5">
				<div id="DFFF">
					<p class="t1">用户登录</p>
					<form class="form-horizontal" method="post" action="${pageContext.request.contextPath }/user" autocomplete="off">
						
						<input type="hidden" name="method" value="login">
						
						<div class="form-group" style="margin-top: 50px;">
							<label for="username" class="" id="label1" style="color: #fff;">用户名:</label>
							
							<input type="text" class="form-control" id="username" style="background-color:rgba(255,255,255,0.7);" name="name" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入用户名" />
							<br><font color="red">${requestScope.namemsg}${requestScope.nameError}</font>
						</div>
						<div class="form-group" style="margin-top: 50px;">
							<label for="inputPassword3" class="" id="label2">密<span></span>码:</label>
							<input type="password" class="form-control" id="inputPassword3" style="background-color:rgba(255,255,255,0.7);" name="passwd"  placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入密码"> 
							<br><font color="red">${requestScope.pwdmsg}</font>
						</div>
						<div class="form-group" style="margin-top: 20px;">
							<div class="col-sm-offset-2 col-sm-10" style="margin-top: 20px;">
								<div class="checkbox">
									<label style="color:#fff;"> 
										<input type="checkbox" name="autoLogin" value="autoLogin" class="cb"> 自动登录
									</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<label style="color:#fff;"> 
										<input type="checkbox"  class="cb"> 记住用户名
									</label>
									
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-offset-2 col-sm-10" style="margin-top: 20px;">
								<input type="submit" width="100" value="登录" name="submit" id="SubmitButton">
								<a href="register.jsp"><input type="button" width="100" value="注册" id="RegisterButton"></a>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="foot">
	
			<p class="cop">
			地址： 北京市海淀区杏石口路65号益园文创基地B2楼3层301室
			</p>
			<p class="cop">
			北京安为科技有限公司 版权所有 © 2017京ICP备1702606
			</p>
		</div>

</body>
</html>