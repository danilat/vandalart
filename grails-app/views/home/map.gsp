<html>
<head>
	<meta name='layout' content='main'/>
	<title>VandalArt map</title>
	<link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.4/leaflet.css" />
	 <!--[if lte IE 8]>
	     <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.4/leaflet.ie.css" />
	 <![endif]-->
	<script src="http://cdn.leafletjs.com/leaflet-0.4/leaflet.js"></script>
</head>

<body>
	<div id="content">
		<g:link action="index" title="Back to the list">&lt;&lt; Back to the list</g:link><br/><br/>
		<div id="map" style="height:800px;width:100%;display:inline-block"></div>
			<script>
				var map = L.map('map').setView([0, 0], 2);
				L.tileLayer('http://{s}.tile.cloudmade.com/bf2a4748b587427ca820e0b52152d3ca/1/256/{z}/{x}/{y}.png', {
				    attribution: ''
				}).addTo(map);
				<g:each var="photo" in="${photos}">
					var marker = L.marker([${photo.latitude}, ${photo.longitude}]).addTo(map);
					marker.bindPopup('<g:link action="show" id="${photo.id}"><img src="${photo.thumb}"/></g:link>', {minWidth:310});
					
				</g:each>
			</script>
	</div>
</body>
</html>