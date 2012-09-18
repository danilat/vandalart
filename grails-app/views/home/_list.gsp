<div id="offset${params.offset}">
<g:each var="photo" in="${photos}">
<span>
	<g:link action="show" id="${photo.id}"><img src="${photo.thumb}"/></g:link>
</span>
</g:each>

<div class="pagination">
<g:if test="${total > params.int('offset')}">
<a id="more" href="<g:createLink controller="home" action="index" params="[offset:params.int('offset')?params.int('offset')+45:45]"/>">More</a>
</g:if>
</div>
</div>