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
		<h1 class="page-header">Kakao Map <small>지도 좌표 이동하기 + 레벨 바꾸기</small></h1>
		
		
		<div id="map"></div>
		
		<hr>
		
		<div>
		
			<div class="btn-group">
				<input type="button" value="경복궁으로 이동하기" class="btn btn-default" id="btn">
				<input type="button" value="강남역으로 이동하기" class="btn btn-default" id="btn">
				<input type="button" value="역삼역으로 이동하기" class="btn btn-default" id="btn">			
			</div>
			
		
			<div class="btn-group">
				<input type="button" value="" class="btn btn-default" id="btn">
				<input type="button" value="" class="btn btn-default" id="btn">			
			</div>
			
		
		</div>
		
	</div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=55ab69bc871b766267ae1612c1e51daf"></script>
	<script>
	
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.395017, 126.650160),
			level: 3
		};
	
		var map = new kakao.maps.Map(container, options); //객체 생성 -> 지도 출력
		
		
		//지도 좌표 (중심점) 이동하기
		$("#btn1").click(function() {
			
			var p1 = new kakao.maps.LatLng(37.578012, 126.676992);
			
			map.setCenter(p1);
			
		});
		
	</script>
</body>
</html>
















