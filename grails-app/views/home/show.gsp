<html>
<head>
	<meta name='layout' content='main'/>
	<title>By ${photo.username}</title>
</head>

<body>
	<div>
		<h2>By ${photo.username} <img src="${photo.profile}" height="30px"/></h2>
		<br/>
		<g:link action="index" title="Back to the list">&lt;&lt;</g:link><br/><br/>
		<a href="https://twitter.com/share" class="twitter-share-button" data-lang="en" data-url="${createLink(absolute:true,action:'show',id:photo.id)}" data-text="Vandalism or Art?" data-hashtags="UrbanArt">Tweet</a> <div class="fb-like" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false"></div>
		<br/><br/>
		<img src="${photo.url}"/>
		<br/><br/>
		<!--a href="#">Art</a> | <a href="#">Vandalism</a-->
		<a href="https://twitter.com/share" class="twitter-share-button" data-lang="en" data-url="${createLink(absolute:true,action:'show',id:photo.id)}" data-text="Vandalism or Art?" data-hashtags="UrbanArt">Tweet</a> <div class="fb-like" data-send="false" data-layout="button_count" data-width="100" data-show-faces="false"></div>
		<br/>
		<div id="fb-root"></div>
		<script>(function(d, s, id) {
		  var js, fjs = d.getElementsByTagName(s)[0];
		  if (d.getElementById(id)) return;
		  js = d.createElement(s); js.id = id;
		  js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1&appId=352647528120699";
		  fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));</script>
		<br/>
		<a href="${photo.instagram}" target="_blank">Go to instagram</a>.
	</div>
	
	<script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
</body>
</html>
