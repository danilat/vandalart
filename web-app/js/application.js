function init(){
	$("#more").click(function() {
		var link = $(this)
		var href = link.attr('href')
		$.get(href, function(data) {
			var content = $("#content").html();
			$("#content").html(content + data);
			init();
		}).error(function() { alert("error"); });
		link.remove();
		return false;
	});
}
$(document).ready(function() {
    init();
});
