
<html>
<head>
	<g:if test="${!request.xhr}">
	<meta name='layout' content='main'/>
	</g:if>
	<title>By ${photo.username}</title>
</head>

<body>
	<g:if test="${!request.xhr}">
		<g:link action="index" title="Back to the list">&lt;&lt; Back to the list</g:link><br/><br/>
	

		<a href="https://twitter.com/share" class="twitter-share-button" data-lang="en" data-url="${createLink(absolute:true,action:'show',id:photo.id)}" data-text="Vandalism or Art?" data-hashtags="UrbanArt">Tweet</a> <div class="fb-like" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false"></div>
		<br/><br/>
	</g:if>		
		<img src="${photo.url}"/>
			<br/><br/>
			<h2>By ${photo.username} <img src="${photo.profile}" height="30px"/></h2>
			<br/>
			
			<div id="map" style="height:200px;width:400px;display:inline-block"></div>
			<script>
			$(document).ready(function() {
				var latitude = ${photo.latitude?:'null'};
				var longitude = ${photo.longitude?:'null'};
				if(latitude && longitude){
					markLittleMap(latitude, longitude);
				}else{
					$("#map").hide();
				}
				social();
			});
			</script>
			<br/>
			<a href="${photo.instagram}" target="_blank">Look at instagram</a>.
</body>
</html>
