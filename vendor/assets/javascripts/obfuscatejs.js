(function() {
    $(document).ready(function(){
    	$.each($('[data-obfuscated]'), function(i,v) {
	        $(v).text(decodeURIComponent($(v).attr('data-obfuscated')))
		});
    });
})();