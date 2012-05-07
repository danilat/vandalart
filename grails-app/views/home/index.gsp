<html>
<head>
	<meta name='layout' content='main'/>
</head>

<body>
	<g:each var="photo" in="${photos}">
	<span>
		<g:link action="show" id="${photo.id}"><img src="${photo.thumb}"/></g:link>
	</span>
	</g:each>
</body>
</html>
