<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	if (session.getAttribute("count") == null) {
		session.setAttribute("count", 0); 
	}
	
	session.setAttribute("count", (int)session.getAttribute("count") + 1);

	
	
	if (application.getAttribute("count") == null) {
		application.setAttribute("count", 0); 
	}
	
	application.setAttribute("count", (int)application.getAttribute("count") + 1);
	
	//브라우저가 달라지면 다른 사람이라고 인식
	//session은 자기 숫자만 카운팅을 함. 서로간의 세션에는 영향을 미치지않는다.
	//application은 모든 유저가 같이 쓰는 객체이다.
	//application의 생명주기는 session보다 훨씬 길다.
	
	//session : 개인 공간
	//application : 공용 공간, static변수 같은 느낌으로 보면 된다.
	
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
	<!-- ex16.jsp -->
	<div class="container">
		<h1 class="page-header">session vs application</h1>
		
		<div>session count : <%= session.getAttribute("count")%></div>
		<div>application count : <%= application.getAttribute("count")%></div>
	
	</div>
	
	<script>
	
	
	</script>
</body>
</html>