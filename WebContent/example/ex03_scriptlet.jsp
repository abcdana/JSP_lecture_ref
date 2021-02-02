<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
//CSS 영역
</style>
<script>
//JavaScript 영역
</script>
</head>
<body>
	<!-- ex03_scriptlet.jsp -->

	<%
	
		//자바 코드 영역
		int a = 10;
		int b = 20;
		int c = a + b;
	
	%>
	
	결과 : <%= c %>
	
	<hr>
	
	<%
	
		String txt = "<input type='text'>";	
	
	%>

	<%= txt %>
	
	<hr>
	
	<h1>구구단</h1>
	
	<%	
		String temp = "";
	
		for (int i=1; i<=9; i++) {
			temp += String.format("<div>5 X %d = %d</div>", i, 5*i);
		}
	%>
	
	
	<%= temp %>
	
	
	
	<h1>구구단</h1>
	
	<%
	
		for (int i=1; i<=9; i++) {
	%>
		<div>5 X <%= i %> = <%= 5 * i %></div>
	<%
	
		}
	%>			
	
	
	
</body>
</html>