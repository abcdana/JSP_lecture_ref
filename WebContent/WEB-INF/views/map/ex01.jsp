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
	
	#map {
		width: 100%;
		height: 450px;
	}
	
</style>
</head>
<body>
	<!-- ex01.jsp -->
	<!--  
		
		지도 API
		1. Google Map API(유료 or 무료)
		2. Naver Map API(유료)
		3. Daum Map(Kakao) API(무료)
	
	-->
	<div class="container">
		<h1 class="page-header">Kakao Map <small>기본 지도</small></h1>
		
		
		<div id="map"></div>
		
		
	</div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=55ab69bc871b766267ae1612c1e51daf"></script>
	
	<script>
	
		var container = document.getElementById('map');
		
		var options = {
			center: new kakao.maps.LatLng(37.499355, 127.033217),
			level: 1
		};
	
		var map = new kakao.maps.Map(container, options); //객체 생성 -> 지도 출력
		
	</script>
</body>
</html>
















