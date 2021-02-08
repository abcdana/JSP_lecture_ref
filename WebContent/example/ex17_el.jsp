<%@page import="com.test.jsp.Student"%>
<%@page import="java.util.HashMap"%>
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
	body { }
</style>
</head>
<body>
	<!-- ex17_el.jsp -->
	<div class="container">
		<h1 class="page-header"></h1>
		
		<%
		
			//자바 데이터
			int a = 10;
		
			//내장 객체 데이터
			pageContext.setAttribute("b", 20);
		
		%>
		
		<h2>표현식</h2>
		<div>a : <%= a %></div>
		<div>b : <%= pageContext.getAttribute("b") %></div>
		
		<h2>EL</h2>
		<div>a : ${a}</div>
		<div>b : ${pageContext.getAttribute("b")}</div>
		<!-- EL의 대표적인 모습, b는 내장객체의 키값을 다이렉트로 표현한 것. 위아래 코드가 같다. 문자열로 표현 안해줘도 됨. -->
		<div>b : ${b}</div>
		
		
		<%
		
			int c = 30;
			pageContext.setAttribute("d", 40);
			
		%>
		<h2>EL + 연산</h2>
		
		<div>c + 10 = <%= c + 10 %></div>
		<!-- 내장객체에 값을 넣고 빼고를 많이하는데 내장객체 반환값은 object라서 int로 다운캐스팅 해줘야한다. -->
		<div>d + 10 = <%= (int)pageContext.getAttribute("d") + 10 %></div>
		<div>d + 10 = ${d} + 10</div>
		
		<!-- get attribute를 먼저하고 10을 더하고 출력을 해준다. -> 형변환을 안해도 됨 -->
		<!-- 산술연산, 비교연산 지원 -->
		<div>d + 10 = ${d + 10}</div>
		<div>d - 10 = ${d - 10}</div>
		<div>d * 10 = ${d * 10}</div>
		<div>d / 10 = ${d / 10}</div>
		<div>d % 10 = ${d % 10}</div>
		<div>d % 10 = ${d mod 10}</div>


		<div>d > 10 = ${d > 10}</div>
		<div>d &gt; 10 = ${d gt 10}</div>
		
		<div>d < 10 = ${d < 10}</div>
		<div>d &lt; 10 = ${d lt 10}</div>
		
		<div>d == 10 = ${d == 10}</div>
		<div>d != 10 = ${d != 10}</div>
		
		<div>${true && false}</div>
		<div>${true || false}</div>
		
		<div>${d > 0 ? "양수" : "음수" }</div> 권장
		<!-- 홑따옴표 지원 -->
		<div>${d > 0 ? '양수' : '음수' }</div> 비권장
		
		<div>${ "홍길동".equals("홍길동") }</div> 권장
		<div>${ "홍길동" == "홍길동" }</div> 비권장
		
		
		<%
		
			HashMap<String,String> map = new HashMap<String,String>();	
			
			map.put("name", "홍길동");
			map.put("age", "20");
			map.put("job", "학생");
			
			//EL을 사용해서 map을 접근해서 특정 값을 화면에 출력하고 싶다.
			// -> 불가능
			// -> map을 내장객체에 넣는다. -> EL사용 가능
			
			pageContext.setAttribute("map", map);
			pageContext.setAttribute("a", a);
		
		%>
		
		<h2>HashMap 출력 지원</h2>
		
		<div>이름 : <%= map.get("name") %></div>
		<div>나이 : <%= map.get("age") %></div>
		<div>직업 : <%= map.get("job") %></div>
		
		<div>이름 : ${ map.get("name") }</div> 안씀
		<div>이름 : ${ map.name }</div> 1순위
		<div>이름 : ${ map["name"] }</div> 2순위
		<div>나이 : ${ map.age }</div>
		<div>직업 : ${ map.job }</div>
		
		<!-- 만나이만들기 -->
		<div>만나이 : <%= Integer.parseInt(map.get("age")) - 1 %></div>
		<div>만나이 : ${ map.age - 1 }</div>
		
		
		
		<%
		
			//자바 객체 > 자바 빈 or DTO(VO)
			Student s = new Student();
			
			s.setName("아무개");
			s.setKor(100);
			s.setEng(90);
			s.setMath(80);
			
			request.setAttribute("s", s);
		
		%>

		
	</div>
	
	<script>
	
	
	</script>
</body>
</html>