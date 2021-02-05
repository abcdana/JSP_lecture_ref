<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 


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
	<!-- ex16_interval.jsp -->
	<div class="container">
		<h1 class="page-header">세션 만료시간 지정하기</h1>
		
		<%
			
			//만료시간을 이 메소드로 조절할 수 있으나 특별한 업무가 아닌 이상 잘 수정하지 않음.
			// -> 일반 개발자가 잘 건드리는 값은 아니다.
			session.setMaxInactiveInterval(30);
		
		%>
	
		<a href="ex16_session.jsp">시작 페이지</a>
		
	</div>
	
	<script>
	
	
	</script>
</body>
</html>