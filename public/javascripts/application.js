$.ajaxSetup({
  'beforeSend': function(xhr) {xhr.setRequestHeader("Accept", "text/javascript")}
});

$(document).ready(function(){
	
	$("#menu li").click(function(){
		window.location = $(this).find('a').attr("href");
	})
	
});
