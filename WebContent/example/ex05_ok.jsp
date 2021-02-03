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
	String txt2 = request.getParameter("txt2");

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
	<div>txt2: <%= txt2 %></div>
	
	<hr>
	
	<h2>링크 사용하기 + 데이터 전달</h2>
	<a href="ex05_ok.jsp?num=123&txt=hong&txt2=java">ex05_ok.jsp 페이지로 이동하기</a>
	
	<hr>
	
	<h2>JavaScript 사용하기</h2>
	
	<button type="button" id="btn1">클릭하세요.</button>
	
	<script>
	
		document.getElementById("btn1").onclick = function() {
			
			//***절대 공백 문자 사용 금지
			//url?key=value
			//url?key=value&key=value
			location.href = "ex05_ok.jsp?num=111&txt=버튼&txt2=클릭했습니다.";
			
		};
	
	</script>
	
</body>
</html>