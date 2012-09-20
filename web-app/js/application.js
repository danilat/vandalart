function init(){

	$("#more").click(function() {
		var link = $(this)
		var href = link.attr('href')
		$.get(href, function(data) {
			var content = $("#list").html();
			$("#list").html(content + data);
			init();
		}).error(function() { alert("error"); });
		link.remove();
		return false;
	});
	/*$("#list a").click(function() {
		var anchor = $(this);
		//alert(anchor.attr('href'))
		$.get(anchor.attr('href'), function(data) {
			$("#dialog").html(data);
			$( "#dialog" ).dialog({
				minWidth: 700,
				closeText: 'X',
				modal: true
			});
			social();
		}).error(function() { alert("error"); });
		return false;
	});*/

	
}

function markLittleMap(latitude, longitude){
	var map = L.map('map').setView([latitude, longitude], 5);
		L.tileLayer('http://{s}.tile.cloudmade.com/bf2a4748b587427ca820e0b52152d3ca/1/256/{z}/{x}/{y}.png', {
		    attribution: ''
		}).addTo(map);
	L.marker([latitude, longitude]).addTo(map)
}

function social(){
	!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0];if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src="//platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");
	(function(d, s, id) {
	  var js, fjs = d.getElementsByTagName(s)[0];
	  if (d.getElementById(id)) return;
	  js = d.createElement(s); js.id = id;
	  js.src = "//connect.facebook.net/es_LA/all.js#xfbml=1&appId=352647528120699";
	  fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
}

$(document).ready(function() {
	social();
    init();
});