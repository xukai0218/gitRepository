<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>识别</title>
<script type="text/javascript" src="${ctx}/js/jquery-3.1.1.min.js"></script>
	<style type="text/css">
	*{margin:0}
		#box{width:550px;height:400px;border:1px solid red;
			margin:100px auto 100px;
		}
	</style>
</head>
<body>
	<h2 >请拖入图片</h2>
	<div id="box">

	</div>

</body>
<script type="text/javascript">
	var box =document.getElementById("box");
	
	//文件拖拽到区域的方法
	box.ondragover=function(e){
		//阻止浏览器默认打开图片
		e.preventDefault();
		console.log("图片拖进来了");
	}
	box.ondragleave=function(e){
		//阻止浏览器默认打开图片
		e.preventDefault();
		console.log("图片拖出来了");
	}
	box.ondrop=function(e){
		//阻止浏览器默认打开图片
		e.preventDefault();
		console.log("放置了");
		//上传照片到服务器
		var formData = new FormData();
		formData.append("file",e.dataTransfer.files[0]);
		console.log(formData);
		$.ajax({
			url:"upload.do",
			type:"post",
			date:formData,
			cache:false,//异步上传文件不需要缓存
			processDate:false,//不需要对数据进行处理
			contentType:false,//不需要什么表单类型 必须false才会自动加上正确的Content-Type
			success:function(data){
				console.log(data);
			}
		})
	}
	
</script>
</html>