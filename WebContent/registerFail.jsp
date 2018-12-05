<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv=refresh content="10;url=register.jsp">
<title>注册失败</title>
</head>
<body>	
	 <% out.println("注册失败,请检查用户名或密码是否输入正确,3秒后将自动返回注册界面。。。。");%>   
  	<% response.setHeader("refresh","3;url=register.jsp");%>  
</body>
</html>