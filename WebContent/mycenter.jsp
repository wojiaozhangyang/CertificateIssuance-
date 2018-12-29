<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.Anwei.domain.*,java.util.*"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="zh">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>个人中心</title>
<link rel="stylesheet" href="css/mycenter.css">
<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>

<!-- style type="text/css">
        table,table tr td { border:1px solid #092436; }
</style -->



</head>
<body>
	<header id="header" class="header" style="background: black">
		<div class="w1200">
			<img src="./images/with.png" class="logo-header" height="82px"
				style="float: left; margin-top: -10px;">
			<ul class="header-list" style="float: right; margin-top: 10px;">

				<li><a href="help.jsp">帮助中心</a></li>
				<li><a href="aboutMe.jsp">联系我们</a></li>

			</ul>
		</div>

		<p class="headline">用户中心</p>

		<div class="htmleaf-container">

			<div class="container pb30">
				<div class="clear-backend">
					<!-- tab-menu -->
					<input type="radio" class="tab-1" name="tab" checked="checked"
						style="margin-left: 136px;"> <span
						style="margin-left: 136px;"> 基本资料</span> <input type="radio"
						class="tab-2" name="tab" style="margin-left: 240px;"> <span
						style="margin-left: 39px;">证书下载</span> 
					<!-- tab-content -->
					<div class="tab-content">
						<p class="underLine"></p>
						<section class="tab-item-1">
							<div class="c_box" style="z-index: 2">
								<div id="right1" class="right">
									<table style="width: 800px; margin: 0 auto;">
										<tbody>
											<tr class="odd">
												<td class="tdName">用户名:</td>
												<td style="width: 504px;"><div class="ipt1_box">
														<span id="realnameSpan"></span> <input id="realname"
															maxlength="16" name="realname" value="" class="ipt1" />
													</div></td>
											</tr>
											<tr class="even">
												<td class="tdName">密&nbsp;&nbsp;&nbsp;码:</td>

												<td style="width: 504px;"><div class="ipt1_box">
														<span id="passwordSpan"></span> <input id="realname1"
															maxlength="16" name="realname" value="" class="ipt1" />
													</div></td>
											</tr>
											<tr class="odd">
												<td class="tdName">邮&nbsp;&nbsp;&nbsp;箱:</td>
												<td><div class="ipt1_box">
														<span id="emailSpan"></span> <input id="realname2"
															maxlength="30" name="email" value="" class="ipt1"
															onblur="M.checkEmail('email');" />
													</div></td>
											</tr>
											<tr class="even">
												<td class="tdName">电&nbsp;&nbsp;&nbsp;话:</td>
												<td><div class="ipt1_box">
														<span id="phoneSpan"></span> <input id="realname3"
															maxlength="20" name="phone" value="" class="ipt1" />
													</div></td>
											</tr>
											<tr class="odd">
												<td class="tdName">公&nbsp;&nbsp;&nbsp;司:</td>
												<td style="width: 504px;"><div class="ipt1_box">
														<span id="conpanySpan"></span> <input id="realname4"
															maxlength="30" name="realname" value="" class="ipt1" />
													</div></td>
											</tr>
										</tbody>
									</table>
									<h1>
										<span id="edit1">资料编辑</span>
									</h1>
									<div id="btnBox1" class="btnBox hide">
										<input onfocus="this.blur();" id="ok1" class="btnOK"
											type="button" value="确认">
									</div>
								</div>
							</div>
						</section>

						<section class="tab-item-2">
							<div id="tbody1"></div>
						</section>
						
						
					
					</div>
				</div>
			</div>
	</header>

	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$
									.ajax({
										type : "post",
										url : "myCenterJspJson",
										dataType : "json",
										success : function(data) {
											var table = "<table boder='1px' class='table_font'><th>证书生成时间</th><th>证书列表</th><th>口令</th><th>操作</th>";
											for (var i = 0; i <= data.myCertDownload.length - 1; i++) {
												//console.log(data.myCertDownload[i]);
												var time = data.myCertDownload[i].id;
												var year = time.substring(0, 4)
												var mouth = time
														.substring(4, 6)
												var day = time.substring(6, 8)
												var h = time.substring(8, 10)
												var min = time.substring(10, 12)
												var temp = data.myCertDownload[i].content;
												var showcer = temp.substring(3);
												//console.log("showcer"+showcer)
												var downcer = temp.substring(3,23)+ "anwei";

												table += "<tr><td>"
														+ year
														+ "年"
														+ mouth
														+ "月"
														+ day
														+ "日"
														+ h
														+ "时"
														+ min
														+ "分"
														+ "</td>&nbsp;&nbsp;<td>"
														+ showcer
														+ "</td>&nbsp;&nbsp;<td>"
														+ data.myCertDownload[i].word
														+ "</td><td>"
														+ "<a href=\'myCenterServlet?val="
														+ downcer + "\'>下载</a>"
														+ "</td></tr>"

											}
											table += "</table>"
											$("#tbody1").html(table);
											for (var i = 0; i <= data.selectUser.length - 1; i++) {
												//console.log(data.selectUser[i]);
												var name = data.selectUser[i].name;
												var password = data.selectUser[i].passwd;
												var email = data.selectUser[i].email;
												var phone = data.selectUser[i].phoneNum;
												var company = data.selectUser[i].company;
												
												
											
											$('#realnameSpan').html(name)
											$("#passwordSpan").html(password);
											$("#phoneSpan").html(phone);
												$("#emailSpan").html(email);
												$("#conpanySpan").html(company);
												
										
											$("#realname").val(name);
											$("#realname1").val(password);
												$("#realname2").val(email);
												$("#realname3").val(phone);
												$("#realname4").val(company);
											}
										}
									});
						});
	</script>

	<script type="text/javascript">
		$("#edit1")
				.click(
						function() {
							//show() 方法: 使隐藏的变为显示
							$(
									"#realname,#realname1,#realname2,#realname3,#realname4,#realname5,#realname6,#realname7,#realname8,#ok1,#btnBox1")
									.show();
							$(
									"#realname,#realname1,#realname2,#realname3,#realname4,#realname5,#realname6,#realname7,#realname8,#ok1,#btnBox1")
									.removeAttr('readonly');
							$('#realnameSpan,#passwordSpan,#phoneSpan,#emailSpan,#conpanySpan').remove()
							
						});

		$('#ok1')
				.click(
						function() {
							//$('#realname,#realname1,#realname2,#realname3,#realname4,#realname5,#realname6,#realname7,#realname8').removeClass('ipt1').addClass('block');
							$(
									'#realname,#realname1,#realname2,#realname3,#realname4,#realname5,#realname6,#realname7,#realname8')
									.attr('readonly', 'readonly');
						});
		$('#ok1').click(function() {
			$('#ok1').toggle();
		})
	</script>
</body>

</html>