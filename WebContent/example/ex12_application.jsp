<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	//session 객체가 하는 일
	// -> 데이터 입출력
	
	//내장 객체 중 사용자 데이터를 입출력하는 기능을 가진 객체들...
	pageContext.setAttribute("num1", 100);
	request.setAttribute("num2", 200);
	session.setAttribute("num3", 300);
	application.setAttribute("num4", 400);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="/example/inc/asset.jsp" %>
<style>

</style>
</head>
<body>
	<!-- ex13_session.jsp -->
	<div class="container">
		<h1 class="page-header"></h1>
		
		<div>num1 : <%= pageContext.getAttribute("num1")%></div>
		<div>num1 : <%= request.getAttribute("num2")%></div>
		<div>num1 : <%= session.getAttribute("num3")%></div>
		<div>num1 : <%= application.getAttribute("num4")%></div>
		
		
		<!-- test -->
	
	</div>
	
	<script>
	
	
	</script>
</body>
</html>















