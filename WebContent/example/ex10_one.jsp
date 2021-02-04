<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

	//pageContext.forward("ex10_two.jsp");

	
	//자원 생성
	int num = 10;
	
	
	//페이지간의 데이터를 이동 (전송)할 때 사용하는 도구
	// - pageContext, request, seeopn, application
	// - setAttribute(), getAttribute()
	
	request.setAttribute("num", num); //생명주기가 짧다. (요청 직후에 만들어졌다가 요청 끝나면 바로 사라짐)
	
	//되는 경우 : 쓰던 자원이 다 사라지기는 하지만 유일하게 안사라지는 것이 두개가 있다. (request와 response는 안사라짐)
	//forward 메소드를 통해서 페이지가 이동 될 때,
	// - request, response는 유지된다.
	//pageContext.forward("ex10_two.jsp");
	
	//안되는 경우 : 
	//response.sendRedirect("ex10_two.jsp");
	
	//-> 뭐 담아서 건넬 일이 있으면 request에 담아서 forward로 보내라.

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
	<!-- ex10_one.jsp -->
	<div class="container">
		<h1 class="page-header">첫번째 페이지</h1>
		<a href="ex10_two.jsp">두번째 페이지로 이동하기</a>
	
	</div>
	
	<script>
	
	
	</script>
</body>
</html>