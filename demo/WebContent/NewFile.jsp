<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8"/>
	<title>Kakao ���� �����ϱ�</title>
</head>
<body>

	<div id="map" style="width:500px;height:400px;"></div>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=49c7b3dcfd2fedf6c4440c055c444fc3"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
	<script>
		var container = document.getElementById('map');
		var options = {
			center: new kakao.maps.LatLng(33.450701, 126.570667),
			level: 10
		};

		var map = new kakao.maps.Map(container, options);
		
		var position =  new kakao.maps.LatLng(33.450701, 126.570667);
		// ��Ŀ�� �����մϴ�
		var marker = new kakao.maps.Marker({
		  position: position
		  //clickable: true // ��Ŀ�� Ŭ������ �� ������ Ŭ�� �̺�Ʈ�� �߻����� �ʵ��� �����մϴ�
		});

		
		marker.setMap(map);

		// ��Ŀ�� Ŭ������ �� ��Ŀ ���� ǥ���� ���������츦 �����մϴ�
		var iwContent = '<div style="padding:5px;">Hello World!</div>', // ���������쿡 ǥ��� �������� HTML ���ڿ��̳� document element�� �����մϴ�
		    iwRemoveable = true; // removeable �Ӽ��� ture �� �����ϸ� ���������츦 ���� �� �ִ� x��ư�� ǥ�õ˴ϴ�

		// ���������츦 �����մϴ�
		var infowindow = new kakao.maps.InfoWindow({
		    content : iwContent,
		    removable : iwRemoveable
		});

		// ��Ŀ�� Ŭ���̺�Ʈ�� ����մϴ�
		kakao.maps.event.addListener(marker, 'click', function() {
		      // ��Ŀ ���� ���������츦 ǥ���մϴ�
		      infowindow.open(map, marker);  
		});
		
	</script>
	
</body>
</html>