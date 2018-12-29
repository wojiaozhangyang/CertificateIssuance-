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
		left: 60px;
		margin-top: -5px;
	}
	body {
    margin:0;
    padding:0;
    background: url(./images/bg.jpg);
    background-repeat:no-repeat;
    background-size:cover;
    width:100%;
    height:100%;
    background-attachment: fixed;
}
</style>
</head>
<body>


		<header id="header" class="header" style="background: rgba(2,16,46,1);">
		<img src="./images/with.png" class="logo-header" height="82px">
			<div class="w1200">

                   <ul class="header-list" style="float: right; margin-top: 10px;">
                      
                       <li><a href="help.jsp">帮助中心</a></li>
                       <li><a href="aboutMe.jsp">联系我们</a></li>
                       
                   </ul>
                </div>
        </header>
        <!-- /header -->
	<div class="container">
	<div class="row"> 
			<h1 style="color:#fff;text-align: center; margin-top: 190px;font-size: 40px; ">视频安全证书签发系统</h1>
			<div class="col-md-5">
					
				<div id="DFFF">
		
					<form class="form-horizontal" method="post" action="${pageContext.request.contextPath }/user" autocomplete="off">
						
						<input type="hidden" name="method" value="login">
						
						<div class="form-group" style="margin-top: 50px;">
							
							<input type="text" class="form-control" id="username" name="name" placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入用户名" />
							<br><font color="red">${requestScope.namemsg}${requestScope.nameError}</font>
						</div>
						<div class="form-group" style="margin-top: 30px;">
							<input type="password" class="form-control" id="inputPassword3" name="passwd"  placeholder="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;请输入密码"> 
							<br><font color="red">${requestScope.pwdmsg}</font>
						</div>
						<div class="form-group" style="margin-top: 20px;">
							<div class="col-sm-offset-2 col-sm-10">
								<div class="checkbox">
									<label style="color:#fff;"> 
										<input type="checkbox" name="autoLogin" value="autoLogin" class="cb"> 自动登录
									</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<label style="color:#fff;margin-left: 57px;"> 
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

</body>
</html>