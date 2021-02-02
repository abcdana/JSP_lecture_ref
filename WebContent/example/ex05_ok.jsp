<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	//데이터 받기
	// - request.getParameter(String key)
	// - key : 태그의 name값
	
	//수신하기 전에 인코딩을 처리하기
	//클라이언트 -> 서버로 전송한 데이터에 대한 인코딩 //안하면 한글이 깨진다.
	request.setCharacterEncoding("UTF-8");
	
	String num = request.getParameter("num"); //<input type="text" name="num">
	
	String txt = request.getParameter("txt");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- ex05_ok.jsp -->
	<h1>데이터 받기</h1>
	
	<div>num: <%= num %></div>
	<div>txt: <%= txt %></div>
</body>
</html>