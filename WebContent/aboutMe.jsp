<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>联系我们</title>

 <style type="text/css">
img{
    float:left;
    width:35%;
    margin: 0 10% 1% 10%;

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
    line-height:62px;
    margin-left:100px;
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
    color:black;
    padding:0 10px;
    display:block
}
header {
    height:62px;
    min-width:1200px;
    font-size:18px;
    position:absolute;
    font-family:Verdana, Geneva, Tahoma, sans-serif
}
.w1200, header {
    width:100%;
    margin:0 auto;
    position:fixed
}

.w1200 {
    height:100%;
    padding:0 20px
}
.clear {
    clear:both
}
.top {
    width:1210px;
    margin:20px auto;
    overflow:hidden
}
 </style>
 
</head>
<body>
<header id="header" class="header">
			<div class="w1200">
                   <ul class="header-list" style="float: right; margin-top: 10px;">
                      
                       <li><a href="login.jsp">首&nbsp;&nbsp;&nbsp;页</a></li>
                       <li><a href="help.jsp">帮助中心</a></li>
                       <li></li>
                       
                   </ul>
                </div>
 </header>
<jsp:include page="header.jsp" flush="true" ></jsp:include>
<form>
<fieldset>
  <legend style="text-align:center;font-size: 22px ">联系我们</legend>
        
        <div class="main_contact_sub">
         <img src="./images/anwei.png" alt="">
          <p class="character">地址： 北京市海淀区杏石口路65号益园文创基地B2楼3层301室</p >
          <p class="character">电话： 18548923315</p >
          <p class="character">邮箱： service@anweitech.com</p >
          <p class="character">公交线路：运通101/664/505/347</p >
          
          
        </div>
        </fieldset>
    </form>
    
</body>
 
</html>