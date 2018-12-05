<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>测试</title>
</head>
<script type="text/javascript"
	src="js/jquery-1.11.3.min.js"></script>
<script type="text/javascript">

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
        //var str=fileString.split(/[\n]/);
        document.getElementById("file").value = fileString;
    }       
        
}     
}
</script>

<body>
	<input type="file" name="file" id="fileId" />
</body>
</html>