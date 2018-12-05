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

	<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>
	
	<style type="text/css">
        table,table tr th, table tr td { border:1px solid #0094ff; }
        
    </style>

	
	
</head>
<body>
	<div class="htmleaf-container">
	
		<div class="container pb30">
			<div class="clear-backend">
			<div class="avatar">
				<div>
					
						<img src="images/admin.png" alt="">
					
				</div>
			</div>

			<!-- tab-menu -->
			<input type="radio" class="tab-1" name="tab" checked="checked">
			<span><img src="./images/icon-1.png"> 修改资料</span><i class="fa fa-home"></i>

			<input type="radio" class="tab-2" name="tab">
			<span><img src="./images/icon-5.png">证书下载</span><i class="fa fa-medium"></i>

			<!-- tab-content -->
			<div class="tab-content">
				<section class="tab-item-1">
					<div class="c_box" style="z-index:2">
						<div class="left">
							<h1>基本资料</h1>
						</div>
						<div id="right1" class="right">
							
							<h1><span id="edit1">资料编辑</span></h1>
							<table width="100%">
						
								<tbody>
							
							   
									<tr class="odd">
										<td class="tdName">用户名:</td>
										<td style="width:504px;"><div class="ipt1_box"><span id="realnameSpan"></span>
												<input id="realname" maxlength="16" name="realname" value="" class="ipt1" />
											</div></td>
			
										
									</tr>
			
									<tr class="even">
										<td class="tdName">密&nbsp;&nbsp;&nbsp;码:</td>
				
										<td style="width:504px;"><div class="ipt1_box"><span id="passwordSpan"></span>
												<input id="realname1" maxlength="16" name="realname" value="" class="ipt1" />
											</div></td>
			
					
									</tr>
									<tr class="odd">
										<td class="tdName">邮&nbsp;&nbsp;&nbsp;箱:</td>
										<td><div class="ipt1_box"><span id="emailSpan"></span>
											<input id="realname2" maxlength="30" name="email" value="" class="ipt1" onblur="M.checkEmail('email');" />
										</div></td>
		
									
									</tr>
									<tr class="even">
										<td class="tdName">电&nbsp;&nbsp;&nbsp;话:</td>
										<td><div class="ipt1_box"><span id="phoneSpan"></span>
											<input id="realname3" maxlength="20" name="phone" value="" class="ipt1" />
										</div></td>
		
									
									</tr>
									<tr class="odd">
										<td class="tdName">公&nbsp;&nbsp;&nbsp;司:</td>
										<td style="width:504px;"><div class="ipt1_box"><span id="conpanySpan"></span>
											<input id="realname4" maxlength="30" name="realname" value="" class="ipt1" />
										</div></td>
										 
									</tr>
							
									

								
								</tbody>
							</table>
							<div id="btnBox1" class="btnBox hide"><input onfocus="this.blur();" id="ok1" class="btnOK" type="button" value="确认"></div>
						</div>
					</div>
				</section>
				
				
				<section class="tab-item-2">
					
						
   						  
		    				
						  <div id="tbody1">
						  </div>
						 aaa
						<a href="myCenterServlet?val=2018112820242886.zip">下载</a> <br/>
						aaa
	
				</section>
			
			</div>
		</div>
	</div>

  <script type="text/javascript">
  $(document).ready(function(){
            $.ajax({
                type:"post",           
                url:"myCenterJspJson", 
            	dataType:"json",
                success:function(data){
                    var table="<table boder='1px'><th>证书时间编号</th><th>证书下载</th><th>口令</th><th>操作</th>";
                    for(var i=0;i<=data.myCertDownload.length-1;i++){
                   		 console.log(data.myCertDownload[i]); 
                   		 var temp = data.myCertDownload[i].content;
        				
                   		 table +="<tr><td>"+data.myCertDownload[i].id+"</td><td>"+data.myCertDownload[i].content+"</td><td>"+data.myCertDownload[i].word+"</td><td>"+"下载"+"</td></tr>"        		 
                   		 
                     }
                    table+="</table>"
                    $("#tbody1").html(table);                  
                    for(var i=0;i<=data.selectUser.length-1;i++){
                  		 //console.log(data.selectUser[i]);
                  		 var name = data.selectUser[i].name;
                  		 var password = data.selectUser[i].passwd;
                  		 var email = data.selectUser[i].email;
                  		 var phone = data.selectUser[i].phoneNum;
                  		 var company = data.selectUser[i].company;
                  		$("#realnameSpan").html(name);
                  		$("#passwordSpan").html(password);
                  		$("#emailSpan").html(email);
                  		$("#phoneSpan").html(phone);
                  		$("#conpanySpan").html(company);
                    }              
                }
            });
        });
    </script>



<script>
$("#edit1").click(function(){
		//show() 方法: 使隐藏的变为显示
	$("#realname,#realname1,#realname2,#realname3,#realname4,#realname5,#realname6,#realname7,#realname8,#ok1,#btnBox1").show();
		$("#realname,#realname1,#realname2,#realname3,#realname4,#realname5,#realname6,#realname7,#realname8,#ok1,#btnBox1").removeAttr('readonly');		
});

$('#ok1').click(function(){
	//$('#realname,#realname1,#realname2,#realname3,#realname4,#realname5,#realname6,#realname7,#realname8').removeClass('ipt1').addClass('block');
				$('#realname,#realname1,#realname2,#realname3,#realname4,#realname5,#realname6,#realname7,#realname8').attr('readonly','readonly');
			});
$('#ok1').click(function(){
	$('#ok1').toggle();
})
</script>
</body>

</html>