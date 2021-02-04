<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	//response 객체 : 페이지 이동하기
	//1. HTML
	// - <a href="">
	//2. JavaScript
	// - location.href
	//3. Servlet/JSP
	// - 
	
	
	
	//location.href = "ex09_two.jsp";
	response.sendRedirect("ex09_two.jsp"); //들어가자 마자 두번째 페이지로 이동하기때문에 사용자는 첫번째 페이지를 볼 수 없다.

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
	<!-- ex09_one.jsp -->
	<div class="container">
		<h1 class="page-header">첫번째 페이지</h1>
		
	
	</div>
	
	<script>
		location.href = "ex09_two.jsp";
	
	</script>
</body>
</html>