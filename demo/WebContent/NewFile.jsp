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
var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
mapOption = { 
    center: new kakao.maps.LatLng(33.450701, 126.570667), // ������ �߽���ǥ
    level: 3 // ������ Ȯ�� ����
};

var map = new kakao.maps.Map(mapContainer, mapOption); // ������ �����մϴ�


</script>
</body>
</html>