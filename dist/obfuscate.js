(function() {
    $(document).ready(function(){
    	$.each($('[data-obfuscated]'), function(i,v) {
	        $(v).text(decodeURIComponent($(v).attr('data-obfuscated')))
		});
		$.each($('[data-obfuscated-email]'), function(i,v) {
			ema = decodeURIComponent($(v).attr('data-obfuscated-email'))
			$(v).text(ema).attr('href', 'mailto:'+ema+($(v).attr('data-obfuscated-subject').length > 0 ? '?subject='+decodeURIComponent($(v).attr('data-obfuscated-subject')).replace(' ','%20') : '') + ($(v).attr('data-obfuscated-subject').length > 0 && $(v).attr('data-obfuscated-body').length > 0 ? '&body='+decodeURIComponent($(v).attr('data-obfuscated-body')).replace(' ','%20') : $(v).attr('data-obfuscated-body').length > 0 ? '?body='+decodeURIComponent($(v).attr('data-obfuscated-body')).replace(' ','%20') : ''))
		})
    });
})();