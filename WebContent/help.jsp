<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="apple-touch-fullscreen" content="yes">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<meta name="format-detection" content="telephone=no">

<title>帮助中心</title>

<link href="css/base.css" rel="stylesheet" type="text/css">
<link href="css/home.css" rel="stylesheet" type="text/css">

</head>
<body>
<header id="header" class="header">
			<div class="w1200">
                   <ul class="header-list" style="float: right; margin-top: 10px;">
                      
                       <li><a href="login.jsp">首&nbsp;&nbsp;&nbsp;页</ a></li>
                       <li><a href="aboutMe.jsp">联系我们</ a></li>
                       
                   </ul>
                </div>
        </header>
<jsp:include page="header.jsp" flush="true" ></jsp:include>
<div class="index-page">
	<div class="solution-more">
		<div class="solution-more-slide">
			<div class="container">
				<div class="hd">
					<ul>
						<li class="item-1 on">
							<i></i>
							<div class="text">
								<h3>注册与登录</h3>
								<p>出现问题解决办法</p >
							</div>
						</li>
						<li class="item-2">
							<i></i>
							<div class="text">
								<h3>是否提供私钥</h3>
								<p>解释字段信息</p >
							</div>
						</li>
						<li class="item-3">
							<i></i>
							<div class="text">
								<h3>签发选择</h3>
								<p>在线、离线</p >
							</div>
						</li>
					</ul>
				</div>
				<ul class="bd" style="position: relative; width: 100%; height: 600px;">
					<li class="item-1" style="position: absolute; width: 100%; left: 0px; top: 0px;">
						<div class="container">
							<div class="inner">
								<h2>用户注册与登录</h2>
								<dl class="intro">
									<dt>怎样注册成为用户</dt>
									<dd>首先，在页面点击“注册”，跳转到注册新用户的页面，按照提示填写好个人资料，信息不能为空，在注册资料填写正确的前提下，会提示您注册成功。您就成为我们的用户了！</dd>
									<dt>如何登录</dt>
									<dd>进入网站，就会看到视频安全证书签发系统登录框，输入自己的用户名和密码就可以正常登录。</dd>
								</dl>

							
							</div>
						</div>
					</li>
					<li class="item-2" style="position: absolute; width: 100%; left: 0px; top: 0px; display: none;">
						<div class="container">
							<div class="inner">
								<h2>是否需要提供公钥</h2>
								<dl class="intro">
									<dt>不需要上传公钥</dt>
									<dd>选择不需要上传公钥，需要按照表格依次填写内容，公安用户选择公安信息网，普通用户选择专网；编码规则由中心编码（8位）、行业编码（2位）、类型编码（3位）和序号（7位）四个码段共20位十进制数字字符构成。</dd>
									<dt>不提私钥</dt>
									<dd>选择需要上传公钥，按照表格填写完内容后，需要上传公钥文件（格式：每一行64位，16进制的值）；</dd>
								</dl>
							
							</div>
						</div>
					</li>
					<li class="item-3" style="position: absolute; width: 1920px; left: 0px; top: 0px; display: none;">
						<div class="container">
							<div class="inner">
								<h2>签发选择</h2>
								<dl class="intro">
									<dt>离线签收</dt>
									<dd>点击离线获取，收货地址填写完整后点击提交，稍后我们会将U盘给您邮寄过去。</dd>
									<dt>在线签收</dt>
									<dd>输入用户邮箱，我们将给您传输加密密钥，通过在线工具解密邮箱。</dd>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<div style="min-height:580px;"></div>


<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="js/SuperSlide.js"></script>
<script type="text/javascript">
	$(".solution-more-slide").slide({
		effect: 'fold'
	});
	//hover
</script>   
</body>
</html>