<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>用户公私钥</title>

<script src="js/jquery-1.11.3.min.js" type="text/javascript"></script>
<link href="css/bootstrap.css" rel="stylesheet" />

<script src="js/moment-with-locales.min.js"></script>

<link href="css/stylefrom.css" rel="stylesheet" type="text/css" />
<link href="css/jsonFormater.css" rel="stylesheet" type="text/css" />
<link href="css/bootstrap-datetimepicker.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="js/jsonFormater.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>
<script type="text/javascript" src="js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="js/bootstrap-datetimepicker.zh-CN.js"></script>
<script type="text/javascript" src="js/jquery.validate.min.js"></script>
<!--  
<script type="text/javascript">
          var isCommitted = false;//表单是否已经提交标识，默认为false
          function dosubmit(){
              if(isCommitted==false){
                 isCommitted = true;//提交表单后，将表单是否已经提交标识设置为true
                 return true;//返回true让表单正常提交
             }else{
            	 alert("表单已提交");
                return false;//返回false那么表单将不提交
                
             }
        }
</script>

-->
<script type="text/javascript">
		//初始化标签，配置日期格式插件相关参数
		$(function() {
			$(".form_datetime").datetimepicker({
				format : 'yyyy-mm-dd',
				minView : 'month',
				language : 'zh-CN',
				autoclose : true,//选中自动关闭
				startDate : '2007-01-01',
				todayBtn : true,
				endDate: new Date()
				
			//显示今日按钮
			});
		});
		
		
		
		$(function(){
			$("#myform1").validate({
			
			
				rules:{
					"num":{
						"required":true,
						"digits":true,
						"maxlength":2,
						"max":99,
						
					},
					"word":{
						"required":true,
						"digits":true,
						"maxlength":20,
						
					},
					"basicunitnum":{
						"required":true,
						"maxlength":2,
					
					},
					"produceTypeCode":{
						"required":true,
						"maxlength":4,
						"min":1000
					},
					"batchnum":{
						"required":true,
						"maxlength":3,
						"min":100
						
					},
					"c":{
						"required":true,
					},
					"Industrycode":{
						"required":true,
					},
					"platformValue":{
						"required":true,
					}
				},
				messages:{
					"num":{
						"required":"必须输入的字段",
						"digits":"必须输入整数",
						"maxlength":"最多能输入2位数字",
						"max":"最大输入数字99",
						
					},
					"word":{
						"required":"必须输入的口令",
						"maxlength":"最多能输入2位数字",	
						"digits":"必须输入整数",			
						
					},
					"basicunitnum":{
						"required":"必须输入基层单位编号",
						"maxlength":"最多能输入2位数字",				
						
					},
					"produceTypeCode":{
						"required":"必须输入产品型号",
						"maxlength":"最多能输入4位数字",				
						"min":"最小输入数字为1000"	
					},
					"batchnum":{
						"required":"必须输入批次号",
						"maxlength":"最多能输入3位数字",				
						"min":"最小输入数字为100"	
					},
					"c":{
						"required":"必须选择到区",
					},
					"Industrycode":{
						"required":"必须选择行业编码",
					},
					"platformValue":{
						"required":"必须选择平台类型",
					}
				}
			});
		});

		
		
		$(function(){
			$("#myform2").validate({
				rules:{
					"num":{
						"required":true,
						"digits":true,
						"maxlength":2,
						"max":99,
						
					},
					"pubkey":{
						"required":true,
						"maxlength":64,
						"min":64
					},
					"basicunitnum":{
						"required":true,
						"maxlength":2,
					
					},
					"produceTypeCode":{
						"required":true,
						"maxlength":4,
						"min":1000
					},
					"batchnum":{
						"required":true,
						"maxlength":3,
						"min":100
						
					}
				},
				messages:{
					"num":{
						"required":"必须输入的字段",
						"digits":"必须输入整数",
						"maxlength":"最多能输入2位数字",
						"max":"最大输入数字99",
					
					},
					"pubkey":{
						"required":"必须输入的口令",
						"maxlength":"最多能输入64位数字",				
						"min":"输入数字要求为64"
					},
					"basicunitnum":{
						"required":"必须输入基层单位编号",
						"maxlength":"最多能输入2位数字",				
						
					},
					"produceTypeCode":{
						"required":"必须输入产品型号",
						"maxlength":"最多能输入4位数字",				
						"min":"最小输入数字为1000"	
					},
					"batchnum":{
						"required":"必须输入批次号",
						"maxlength":"最多能输入3位数字",				
						"min":"最小输入数字为100"	
					}
				}
			});
		});
	</script>

<style>
		body {
	background: #eeeeee;
	background-size: cover;
	background-position: center;
}
</style>

</head>
<body>

		<header id="header" class="header" style="background: rgba(2,16,46,1);    height: 60px">
			<div class="w1200">
					<img src="./images/with.png" class="logo-header" height="82px" style="padding-left: 60px;    margin-top: -10px;">
                   <ul class="header-list" style="float: right; margin-top: 10px;">
                      <li><a href="mycenter.jsp">用户中心</a></li>
                       <li><a href="help.jsp">帮助中心</a></li>
                       <li><a href="aboutMe.jsp">联系我们</a></li>
                       
                   </ul>
                </div>
        </header>

	<div class="change-content change-box">
		<div class="change-main">

			<!-- 选项卡 -->
			<div class="change-cut flex-row">
				<ul class="clearfix">
					<li class="transition tab on">不需要上传公钥</li>
					<li class="transition tab">需要上传公钥</li>

				</ul>

				<p class="help-x"></p>
			</div>

			<!-- end选项卡 -->

			<div class="contents clearfix">
				<!-- 第一选项卡 -->
				<div class="content flex-row" style="display: block;">

					<form id="myform1" class="form-horizontal" onsubmit="return dosubmit()" action="${pageContext.request.contextPath }/NotProvideKeyServlet"
					 method="post" style="margin-top: 5px;">

						<div class="col-md-12">
							<div class="form-group">
								<fieldset>
									<legend>设备ID模块</legend>
									<div class="equipment">
										<div class="form-group">

											<div class="col-sm-6">
												<label class="col-sm-2 control-label">省市：</label>
												<select id="province1" onchange="setCity1(this.value)" name="l">
													<option selected="selected">请选择</option>
												</select> <select id="city1" onchange="setCounty1(this.value)" name="s">
													<option selected="selected">请选择</option>
												</select> <select id="county1"  name="c">
													<option selected="selected">请选择</option>
												</select>

											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-7">
												<label class="col-sm-2 control-label">行业编码：</label>
												<select name="Industrycode" class="IndustryCoding">
													<option value="-1">请选择值</option>
												</select>
											</div>
										</div>
										<div class="form-group">

											<div class="col-sm-7">
												<label class="col-sm-2 control-label">基层接入单位编号：</label>
												<input type="text" class="form-control" name="basicunitnum" placeholder="请输入基层接入单位编号">
											</div>
										</div>


										<div class="form-group">

											<div class="col-sm-7">
												<label class="col-sm-2 control-label">平台类型：</label>
												<select id="platform1" name="platform" class="platform1" onchange="PlatformType1(this.value)">
												</select> <select id="platformValue1" name="platformValue" class="platformValue1">

												</select>
											</div>
										</div>

										<div class="form-group">

											<div class="col-sm-7">
												<label class="col-sm-2 control-label">网络标识：</label>
												<select name="network" class="network">
													<option value="-1">请选择值</option>
												</select>
											</div>
										</div>
										<div class="col-sm-7">
											<label class="col-sm-2 control-label">网络类型：</label>

											<label class="radio-inline" style="margin-top: -10px;"> <input type="radio" name="networkType" value="0100">公安信息网
											</label> <label class="radio-inline" style="margin-top: -10px;"> <input type="radio" name="networkType" value="0200">视频专网
											</label>
										</div>
									</div>
							</div>
							</fieldset>

							<fieldset>
								<legend>密码模块</legend>
								<div class="equipment">
									<div class="form-group">
										<div class="col-sm-7">
											<label class="col-sm-2 control-label">产品型号编码：</label>

											<input type="text" class="form-control" name="produceTypeCode" placeholder="请输入产品型号编码">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-7">
											<label class="col-sm-2 control-label">类型编码：</label>

											<select name="producttype" class="producttype">
												<option value="-1">请选择值</option>
											</select>
										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-4">

											<div class="input-group date form_datetime" data-date-format="ddMMyyyy" data-link-field="dtp_input1">
											<label class="col-sm-2 control-label">生产日期：</label>
												<input class="form-con" size="16" type="text" name="birthday" id="birthday" value="2018-09-01" readonly>
												<span class="input-group-addon"> <span class="glyphicon glyphicon-remove"></span>
												</span> <span class="input-group-addon"> <span class="glyphicon glyphicon-th"></span>
												</span>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-7">
											<label class="col-sm-2 control-label">批次号：</label>

											<input type="text" class="form-control" placeholder="请输入批次号" name="batchnum">
										</div>
									</div>
								</div>

							</fieldset>
							<fieldset>
								<legend>用户模块</legend>
								<div class="equipment" style="padding-right: 40px;">
									<div class="form-group">
										<div class="col-sm-7">
											<label class="col-sm-2 control-label">输入个数：</label>

											<input type="text" class="form-control" id="num" name="num" placeholder="请输入生成密钥的个数">
										</div>
									</div>

									<div class="form-group">
										<div class="col-sm-7">
											<label class="col-sm-2 control-label">口令：</label>

											<input type="text" class="form-control" name="word" placeholder="请输入口令">
										</div>
									</div>
								</div>
							</fieldset>


							<div>
								<font color="red">${requestScope.city1msg}</font>
							</div>




							<div class="col-sm-offset-2 col-sm-10" style="text-align: center;">
								<input type="submit" width="100" value="提交" class="InformationSubmit" />
							</div>
					</form>
				</div>
			</div>
			<!-- end第一选项卡 -->
			<div class="content flex-row" style="display: none;">
				<div class="contents clearfix">
					<!-- 第一选项卡 -->
					<div class="content flex-row" style="display: block;">
						<form id="myform2" class="form-horizontal" onsubmit="return dosubmit()" action="${pageContext.request.contextPath }/ProvideKeyServlet"
						 method="post" style="margin-top: 5px;">


							<fieldset>
								<legend>设备ID模块</legend>
								<div class="equipment">
									<div class="form-group">
										<div class="col-sm-6">
											<label class="col-sm-2 control-label">省市：</label>

											<select id="province2" onchange="setCity2(this.value);" name="l">
												<option selected="selected">请选择</option>
											</select> <select id="city2" onchange="setCounty2(this.value);" name="s">
												<option selected="selected">请选择</option>
											</select> <select id="county2" name="c">
												<option value="" selected="selected">请选择</option>
											</select>

										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-7">
											<label class="col-sm-2 control-label">行业编码：</label>

											<select name="Industrycode" class="IndustryCoding">
												<option value="-1">请选择值</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-7">
											<label class="col-sm-2 control-label">基层接入单位编号：</label>

											<input type="text" class="form-control" name="basicunitnum" placeholder="请输入基层接入单位编号">
										</div>
									</div>
									<div class="form-group">
										<div class="col-sm-7">
											<label class="col-sm-2 control-label">平台类型：</label>

											<select id="platform2" name="platform" onchange="PlatformType2(this.value)">
												<option>请选择平台类型</option>

											</select> <select id="platformValue2" name="platformValue">
												<option>请选择值</option>
											</select>
										</div>
									</div>
									<div class="form-group">

										<div class="col-sm-7">
											<label class="col-sm-2 control-label">网络标识：</label>
											<select name="network" class="network">
												<option>请选择平台类型</option>
											</select>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">

											<div class="col-sm-7">
												<label class="col-sm-2 control-label">网络类型：</label>
												<label class="radio-inline"style="margin-top: -10px;" > <input type="radio" name="networkType2" value="0100">公安信息网
												</label> <label class="radio-inline"style="margin-top: -10px;"> <input type="radio" name="networkType2" value="0200">视频专网
												</label>
											</div>
										</div>
									</div>
								</div>
							</fieldset>

							<fieldset>
								<legend>密码模块</legend>
								<div class="equipment">
									<div class="form-group">

										<div class="col-sm-7">
											<label class="col-sm-2 control-label">产品型号编码：</label>
											<input type="text" class="form-control" name="produceTypeCode" placeholder="请输入产品型号编码">
										</div>
									</div>

									<div class="form-group">

										<div class="col-sm-7">
											<label class="col-sm-2 control-label">类型编码：</label>
											<select name="producttype" class="producttype">
												<option value="-1">请选择值</option>
											</select>
										</div>
									</div>


									<div class="form-group">

										<div class="col-sm-4">
											
											<div class="input-group date form_datetime" data-date-format="dd-MM-yyyy" data-link-field="dtp_input1">
											<label class="col-sm-2 control-label">生产日期：</label>
												<input class="form-con" size="16" type="text" name="birthday" id="birthday" value="2018-09-01" readonly>
												<span class="input-group-addon"> <span class="glyphicon glyphicon-remove"></span>
												</span> <span class="input-group-addon"> <span class="glyphicon glyphicon-th"></span>
												</span>
											</div>
										</div>
									</div>



									<div class="form-group">
										<div class="col-sm-7">
											<label class="col-sm-2 control-label">批次号：</label>
											<input type="text" class="form-control" placeholder="请输入批次号" name="batchnum">
										</div>
									</div>

								</div>
							</fieldset>

							<fieldset>
								<legend>用户模块</legend>
								<div class="equipment" style="    padding-right: 40px;">
									<div class="form-group">

										<div class="col-sm-7">
											<label class="col-sm-2 control-label">公钥：</label>
										
											<input type="file" id="fileId" onchange="check()" accept=".txt" />
											<br>
											<font color="red">${requestScope.filemsg}</font>
										</div>
									</div>


								</div>
							</fieldset>


							<font color="red">${requestScope.city2msg}</font>









							<input type="hidden" id="hello" name="fileString">



							<div class="col-sm-offset-2 col-sm-10" style="text-align: center;">
								<input type="submit" width="100" value="提交" class="InformationSubmit" />
							</div>

						</form>

					</div>
				</div>
			</div>
		</div>

	</div>
	
	


	<script type="text/javascript">
	
		jQuery(".change-main").slide({
			titCell : ".flex-row li",
			mainCell : ".contents",
			delayTime : 0
		});
		
		
	 function check() {
        var objFile = document.getElementById("fileId");
        if(objFile.value == "") {
            alert("不能空")
        }
    
        console.log(objFile.files[0].size); // 文件字节数
        
        var files = $('#fileId').prop('files');//获取到文件列表
        if(files.length == 0){
            alert('请选择文件');
        }else{
            var reader = new FileReader();//新建一个FileReader
            reader.readAsText(files[0], "UTF-8");//读取文件 
            reader.onload = function(evt){ //读取完文件之后会回来这里
                var fileString = evt.target.result; // 读取文件内容
                
                console.log(fileString);         
                document.getElementById('hello').value=fileString;  
                
            }       
                
    }     
}
	</script>


	<script>
		$.ajax({
		   	type: "POST",
		   	url: "sueccessJspJson",
		   	data: "name=John&location=Boston",
		   	dataType:"json",
		   	success: function(data){ 
		   		
		   		for(i=0;i<data.industryCodingList.length;i++){
		   			var t = data.industryCodingList[i];
		   			$(".IndustryCoding").append('<option value="'+t.rule_key+'">'+t.rule_value+'</option>');
		   		}	 
		   		
		   		
		   		for(i=0;i<data.productTypeList.length;i++){
		   			var t = data.productTypeList[i];
		   			$(".producttype").append('<option value="'+t.rule_key+'">'+t.rule_value+'</option>');
		   		}	 
		   		
		   	
		   		for(i=0;i<data.netWorkList.length;i++){
		   			var t = data.netWorkList[i];
		   			$(".network").append('<option value="'+t.rule_key+'">'+t.rule_value+'</option>');
		   		}	 

		   		for(i=0;i<data.platformList.length;i++){
		   			var t = data.platformList[i];
		   			$("#platform1").append('<option value="'+t.rule_mean+'">'+t.rule_mean+'</option>');
		   			PlatformType1(t.rule_mean);		   					   			
		   		}	
		   		
		   		console.log(data.platformList);
		   		for(i=0;i<data.platformList.length;i++){
		   			var t = data.platformList[i];
		   			$("#platform2").append('<option value="'+t.rule_mean+'">'+t.rule_mean+'</option>');
		   			PlatformType2(t.rule_mean);
		   		}	 
		   		
		   	
		   		for(i=0;i<data.provinceList.length;i++){	   			
		   			var t = data.provinceList[i];	   			
		   			$("#province1").append('<option value="'+t.code+'">'+t.name+'</option>');
		   			setCity1(t.code)	
		   		}
		   		
		   		for(i=0;i<data.provinceList.length;i++){
		   			var t = data.provinceList[i];
		   			$("#province2").append('<option value="'+t.code+'">'+t.name+'</option>');
		   			setCity2(t.code)	
		   		}	
	
		   	}	 
		
		});
		
		function PlatformType1(value){
			
			$("#platformValue1 option").remove();
			
			$.ajax({
			   	type: "GET",
			   	url: "sueccessJspJson?type=1&value="+value,
			   	data: "name=John&location=Boston",
			   	dataType:"json",
			   	success: function(data){ 
			   console.log(data.device_RulecodeList)
			   
			   		var t=data.device_RulecodeList;
			   		for(i=0;i<data.device_RulecodeList.length;i++){
			   			var t = data.device_RulecodeList[i];
			   			$("#platformValue1").append('<option value="'+t.rule_key+'">'+t.rule_value+'</option>');
			   		}	 
			   	}	 
			});
		}
		
		
		function PlatformType2(value){
			$("#platformValue2 option").remove();
			$.ajax({
			   	type: "GET",
			   	url: "sueccessJspJson?type=1&value="+value,
			   	data: "name=John&location=Boston",
			   	dataType:"json",
			   	success: function(data){ 
			   		console.log(data);
			   		var t=data.device_RulecodeList;
			   		console.log(data.device_RulecodeList);
			   		for(i=0;i<data.device_RulecodeList.length;i++){
			   			var t = data.device_RulecodeList[i];
			   			$("#platformValue2").append('<option value="'+t.rule_key+'">'+t.rule_value+'</option>');
			   		}	 
			   	}	 
			});
		}
		
		function setCity1(value){
			$("#city1 option").remove()
			
			//$("#city1 option").remove();
			//$("#county1 option").remove();
			$.ajax({
			   	type: "GET",
			   	url:"sueccessJspJson?type=2&value="+value,
			   	data:"name=John&location=Boston",
			   	dataType:"json",
			   	success: function(data){ 
			   		
			   		for(i=0;i<data.CityTwo.length;i++){
			   			
			   			var t = data.CityTwo[i];
			   			$("#city1").append('<option value="'+t.code+'">'+t.name+'</option>');
			   			setCounty1(t.code);
			   		}	 
			   	}	 
			});
		}
		
		function setCounty1(value){
			//$("select[name='c']").empty();
			$("#county1 option").remove();
			
			$.ajax({
			   	type: "GET",
			   	url: "sueccessJspJson?type=2&value="+value,
			   	data: "name=John&location=Boston",
			   	dataType:"json",
			   	success: function(data){ 
			   		for(i=0;i<data.CityTwo.length;i++){
			   			var t = data.CityTwo[i];	   			
			   			$("#county1").append('<option value="'+t.code+'">'+t.name+'</option>');
			   			
			   		}	 
			   	}	 
			});
		}
		
		function setCity2(value){
			$("#city2 option").remove();
			
			$.ajax({
			   	type: "GET",
			   	url: "sueccessJspJson?type=2&value="+value,
			   	data: "name=John&location=Boston",
			   	dataType:"json",
			   	success: function(data){ 
			   		for(i=0;i<data.CityTwo.length;i++){
			   			var t = data.CityTwo[i];
			   			$("#city2").append('<option value="'+t.code+'">'+t.name+'</option>');
			   			setCounty2(t.code);
			   		}	 
			   	}	 
			});
		}
		
		function setCounty2(value){
		
			$("#county2 option").remove();
			$.ajax({
			   	type: "GET",
			   	url: "sueccessJspJson?type=2&value="+value,
			   	data: "name=John&location=Boston",
			   	dataType:"json",
			   	success: function(data){ 
			   		for(i=0;i<data.CityTwo.length;i++){
			   			var t = data.CityTwo[i];
			   			$("#county2").append('<option value="'+t.code+'">'+t.name+'</option>');
			   		}	 
			   	}	 
			});
		}
		
		
	</script>


<div class="foot">
	
			<p class="cop" color="#FF0000">
			地址： 北京市海淀区杏石口路65号益园文创基地B2楼3层301室
			<br>
			北京安为科技有限公司 版权所有 © 2017京ICP备1702606
			</p>
		</div>


</body>

</html>