<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<div id="map" style="width:500px;height:400px;"></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=	5502cfd4c14a48d3c67f67d9aadab39e"></script>
<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(37.566826, 126.9786567),
			level: 3
		};

		var map = new kakao.maps.Map(container, options);

		// 장소 검색 객체를 생성합니다
		var ps = new kakao.maps.services.Places(map); 

		// 카테고리로 은행을 검색합니다
		ps.categorySearch('MT1', placesSearchCB, {useMapBounds:true}); 

		// 키워드 검색 완료 시 호출되는 콜백함수 입니다
		function placesSearchCB (data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {
		        for (var i=0; i<data.length; i++) {
		            displayMarker(data[i]);    
		        }
		        alert("검색된 갯수는 = "+ result.places.length);
		    }
		}

		// 지도에 마커를 표시하는 함수입니다
		function displayMarker(place) {
		    // 마커를 생성하고 지도에 표시합니다
		    var marker = new kakao.maps.Marker({
		        map: map,
		        position: new kakao.maps.LatLng(place.y, place.x) 
		    });

		    // 마커에 클릭이벤트를 등록합니다
		    kakao.maps.event.addListener(marker, 'click', function() {
		        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
		        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
		        infowindow.open(map, marker);
		    });
		}
</script>
</body>
</html>