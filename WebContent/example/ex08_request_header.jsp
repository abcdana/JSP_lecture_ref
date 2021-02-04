<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- ex08_request.jsp -->
	
	<h1>HTTP 요청 메시지 헤더 정보</h1>
	
    <table border>
		<tr>
			<th>헤더명</th>
			<th>헤더값</th>
		</tr>
		<%
			//HTTP 요청 메시지 헤더 정보
			// - 브라우저가 서버에게 페이지를 요청할 때, 
			
			//localhost:8090
			System.out.println(request.getHeader("host"));	
		
			//request.getHeader("key -> headerName")
			Enumeration<String> e = request.getHeaderNames();
		
			while (e.hasMoreElements()) {
				String name = e.nextElement();
				System.out.println(name);
			
		%>
		<tr>
			<td><%= name %></td>
			<td><%= request.getHeader(name) %></td>
		</tr>
		<%
			}
		%>
		
	</table> 
	
	<hr>
	
	<p>서버 도메인명 : <%= request.getServerName() %></p>
	<p>서버 포트번호 : <%= request.getServerPort() %></p>
	<p>요청 URL : <%= request.getRequestURL() %></p>
	
	<!-- ex08_request_header.jsp?name=hong&age=20 -->
	<!-- http://192.168.0.25:8090/JSPTest/example/ex08_request_header.jsp? -->
	<p>요청 쿼리 : <%= request.getQueryString() %></p>
	<p>클라이언트 호스트 : <%= request.getRemoteHost() %></p>
	<p>클라이언트 ip : <%= request.getRemoteAddr() %></p>
	
	<p>프로토콜 : <%= request.getProtocol() %></p>
	<!-- form태그를 써서 post쓰는 것 이외의 모든 방식은 get 방식입니다. -->
	<p>요청방식 : <%= request.getMethod() %></p>
	
	<p>컨텍스트 루트 경로 : <%= request.getContextPath() %></p>
	
	<!-- 실제 일을 할 때는 무조건 아래것을 씀. 유지보수를 위해서 -->
	<p>/jsp/example/ex08.jsp</p>
	<p><%= request.getContextPath() %>/example/ex08.jsp</p>
	
</body>
</html>