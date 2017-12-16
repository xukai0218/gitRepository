<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html>
<head>
<title>列表页面</title>
</head>
<body>
    <h4>练习功能：</h4>
	<ul>
        <li><!-- /DemoTest01/WebContent/WEB-INF/page/FunctionList/yellow/picture.jsp -->
            <a href="FunctionList/yellow.do"><p>1</p></a>
        </li>
		<li>
			<a href="#"><p>2</p></a>
		</li>
		<li>
			<a href="#"><p>3</p></a>
		</li>
		<li>
			<a href="FunctionList/MetronicIndex.do"><p>Metronic</p></a>
		</li>
		<li>
			<a href="FunctionList/jQueryGantt.do"><p>JQueryGantt</p></a>
		</li>
	</ul>


</body>
</html>