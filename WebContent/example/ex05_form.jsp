<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- ex05_form.jsp -->
	
	<h1>데이터 전송하기</h1>
	
	<h2>POST 방식으로 전송하기</h2>
	<form method="POST" action="ex05_ok.jsp">
		숫자: <input type="text" name="num">
		<hr>
		문자: <input type="text" name="txt">
		<hr>
		<input type="submit" value="전송하기">
	</form>
	
	<h2>GET 방식으로 전송하기</h2>
	
</body>
</html>