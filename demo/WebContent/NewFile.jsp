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

		// ��� �˻� ��ü�� �����մϴ�
		var ps = new kakao.maps.services.Places(map); 

		// ī�װ��� ������ �˻��մϴ�
		ps.categorySearch('MT1', placesSearchCB, {useMapBounds:true}); 

		// Ű���� �˻� �Ϸ� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
		function placesSearchCB (data, status, pagination) {
		    if (status === kakao.maps.services.Status.OK) {
		        for (var i=0; i<data.length; i++) {
		            displayMarker(data[i]);    
		        }
		        alert("�˻��� ������ = "+ result.places.length);
		    }
		}

		// ������ ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
		function displayMarker(place) {
		    // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
		    var marker = new kakao.maps.Marker({
		        map: map,
		        position: new kakao.maps.LatLng(place.y, place.x) 
		    });

		    // ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
		    kakao.maps.event.addListener(marker, 'click', function() {
		        // ��Ŀ�� Ŭ���ϸ� ��Ҹ��� ���������쿡 ǥ��˴ϴ�
		        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
		        infowindow.open(map, marker);
		    });
		}
</script>
</body>
</html>