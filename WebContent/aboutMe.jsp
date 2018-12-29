<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>联系我们</title>

 <style type="text/css">
img{
      float: left;
    width: 50%;
        padding-right: 20px;

}
*{
margin:0;
padding:0;
}
body{
background:#eeeeee
}
 .character{
 
    width:100%;
}

fieldset{
    margin: 0 10% 1% 10%;
    background: #fff;
    
}
.header-list {
    list-style:none
}
.header-list li {
    float:left;
        margin: 0 50px;
    line-height:43px
}
.header-list li:hover {
    background:#979696;
}
.header-list li a:hover {
    color:#000
}
.header-list li a {
    text-decoration:none;
    color:#CCCCCC;
    padding:0 10px;
    display:block
}
header {
    height:62px;
    min-width:1200px;
    font-size:18px;
    position:absolute;
    font-family:Verdana, Geneva, Tahoma, sans-serif;
        background: rgba(2,16,46,1);
}
.w1200, header {
    width:100%;
    margin:0 auto;
    position:fixed;
     
    
}

.w1200 {
    height:100%;
    
}
.clear {
    clear:both
}
.top {
    width:1210px;
    margin:20px auto;
    overflow:hidden
}
.main_contact_sub{
    width: 949px;
    margin: 39px auto;
        background: #fff;
            height: 519px;
}
.site{
line-height: 80px;
    padding: 100px 0;
	
}
 </style>
 
</head>
<body>
<header id="header" class="header">
			<div class="w1200">
			<div style="float: left;">
			<img src="./images/with.png" alt="" style="width: 200px;margin-left: 60px;" />
			</div>
                   <ul class="header-list" style="float: right; margin-top: 10px;">
                      
                       <li><a href="login.jsp">首&nbsp;&nbsp;&nbsp;页</a></li>
                       <li><a href="help.jsp">帮助中心</a></li>
                       
                   </ul>
                </div>
        </header>

  <p style="text-align:center;font-size: 30px;padding-top:120px;font-weight:bold;">联系我们</p>
        
        <div class="main_contact_sub">
         <img src="./images/map.png" alt="" height="519px";>
         <div class="site">
          <p class="character">地址： 北京市海淀区杏石口路65号益园文创基地B2楼3层301室</p >
          <p class="character">电话： 18548923315</p >
          <p class="character">邮箱： service@anweitech.com</p >
          <p class="character">公交线路：运通101/664/505/347</p >
          </div>
          
        </div>
    
</body>
 
</html>