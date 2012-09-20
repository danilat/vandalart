<html>
<head>
	<meta name='layout' content='main'/>
	<title>Map | VandalArt</title>
</head>

<body>
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

<br/><br/>
			<a href="https://twitter.com/share" class="twitter-share-button" data-lang="en" data-url="${createLink(absolute:true,action:'map')}" data-text="Vandal Art Map" data-hashtags="UrbanArt">Tweet</a> <div class="fb-like" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false"></div>

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