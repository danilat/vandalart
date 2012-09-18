<html>
<head>
	<meta name='layout' content='main'/>
	<title>By ${photo.username}</title>
	
	<link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.4/leaflet.css" />
	 <!--[if lte IE 8]>
	     <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.4/leaflet.ie.css" />
	 <![endif]-->
	<script src="http://cdn.leafletjs.com/leaflet-0.4/leaflet.js"></script>
</head>

<body>
	<div>
		<g:link action="index" title="Back to the list">&lt;&lt; Back to the list</g:link><br/><br/>
		<div style="text-align:center">
		<a href="https://twitter.com/share" class="twitter-share-button" data-lang="en" data-url="${createLink(absolute:true,action:'show',id:photo.id)}" data-text="Vandalism or Art?" data-hashtags="UrbanArt">Tweet</a> <div class="fb-like" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false"></div>
		<br/><br/>
		
		<img src="${photo.url}"/>
		<!--a href="#">Art</a> | <a href="#">Vandalism</a-->
			<br/><br/>
			<h2>By ${photo.username} <img src="${photo.profile}" height="30px"/></h2>
			<br/>
			<g:if test="${photo.latitude && photo.longitude}">
			<div id="map" style="height:200px;width:400px;display:inline-block"></div>
			<script>
				var map = L.map('map').setView([${photo.latitude}, ${photo.longitude}], 5);
				L.tileLayer('http://{s}.tile.cloudmade.com/bf2a4748b587427ca820e0b52152d3ca/1/256/{z}/{x}/{y}.png', {
				    attribution: ''
				}).addTo(map);
				L.marker([${photo.latitude}, ${photo.longitude}]).addTo(map)
			</script>
			<br/>
			</g:if>
			<a href="${photo.instagram}" target="_blank">Look at instagram</a>.
		</div>
	</div>
	
	<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");
	(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1&appId=352647528120699";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
	</script>
	
</body>
</html>
